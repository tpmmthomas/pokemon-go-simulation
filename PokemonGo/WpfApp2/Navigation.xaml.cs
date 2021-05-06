﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;
using System.Windows.Threading;
using WpfAnimatedGif;


namespace PokemonGo
{
    /// <summary>
    /// Interaction logic for Navigation.xaml
    /// </summary>
    public partial class Navigation : Page
    {
        private Player p1;
        private Random rand;
        private Dictionary<location, Image> PokeballLoc;
        private Dictionary<location, WildPokemon> PokemonLoc;
        private List<location> WalkableLocation;
        DispatcherTimer balltimer = new DispatcherTimer();
        DispatcherTimer regulartimer = new DispatcherTimer();
        DispatcherTimer pokemontimer = new DispatcherTimer();
        public Navigation(string name)
        {
            InitializeComponent();
            Program.status = 0;
            p1 = new Player(name);
            rand = new Random();
            PokeballLoc = new Dictionary<location, Image>();
            PokemonLoc = new Dictionary<location, WildPokemon>();
            WalkableLocation = new List<location>();
            Program.Init("pokemon.csv");
            InitMap("map1.txt");
            SpawnPokeball();
            SpawnPokemon();
            RegularTimer();
        }
        private void InitMap(string file)
        {
            using (var reader = new StreamReader(file))
            {
                var firstline = reader.ReadLine();
                while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    string[] tempWords = line.Split(',');
                    string[] leftRange = tempWords[0].Split('-');
                    if (leftRange.Count() > 1) {
                        for (int leftRangeFrom = short.Parse(leftRange[0]); leftRangeFrom <= short.Parse(leftRange[1]); leftRangeFrom++)
                            WalkableLocation.Add(new location(leftRangeFrom * 16, (short.Parse(tempWords[1]) * 16) - 5));
                    } else {
                        WalkableLocation.Add(new location(short.Parse(tempWords[0]) * 16, (short.Parse(tempWords[1]) * 16) - 5));
                    }
                }
            }
        }
        private void RegularTimer()
        {
            regulartimer.Tick += regulartimer_Tick;
            regulartimer.Interval = TimeSpan.FromSeconds(0.1);
            regulartimer.Start();
        }
        private void regulartimer_Tick(object sender, EventArgs e)
        {
            foreach (var ballLoc in PokeballLoc)
            {
                if (Math.Abs(Canvas.GetLeft(player1) - ballLoc.Key.left) < 8 && Math.Abs(Canvas.GetTop(player1) - ballLoc.Key.top) < 8)
                {
                    ballLoc.Value.Visibility = Visibility.Collapsed;
                    PokeballLoc.Remove(ballLoc.Key);
                    p1.AddPokeball();
                    break;
                }
            }
            foreach (var pkmLoc in PokemonLoc)
            {
                if (Math.Abs(Canvas.GetLeft(player1) - pkmLoc.Key.left) < 75 && Math.Abs(Canvas.GetTop(player1) - pkmLoc.Key.top) < 75) //pokemon only appear when near player
                {
                    pkmLoc.Value.pokemonImage.Visibility = Visibility.Visible;
                }
                else
                {
                    pkmLoc.Value.pokemonImage.Visibility = Visibility.Hidden;
                }
            }
            foreach (var pkmLoc in PokemonLoc)
            {
                if (Math.Abs(Canvas.GetLeft(player1) - pkmLoc.Key.left) < 30 && Math.Abs(Canvas.GetTop(player1) - pkmLoc.Key.top) < 30 && Program.status == 0)
                {
                    pkmLoc.Value.pokemonImage.Visibility = Visibility.Collapsed;
                    PokemonLoc.Remove(pkmLoc.Key);
                    Program.status = 1;
                    this.NavigationService.Navigate(new Capture(p1, pkmLoc.Value.pokemonStat));
                    break;
                }
            }
            if (Canvas.GetLeft(player1) == 160 && Canvas.GetTop(player1) == 123 && Program.status == 0)
            {
                Canvas.SetLeft(player1, 160);
                Canvas.SetTop(player1, 139);
                if (p1.GetPokemons().Count > 0) {
					Program.status = 1;
					this.NavigationService.Navigate(new Battle(p1));
                }
                else
                {
                    SetDialog("Opps, You don't have any pokemon. Try to catch some pokemon before going to GYM battle!");
                }
            }
           
            if (Canvas.GetLeft(player1) == 352 && Canvas.GetTop(player1) == 315 && Program.status == 0)
            {
                Canvas.SetLeft(player1, 352);
                Canvas.SetTop(player1, 331);
                Program.status = 1;
                this.NavigationService.Navigate(new Manage(p1));
            }
        }
        private void SpawnPokemon()
        {
            pokemontimer.Tick += pokemontimer_Tick;
            pokemontimer.Interval = TimeSpan.FromSeconds(4);
            pokemontimer.Start();
        }
        private void pokemontimer_Tick(object sender, EventArgs e)
        {
            if (Program.status == 1)
                return;
            int decideRarity = rand.Next(0, 100);
            if (decideRarity<97 && PokemonLoc.Count <= 5)
            {
                int chosen = rand.Next(0, Program.common.Count);
                int i = 0;
                PokemonType chosenPokemon = null;
                foreach(PokemonType x in Program.common)
                {
                    if (i == chosen)
                    {
                        chosenPokemon = x;
                        break;
                    }
                    i++;
                }
                Image pkm1 = new Image();
                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.UriSource = new Uri("Images/pokemon/" + chosenPokemon.Name+".gif", UriKind.Relative);
                bitmap.EndInit();
                pkm1.Source = bitmap;
                ImageBehavior.SetAnimatedSource(pkm1, bitmap);
                ImageBehavior.SetRepeatBehavior(pkm1,System.Windows.Media.Animation.RepeatBehavior.Forever);
                NavigationCanvas.Children.Add(pkm1);
                pkm1.Width = 32;

                int index = rand.Next(WalkableLocation.Count);
                int top = (int)WalkableLocation[index].top;
                int left = (int)WalkableLocation[index].left;

                while ((top >= 0 && top <= 139 && left >= 80 && left <= 240) || (top >= 235 && top <= 304 && left >= 288 && left <= 400) || exists(top, left))//exclude battle gym and home
                {
                    index = rand.Next(WalkableLocation.Count);
                    top = (int)WalkableLocation[index].top;
                    left = (int)WalkableLocation[index].left;
                }
                Canvas.SetTop(pkm1, top);
                Canvas.SetLeft(pkm1, left);
                pkm1.Visibility = Visibility.Hidden;
                PokemonLoc.Add(new location(left, top), new WildPokemon(pkm1,chosenPokemon));
            }
            else if(PokemonLoc.Count <= 5)
            {
                int chosen = rand.Next(0, Program.rare.Count);
                int i = 0;
                PokemonType chosenPokemon = null;
                foreach (PokemonType x in Program.rare)
                {
                    if (i == chosen)
                    {
                        chosenPokemon = x;
                        break;
                    }
                    i++;
                }
                Image pkm1 = new Image();
                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.UriSource = new Uri("Images/pokemon/" + chosenPokemon.Name + ".gif", UriKind.Relative);
                bitmap.EndInit();
                pkm1.Source = bitmap;
                ImageBehavior.SetAnimatedSource(pkm1, bitmap);
                ImageBehavior.SetRepeatBehavior(pkm1, System.Windows.Media.Animation.RepeatBehavior.Forever);
                NavigationCanvas.Children.Add(pkm1);
                pkm1.Width = 32;

                int index = rand.Next(WalkableLocation.Count);
                int top = (int)WalkableLocation[index].top;
                int left = (int)WalkableLocation[index].left;

                while ((top >= 0 && top <= 139 && left >= 80 && left <= 240) || (top >= 235 && top <= 304 && left >= 288 && left <= 400) || exists(top, left))//exclude battle gym and home
                {
                    index = rand.Next(WalkableLocation.Count);
                    top = (int)WalkableLocation[index].top;
                    left = (int)WalkableLocation[index].left;
                }
                Canvas.SetTop(pkm1, top);
                Canvas.SetLeft(pkm1, left);
                pkm1.Visibility = Visibility.Hidden;
                PokemonLoc.Add(new location(left, top), new WildPokemon(pkm1, chosenPokemon));
            }

        }
        private bool exists(int top, int left)
        {
            foreach(var x in PokemonLoc)
            {
                if(Math.Abs(x.Key.top - top) < 40 && Math.Abs(x.Key.left - left) < 40)
                    return true;
            }
            return false;
        }
        private void SpawnPokeball()
        {
            balltimer.Tick += balltimer_Tick;
            balltimer.Interval = TimeSpan.FromSeconds(12);
            balltimer.Start();
        }
        private void balltimer_Tick(object sender, EventArgs e)
        {
            if (Program.status == 1)
                return;
            if (PokeballLoc.Count <= 2)
            {
                Image ball1 = new Image();
                BitmapImage bitmap = new BitmapImage();
                bitmap.BeginInit();
                bitmap.UriSource = new Uri("Images/navigation/ball_16_16.png", UriKind.Relative);
                bitmap.EndInit();
                ball1.Source = bitmap;
                NavigationCanvas.Children.Add(ball1);
                ball1.Width = 16;
                int index = rand.Next(WalkableLocation.Count);
                Canvas.SetTop(ball1, WalkableLocation[index].top + 5);
                Canvas.SetLeft(ball1, WalkableLocation[index].left);
                PokeballLoc.Add(new location(WalkableLocation[index].left, WalkableLocation[index].top + 5), ball1);
            }
        }

        private void Nav_KeyDown(object sender, KeyEventArgs e)
        {
            // Map size 816x528, each component size 16x16, player size 16x21
            e.Handled = true;
            if (e.Key == Key.Down)
            {
                if (Canvas.GetTop(player1) >= (528-16))
                    return;
                if(WalkableLocation.Any(item => item.left == Canvas.GetLeft(player1) && item.top == (Canvas.GetTop(player1) + 16)))
                    Canvas.SetTop(player1, Canvas.GetTop(player1) + 16);
            }
            else if (e.Key == Key.Up)
            {
                if (Canvas.GetTop(player1) <= 0)
                    return;
                if (WalkableLocation.Any(item => item.left == Canvas.GetLeft(player1) && item.top == (Canvas.GetTop(player1) - 16)))
                    Canvas.SetTop(player1, Canvas.GetTop(player1) - 16);
            }
            else if (e.Key == Key.Left)
            {
                if (Canvas.GetLeft(player1) <= 0)
                    return;
                if (WalkableLocation.Any(item => item.left == (Canvas.GetLeft(player1) - 16) && item.top == Canvas.GetTop(player1)))
                    Canvas.SetLeft(player1, Canvas.GetLeft(player1) - 16);
            }
            else if (e.Key == Key.Right)
            {
                if (Canvas.GetLeft(player1) >= (816-16))
                    return;
                if (WalkableLocation.Any(item => item.left == (Canvas.GetLeft(player1) + 16) && item.top == Canvas.GetTop(player1)))
                    Canvas.SetLeft(player1, Canvas.GetLeft(player1) + 16);
            }
        }
        private void Window_Closed(object sender, EventArgs e)
        {
            Application.Current.Shutdown();
        }
        private class location 
        {
            public double left;
            public double top;
            public location(double x, double y)
            {
                left = x;
                top = y;
            }
        
        }
        private class WildPokemon
        {
            public Image pokemonImage;
            public PokemonType pokemonStat;
            public WildPokemon(Image x, PokemonType y)
            {
               pokemonImage = x;
               pokemonStat = y;
            }

        }
        public void SetDialog(String content)
        {
            Program.status = 1;
            DialogText.Text = content;
            Dialog.Visibility = Visibility.Visible;
        }
        private void CloseDialog(object sender, RoutedEventArgs e)
        {
            Program.status = 0;
            Dialog.Visibility = Visibility.Collapsed;
        }
    }
}
