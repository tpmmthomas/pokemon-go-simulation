   M S B A M L   `   `   `  ����  	PokemonGo    WpfApp2.App   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        �� 	Resources  5         	LabelBold �� 
TargetType �� Property �� Value  ScrollThumbs �� 
TargetType �Name ��Name �� CornerRadius �� Triggers	 P� Property
 P� Value �� 
TargetName � RowDefinitions ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle��%�	  &	        &	 �     '�� �    �� 5   
   " ��6"   .�5      ��  � ��$ Center=�62   �� 5       � ��$
 10,0q�6'   �� 5	       � ��$
 Bold"�6+   5
      �� 5   
   " n�6%   .�5      ��  � �� 5      �� 5      " n�6&   .R�5      � $
 Grid��6   .+�5      �� $��Stretch=�6(   $��Stretch=�6F   $
��Auto��6b   $
��Auto��6o   
������ 6}   �� 5      $ 
Rectangle1��6%   $ 5��69   $��Stretch=�6J   $��Stretch=�6h   $
��Auto��6�   $
��Auto��6�   #��z��6�   5       5      P� 5      	 �@�Tag$
 
Horizontal��65   . �5   "   �� $ 
Rectangle1��6)    � ��$
 Auto��6R   �� 5   "   $ 
Rectangle1��6)    � ��$ 7��6S   5      5      5      5      �� 5   
   " ��6+   .�5       ��  �@��IsFlicksEnabled .  67   �� 5!       � �� �	#AAFFFFFF6+   �� 5"       � ��
 ���� 6+   �� 5#       � ��$ 8��6&   �� 5$       � �� 5%      �� 5&      " ��6&   .R�5'      � $ GridRoot��6   $��8��61   #��z��6;    5(      �� 5)   "   $��0.00001* �60   .+�5+      ]� $ 
PART_Track��6$   $��0��68   ��. |�.   5,   "   n� 5-   &   $ Thumb��6,   #��z��6;   #���  6e    5/   "   �� 50   &   $ PageUp��63   $��ScrollBar.PageDownCommand��6C   $ 0Q�6g   |�.  6s    52   "   �� 53   &   $ PageDown��63   $��ScrollBar.PageUpCommand��6E   $ 0Q�6g   |�.  6s   55      56       57      P� 58      $ Thumb��6&   	 �@J�IsMouseOver
 . . �59   "   �� # �  6)   $ Thumb��6U    � ��6h   5:      P� 5;      $ Thumb��6&   	 �@n�
IsDragging
 . . �5<   "   �� # �  6)   $ Thumb��6M    � ��6`   5=      P� 5>      	 � {�
 .  . �5?   "   �� $ Thumb��6)    � y�$ 	Collapsed=�6R   5@      P� 5A      	 �@��Orientation$
 
Horizontal=�6=   . �5B   "   �� $ GridRoot��6)    �@�LayoutTransform 5C   &   �� 5D   *   $	 -90Q�6:   5F   #   �� 5G   "   $ 
PART_Track��6)    �@�LayoutTransform 5H   &   �� 5I   *   $	 -90Q�6:   5K   #   �� 5L   "    � ��$
 Auto��6:   �� 5M   "    � ��$ 8��6;   �� 5N   "   $ Thumb��6)    �@�Tag$ 
Horizontal��6K   �� 5O   "   $ PageDown��6)    � ��$ ScrollBar.PageLeftCommand��6R   �� 5P   "   $ PageUp��6)    � ��$  ScrollBar.PageRightCommand��6P   5Q      5S      5U      5V      5W      5X      