   M S B A M L   `   `   `  ���� D  @PokemonGo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PokemonGo	PokemonGo      PokemonGo.Capture   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  #localclr-namespace:PokemonGo    N� Title$  Capture��$	��450��$	��800�� +� FocusedElement ��  �� ElementName$ MyCanvas��.���� -   $��MyCanvas��|�. ����  �� ImageSource$# Images/capture/background.png�� j� Stretch$ UniformToFill=�.+��� -    ��Name$ 	Bulbasaur��"  WpfAnimatedGif.ImageBehavior   AnimatedSource$" Images/pokemon/Bulbasaur.gif��$y�Hidden=�$��89�� �� Left$	 327��
 �� Top$	 181��$	��112���� -   $ Squirtle��$! Images/pokemon/Squirtle.gif��$y�Hidden=�$��95��$	 320��$	 176��$	��115���� -   $ 
Charmander��$# Images/pokemon/Charmander.gif��$y�Hidden=�$��86��$	 332��$	 183��$	��104���� -   $ Pikachu��$  Images/pokemon/Pikachu.gif��$y�Hidden=�$��91��$	 341��$	 181��$	��113���� -   $ Snorlax��$  Images/pokemon/Snorlax.gif��$y�Hidden=�$	 329��$	 169��$	��101��$	��112���� -   $ Lapras��$ Images/pokemon/Lapras.gif��$y�Hidden=�$	 324��$	 162��$	��111��$	��127���� -   $ WinAnim��$ Images/capture/Mfjw.gif��$y�Hidden=�$	 232��$ 83��$	��268��$	��306���� $��Images/pokeball.png��$
��Left=�$��49��$	��Top=�$��38��$��	678,2,0,0q�	 J� RenderTransformOrigin$	 -0.009,0.394&��� -	   
 ��Name$
 	ballcount��$��32(�$
��Left=�$
��Wrap=�$��0��$	��Top=�$��
727,-2,0,0q�$��54��A� -
    A�Name$ 	objective��$	��180��$	��180��
���"�"�$��6��$	 368��$	 181���� -   $
 instruction��$��28(�$
��Left=�$
��Wrap=�$	��Top=�$	��720��$ 39��$	 316���� $@�:Press enter when the gray circle matches the green circle!���� �� $:�4(The closer you are, the higher chance of capturing)��A� -   $ moving��$	��471��$	��471��
�������$y�Hidden=�$��5��$	 174��$	 -34���� -   $	 one��$��Images/capture/1.png��$y�Hidden=�$
��Left=�$	��130��$	��Top=�$��74��$	 -0.009,0.394&�$	 348��$	 155���� -   $	 two��$��Images/capture/2.png��$y�Hidden=�$
��Left=�$	��161��$	��Top=�$	��100��$	 -0.009,0.394&�$	 341��$	 156���� -   $ three��$��Images/capture/3.png��$y�Hidden=�$
��Left=�$	��139��$	��Top=�$	��134��$	 -0.009,0.394&�$	 325��$	 155���� -   $ 	excellent��$y�Hidden=�$"��Images/capture/excellent.png��$
��Left=�$	��106��$	��Top=�$	��443��$	 -0.009,0.394&�$	 217��$ 8���� -   $
 good��$y�Hidden=�$��Images/capture/good.png��$
��Left=�$	��139��$	��Top=�$	��265��$	 -0.009,0.394&�$	 256��$ -1���� -   $
 poor��$y�Hidden=�$��Images/capture/poor.png��$
��Left=�$	��106��$	��Top=�$	��443��$	 -0.009,0.394&�$	 232��$ 18���� -   $
 wintext��$y�Hidden=�$��26(�$
��Left=�$
��Wrap=�$	��Top=�$	��742��$ 36��$	 312��$q��kGotcha! The captured pokemon has been added to your home and 500 stardust has been added to your backpack. ���� -   $
 losetext��$y�Hidden=�$��26(�$
��Left=�$
��Wrap=�$	��Top=�$	��742��$ 46��$	 337��$7��1Unsuccessful! Press B to go back, A to try again.���� -   $
 	notenough��$y�Hidden=�$��26(�$
��Left=�$
��Wrap=�$	��Top=�$	��742��$ 46��$	 337��$8��2Not enough Pokeballs! Collect some and hunt again.���� -   $
 
escapetext��$y�Hidden=�$��26(�$
��Left=�$
��Wrap=�$	��Top=�$	��742��$ 46��$	 337��$8��2Not enough Pokeballs! Collect some and hunt again.���� -   $ Moveball��$y�Hidden=�$��Images/pokeball.png��$
��Left=�$��49��$	��Top=�$��38��$	 -0.009,0.394&�$	 354��$ 6��