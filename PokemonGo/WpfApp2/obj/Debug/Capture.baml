   M S B A M L   `   `   `  ����D  @PokemonGo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PokemonGo	PokemonGo  5   	       PokemonGo.Capture   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5   	   #localclr-namespace:PokemonGo  5   	     N� Title$  Capture��5
   	    +� FocusedElement 6   ��  �� ElementName$ MyCanvas��.��5      �� -   5        $��MyCanvas��5      |�. ��5   
   �� 5       �� ImageSource$# Images/capture/background.png��6    j� Stretch$ UniformToFill=�6E   .+�5   
   �� -   5         ��Name$ 	Bulbasaur��5      "  WpfAnimatedGif.ImageBehavior   AnimatedSource$" Images/pokemon/Bulbasaur.gif��6#   $y�Hidden=�6c   $��89��6w    �� Left$	 327��6�   
 �� Top$	 181��6�   $	��112��6�   �� 5   
   -   5        $ Squirtle��5      $! Images/pokemon/Squirtle.gif��6"   $y�Hidden=�6a   $��95��6u   $	 320��6�   $	 176��6�   $	��115��6�   �� 5   
   -   5        $ 
Charmander��5      $# Images/pokemon/Charmander.gif��6$   $y�Hidden=�6e   $��86��6y   $	 332��6�   $	 183��6�   $	��104��6�   �� 5   
   -   5        $ Pikachu��5      $  Images/pokemon/Pikachu.gif��6!   $y�Hidden=�6_   $��91��6s   $	 341��6   $	 181��6�   $	��113��6�   �� 5   
   -   5        $ Snorlax��5      $  Images/pokemon/Snorlax.gif��6!   $y�Hidden=�6_   $	 329��6s   $	 169��6�   $	��101��6�   $	��112��6�   �� 5   
   -   5        $ Lapras��5      $ Images/pokemon/Lapras.gif��6    $y�Hidden=�6]   $	 324��6q   $	 162��6�   $	��111��6�   $	��127��6�   �� 5   
   -   5        $ WinAnim��5      $ Images/capture/Mfjw.gif��6!   $y�Hidden=�6\   $	 232��6p   $ 83��6�   $	��268��6�   $	��306��6�   �� 5   
   $��Images/pokeball.png��6   $
��Left=�6-   $��49��6H   $	��Top=�6T   $��38��6l   $��	678,2,0,0q�6w   	 J� RenderTransformOrigin$	 -0.009,0.394&�6�   �� 5   
   -	   5        
 ��Name$
 	ballcount��5      $��32(�6'   $
��Left=�65   $
��Wrap=�6P   $��0��6d   $	��Top=�6m   $��
727,-2,0,0q�6�   $��54��6�   A� 5   
   -
   5         A�Name$ 	objective��5      $	��180��5      $	��180��5      
���"�"�$��6��5      $	 368��6!   $	 181��63   �� 5   
   -   5        $
 instruction��5      $��28(�6)   $
��Left=�67   $
��Wrap=�6R   $	��Top=�6f   $	��720��6~   $ 36��6�   $	 409��6�   �� 6�   $@�:Press enter when the gray circle matches the green circle!��6�   �� 6�   �� 6  $:�4(The closer you are, the higher chance of capturing)��6  6D  A� 5   
   -   5        $ moving��5      $	��471��5       $	��471��5!      
�������$y�Hidden=�5#      $��5��5$      $	 174��6!   $	 -34��63   �� 5&   
   -   5        $	 one��5&      $��Images/capture/1.png��6   $y�Hidden=�6<   $
��Left=�6P   $	��130��6k   $	��Top=�6x   $��74��6�   $	 -0.009,0.394&�6�   $	 348��6�   $	 155��6�   �� 5'   
   -   5        $	 two��5'      $��Images/capture/2.png��6   $y�Hidden=�6<   $
��Left=�6P   $	��161��6k   $	��Top=�6x   $	��100��6�   $	 -0.009,0.394&�6�   $	 341��6�   $	 156��6�   �� 5(   
   -   5        $ three��5(      $��Images/capture/3.png��6   $y�Hidden=�6=   $
��Left=�6Q   $	��139��6l   $	��Top=�6y   $	��134��6�   $	 -0.009,0.394&�6�   $	 325��6�   $	 155��6�   �� 5)   
   -   5        $ 	excellent��5)      $y�Hidden=�6#   $"��Images/capture/excellent.png��67   $
��Left=�6]   $	��106��6x   $	��Top=�6�   $	��443��6�   $	 -0.009,0.394&�6�   $	 217��6�   $ 8��6�   �� 5*   
   -   5        $
 good��5*      $y�Hidden=�6   $��Images/capture/good.png��62   $
��Left=�6S   $	��139��6n   $	��Top=�6{   $	��265��6�   $	 -0.009,0.394&�6�   $	 256��6�   $ -1��6�   �� 5+   
   -   5        $
 poor��5+      $y�Hidden=�6   $��Images/capture/poor.png��62   $
��Left=�6S   $	��106��6n   $	��Top=�6{   $	��443��6�   $	 -0.009,0.394&�6�   $	 232��6�   $ 18��6�   �� 5,   
   -   5        $
 wintext��5,      $y�Hidden=�6%   $��26(�69   $
��Left=�6G   $
��Wrap=�6b   $	��Top=�6v   $	��742��6�   $ 36��6�   $	 312��6�   $q��kGotcha! The captured pokemon has been added to your home and 500 stardust has been added to your backpack. ��6�   �� 5-   
   -   5        $
 losetext��5-      $y�Hidden=�6'   $��26(�6;   $
��Left=�6I   $
��Wrap=�6d   $	��Top=�6x   $	��742��6�   $ 46��6�   $	 337��6�   $7��1Unsuccessful! Press B to go back, A to try again.��6�   �� 5.   
   -   5        $
 	notenough��5.      $y�Hidden=�6(   $��26(�6<   $
��Left=�6J   $
��Wrap=�6e   $	��Top=�6y   $	��742��6�   $ 46��6�   $	 337��6�   $8��2Not enough Pokeballs! Collect some and hunt again.��6�   �� 5/   
   -   5        $
 
escapetext��5/      $y�Hidden=�6)   $��26(�6=   $
��Left=�6K   $
��Wrap=�6f   $	��Top=�6z   $	��742��6�   $ 46��6�   $	 337��6�   $8��2Not enough Pokeballs! Collect some and hunt again.��6�   �� 50   
   -   5        $ Moveball��50      $y�Hidden=�6"   $��Images/pokeball.png��66   $
��Left=�6T   $��49��6o   $	��Top=�6{   $��38��6�   $	 -0.009,0.394&�6�   $	 354��6�   $ 6��6�   51      52      