   M S B A M L   `   `   `  ����  	PokemonGo    PokemonGo.Navigation   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  5   	     N� Title$  
Navigation��5	   	    +� FocusedElement 6   ��  �� ElementName$ NavigationCanvas��.��5
      �� -   5        $��NavigationCanvas��5
      |�. $	��528��6L   $	��816��6Y   ��5   
   �� 5       �� ImageSource$+ %Images/navigation/map1_background.png��6    j� Stretch$
 None=�6M   .+�5   
   �� -   5         ��Name$ player1��5      $-��'Images/navigation/player_test_16_16.png��6!   $
��Left=�6R    �� Left$	 256��6m   
 �� Top$	 411��6   $��21��6�   $	��Top=�6�   $��16��6�   �� 5   
   $+��%Images/navigation/map1_foreground.png��6   $
��None=�6?   �� 5   
   -   5        $	 gym��5      $#��Images/navigation/gymtext.png��6   $
��Left=�6D   $ 95��6_   $ 35��6p   $��54��6�   $	��Top=�6�   $	��150��6�   �� 5   
   -   5        $
 home��5      $$��Images/navigation/hometext.png��6   $
��Left=�6F   $	 327��6a   $	 248��6s   $��39��6�   $	��Top=�6�   $��68��6�   � 5   
   -   5         �Name$ Dialog��5      $��Bottom=�6   $��Center=�6:   $y�	Collapsed=�6W   $	��600��6n   $	 105��6z   $	 355��6�   .+�5      �� 	 �� RadiusY$	 10��6   
 �� RadiusX$
 10��6%   ��5      �� 5       �� 
StartPoint$	 0,0&�6*    �� EndPoint$ 1,1.5&�6;   .��5      �  � Color$ White��6'    � Offset$ 0Q�65   � 5      $ #e8f0e1��6'   $	 1.0Q�67   5      5      �� 5      -   5         ��Name$ 
DialogText��5      ���#45686e$
��Left=�6A   $	��Top=�6\   $��20,20,20,70q�6t   $
��Wrap=�6�   $��	Let's Go.��6�   $��14(�6�   �� 5      -   5         ��Name$ Confirm��5      $��0q�6&   $��20,55,20,20q�6P   $��Bottom=�6e   $��Right=�6�   ��6:   Z� .��5      �� .+�5      �� $��Images/button/ok.png��6   $	��120��6:   $��32��6F   5      5       5!      5"      5#      