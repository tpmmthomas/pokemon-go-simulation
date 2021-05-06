﻿using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace PokemonGo
{
    public partial class Welcome : Page
    {
        public Welcome()
        {
            InitializeComponent();
        }
        private void exitbutton_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Application.Current.Shutdown();
        }
        private void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Return)
            {
                this.NavigationService.Navigate(new Navigation(yourname.Text));
            }
        }
    }
}
