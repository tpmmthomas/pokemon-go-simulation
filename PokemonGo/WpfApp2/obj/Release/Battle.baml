   M S B A M L   `   `   `  ����   	PokemonGo    PokemonGo.Battle   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  Lcontrols9http://schemas.microsoft.com/netfx/2009/xaml/presentation      N� Title$  Battle��$	��450��$	��800��.��� ���� -   	bgPic�� j� Stretch$ UniformToFill=� �� ImageSource$" Images/battle/background.png��.+�� $
��Left=�$	��280��$	��Top=�$��	30,30,0,0q�.+��� -    ��Name$ ppName�����#FFFFFF$
��Left=�$
��Wrap=�$	��???��$	��Top=�$��33��$��20(�$
��Bold"��� ���#FFFFFF$
��Left=�$��0,54,0,0q�$
��Wrap=�$��CP��$	��Top=�$��19��$��21��$��12(�$��Light"��� -   $
 ppCP�����#FFFFFF$
��Left=�$��	20,50,0,0q�$
��Wrap=�$
��8888��$	��Top=�$��23��$��99��$��16(�$��Medium"��� -    ��Name$ ppHPBackground��
���   �$��Right=�$��9��$��0,35,0,0q�$	��Top=�$	��280�� �� RadiusX$ 5�� �� RadiusY$ 5�� J� Opacity$	 0.5Q��� -   $
 ppHP��
��� ���$��Right=�$��9��$��0,35,0,0q�$	��Top=�$	��265��$ 5��$ 5���� -   $ ppHPAfterAttack��
������$��Right=�$��9��$��0,35,0,0q�$	��Top=�$	��250��$ 5��$ 5���� ���#FFFFFF$
��Left=�$��686,53,-427,0q�$
��Wrap=�$��CP��$	��Top=�$��19��$��21��$��12(�$��Light"��� -    ��Name$ ppImage��$��47,0,490,107.6q�"  WpfAnimatedGif.ImageBehavior	   AnimatedSource$	 Images/egg.gif��$
��None=�$	��233��$��Bottom=�
 J� RenderTransformOrigin$
 0.5,0.5&��� -   $ ppImageAttack��$��47,0,490,107.6q�$	 Images/battle/source.gif��$
��Fill=�$	��233��$��Bottom=�$
 0.5,0.5&�$y�	Collapsed=��� -	   $ StatusMessage�����#FFFFFF$��Right=�$��
0,82,169,0q�$
��Wrap=�$��-��$	��Top=�$��23��$	��446��$��16(�$��Medium"� �� TextAlignment$ Center=��� -
   $ opImage��$��533,0,117,191.6q�$	 Images/egg.gif��$
��None=�$��Bottom=�$	��149��$
 0.5,0.5&��� -   $ opImageAttack��$��533,0,117,191.6q�$	 Images/battle/source.gif��$
��Fill=�$	��233��$��Bottom=�$
 0.5,0.5&�$y�	Collapsed=�� $��Right=�$	��280��$	��Top=�$��	0,30,30,0q�.+��� -   $ opName�����#FFFFFF$��Right=�$
��Wrap=�$	��???��$	��Top=�$��33��$��20(�$
��Bold"�$ Right=��� -   $
 opCP�����#FFFFFF$
��Left=�$��
181,50,0,0q�$
��Wrap=�$
��8888��$	��Top=�$��23��$��99��$��16(�$��Medium"�$ Right=��� -   $ opHPBackground��
���   �$
��Left=�$��9��$��0,35,0,0q�$	��Top=�$	��280��$ 5��$ 5��$	 0.5Q��� -   $
 opHP��
��� ���$
��Left=�$��9��$��0,35,0,0q�$	��Top=�$��63��$ 5��$ 5���� -   $ opHPAfterAttack��
������$
��Left=�$��9��$��0,35,0,0q�$	��Top=�$��24��$ 5��$ 5��� -    �Name$ skillButtonGroup��$y�Visible=�.+��� -    ��Name$ ppSkill0��$��0q�$	��150��$��55��$��	30,0,0,20q�$��Bottom=�$
��Left=�$	 0.5Q���Z� .��� .+��� $��Images/button/empty.png��$	��128��$��48���� -   $ ppSkill0Name�����#FFFFFF$��SKILL 0��$��11(�$��Center=�$��Center=��� -   $ timerBlock0��$��Center=�$��23��$
��Wrap=�$��Capacity of skill 0��$	��Top=�$
 0.259,-0.084&�$��
0,48,0,-23q��� -   $ ppSkill1��$��0q�$	��150��$��55��$��
180,0,0,20q�$��Bottom=�$
��Left=�$	 0.5Q���Z� .��� .+��� $��Images/button/empty.png��$	��128��$��48���� -   $ ppSkill1Name�����#FFFFFF$��SKILL 1��$��11(�$��Center=�$��Center=��� -   $ timerBlock1��$��Center=�$��23��$
��Wrap=�$��Capacity of skill 1��$	��Top=�$��
0,48,0,-23q��� -   $ ppSkill2��$��0q�$	��150��$��55��$��330,0,0,19.6q�$��Bottom=�$
��Left=�$	 0.5Q���Z� .��� .+��� $��Images/button/empty.png��$	��128��$��48���� -   $ ppSkill2Name�����#FFFFFF$��SKILL 2��$��31��$��11(�$��Center=�$��Center=�$��
14,17,14,0q��� -   $ timerBlock2��$��Center=�$��23��$
��Wrap=�$��Capacity of skill 2��$	��Top=�$��
0,48,0,-23q��� -   $��Images/button/run.png��$��48��$��48��$��	0,0,35,25q�$��Bottom=�$��Right=�� -   $ GridChangePokemon��$��
0,0,0,-300q�$��Bottom=�$��Center=�$	��260��.+��� ���	#7F000000$
��Left=�$	��376��$ 5��$ 5��$	��Top=�$	��254��$��	0,0,0,-98q��� $
��Auto=�$
��Left=�$	��Top=�$	��258��.���� $	��Top=�$
��Left=�$	��230��.+��� ���#FFFFFF$��Center=�$��
52,22,10,0q�$
��Wrap=�$"��Choose a pokemon for battle!��$	��Top=�$��18��$��12(�$��DemiBold"��� -   $��PlayerPokemonList��$��10q����� .R�A�  A� Columns$ 3������ .R��� -   $��0q�$��Bottom=�$
��Left=���Z� .���� .+�]� $��5,0,0,5q�.+��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��CP��$��16��$��10(�$��Light"��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��14(�$��Medium"�����  �� Path$ GetCP��� ���	#FF16E7DA$��Center=�$��60��$ 5��$ 5��$��60������ $ Uniform=� �� $ GetFrontImage� �� RelativeTransform V� .~���  �� CenterY$	 0.5Q� �� CenterX$	 0.5Q� �� ScaleX$	 0.8Q� �� ScaleY$	 0.8Q��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��10(�$��Light"�$��25��$��Center=�$��0,5,0,0q����� $
 Name��� -   $ criticalText��$$��Images/battle/criticalText.png��$y�	Collapsed=�$��Center=�$��Center=�$	��100��