   M S B A M L   `   `   `  ����   	PokemonGo    PokemonGo.Manage   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     U QWpfAnimatedGif, Version=2.0.0.0, Culture=neutral, PublicKeyToken=9e7cd3b544a090dc,gif"http://wpfanimatedgif.codeplex.com  Lcontrols9http://schemas.microsoft.com/netfx/2009/xaml/presentation      N� Title$  Manage Pokemon/Collection��$	��450��$	��800��.��� ����  j� Stretch$ UniformToFill=� �� ImageSource$" Images/manage/background.png��.+��� $
��Auto=�$
��Left=�$	��Top=�$	��250��$	��390��$��15,0,0,0q�.���� $	��Top=�$
��Left=�$	��230��.+��� ���#FFFFFF$
��Wrap=�$��Center=�$��16(�$��0,20,0,0q�$��POKÉMON���� -    ��Name$ PlayerPokemonAmount�����#FFFFFF$
��Wrap=�$��Center=�$��12(�$��0,0,0,5q�$
��9999���� -   $��PlayerPokemonList��$��10q����� .R�A�  A� Columns$ 3������ .R��� -   $��0q�$��Bottom=�$
��Left=���Z� .���� .+�]� $��5,0,0,5q�.+��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��CP��$��16��$��10(�$��Light"��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��14(�$��Medium"�����  �� Path$ GetCP��� ���	#FF16E7DA$��Center=�$��60�� �� RadiusY$ 5�� �� RadiusX$ 5��$��60������ $ Uniform=� �� $ GetFrontImage� �� RelativeTransform V� .~��� 	 �� CenterY$		 0.5Q�
 �� CenterX$	
 0.5Q� �� ScaleX$	 0.8Q� �� ScaleY$	 0.8Q��� ���#FFFFFF$��Bottom=�$
��Wrap=�$��10(�$��Light"�$��25��$��Center=�$��0,5,0,0q����� $
 Name�� -    �Name$ GridChangePokemon��$��	0,0,30,30q�$	��500��$��Bottom=�$��Right=�.+�]� $��Center=�$	��Top=�$��
0,-135,0,0q�.+��� ���#FFFFFF$��CP��$��16(�$��Bottom=�$��0,0,5,2q��� -   $ SelectedPokemonCP�����#FFFFFF$
��8888��$��22(�$��Bottom=��� $��Center=�$	��220��$	��115��$	��Top=�$��
0,-100,0,0q�.+��� $��Images/manage/arch.png��$	��210�� �� Left$ 8��A� $��10��$��10��
������� J� RenderTransformOrigin$ 11.191,0.211&�
 �� Top$	 215��$ 1��z�V� .~��� -   SelectedPokemonCPPrecentage�� �� Angle$ 0Q�T�  T� Y$
 -110Q��� ���#FFFFFF$
��Left=�$	��222��$ 5��$ 5��$	��Top=�$	��500��$��0,22,0,0q��� -   $ SelectedPokemonName�����#45686e$��Center=�$��0,55,0,0q�$
��Wrap=�$��### N/A ###��$	��Top=�$��27��$��16(�� $��Center=�$��0,80,0,0q�$��14��$	��Top=�.+��� -    ��Name$ SelectedPokemonHPFull��
���   �$��Center=�$��9��$	��168��$ 5��$ 5�� J� Opacity$	 0.5Q�$��1���� -	   $ SelectedPokemonHPCurrent��
������$
��Left=�$��9��$��87��$ 5��$ 5��$��1���� -
   $ 	pokemonHP�����#45686e$��
HP 101/176��$��
0,17,0,-18q��� -    ��Name$ ButtonEvolve��$��0q�$��	24,88,0,0q�$	��Top=�$
��Left=�$	 0.5Q���Z� .���� .+��� $��Images/manage/evolve.png��$	��120��$��32���� -   $ ButtonPowerup��$��0q�$��	24,32,0,0q�$	��Top=�$
��Left=�$	 0.5Q���Z� .���� .+��� -    ��Name$ ButtonPowerup1��$��Images/manage/powerup.png��$	��120��$��32���� -   $ ButtonRename��$��0q�$��	0,32,24,0q�$	��Top=�$��Right=�$	 0.5Q���Z� .���� .+��� $��Images/manage/rename.png��$	��120��$��32���� -   $ 
ButtonSell��$��0q�$��	0,88,24,0q�$	��Top=�$��Right=�$	 0.5Q���Z� .���� .+��� $��Images/manage/sell.png��$	��120��$��32��� $��Center=�$	��150��$	��150��$��
0,-110,0,0q�$	��Top=�.+��� -   $ SelectedPokemonImage��"  WpfAnimatedGif.ImageBehavior   AnimatedSource$ Images/egg.gif��$��Center=�$��Bottom=�$
��None=�$	��140��$	��140���� $ ��Images/manage/Stardust.png��$
��Left=�$��26��$	��Top=�$��21��$��	48,66,0,0q��� -   $ evolvesd��$��Stardust.png��$
��Left=�$��26��$	��Top=�$��22��$��
48,123,0,0q�$ -0.143,1.25&��� -   $ sellicon��$��Stardust.png��$
��Left=�$��26��$	��Top=�$��22��$��385,123,0,0q�$ -0.143,1.25&��� -   $ sellicon_Copy��$��Stardust.png��$
��Left=�$��26��$	��Top=�$��22��$��481,-166,-3,0q�$ -0.143,1.25&��� -   $ 
weightText�����#45686e$��Center=�$��297,368,389,0q�$
��Wrap=�$��WEIGHT��$	��Top=�$��29��$��16(�$	��114���� -   $ 
heightText�����#45686e$��Center=�$��297,344,389,0q�$
��Wrap=�$��HEIGHT��$	��Top=�$��26��$��16(�$	��114���� -   $ atkmv2�����#45686e$��Center=�$��545,352,116,0q�$
��Wrap=�$	��Top=�$��31��$��16(�$	��139��$��Ember���� -   $ atkdmg2�����#45686e$��Center=�$��701,352,57,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��42��$��10���� -   $ atkmv1�����#45686e$��Center=�$��545,329,116,0q�$
��Wrap=�$	��Top=�$��30��$��16(�$	��139��$��Flamethrower���� -   $ atkdmg1�����#45686e$��Center=�$��701,329,57,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��42��$��50���� -   $ pokemonWeight�����#45686e$��Center=�$��416,368,290,0q�$
��Wrap=�$	��Top=�$��35��$��16(�$��94��$
��8888���� -   $ stardust��
�������$��Center=�$��
635,9,80,0q�$
��Wrap=�$��STARDUST��$	��Top=�$��18��$��16(�$��85���� -   $ stardustAmount��
�������$��Right=�$��0,9,45,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$
��8888���� -   $ atkmv3�����#45686e$��Center=�$��545,375,116,0q�$
��Wrap=�$	��Top=�$��30��$��16(�$	��139��$��Flamethrower���� -   $ atkdmg3�����#45686e$��Center=�$��701,375,57,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��42��$��50���� -   $ 
exitButton��$��Images/button/tick.png��$ -2.833,0.333&�$��116,396,654,23.6q��� -    $ pokemonHeight�����#45686e$��Center=�$��417,344,289,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��94��$
��8888���� -!   $ powerUpCost�����#45686e$��Center=�$��340,241,417,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��43��$
��8888���� -"   $ 
evolveCost�����#45686e$��Center=�$��340,298,368,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��94��$
��8888���� -#   $ 	SellValue�����#45686e$��Center=�$��677,296,29,0q�$
��Wrap=�$	��Top=�$��18��$��16(�$��94��$
��8888���� -$   $ welcomeText��
�������$��Center=�$��279,8,307,0q�$
��Wrap=�$��WELCOME,��$	��Top=�$��30��$��16(�$	��214��� -%   $ RenamePrompt��$��Center=�$��Center=�$y�	Collapsed=�$	��353��.+��� $ 10��$ 10������  �� 
StartPoint$	 0,0&� �� EndPoint$ 1,1.5&�.���  � Color$ White�� � Offset$ 0Q�� $ #e8f0e1��$	 1.0Q��� -&   $ heightText_Copy�����#45686e$��Center=�$	��Top=�$��
56,20,58,0q�$
��Wrap=�$��Set Nickname��$��14(��� -'    ��Name$ 	renamebox��$
��Left=�$��20(� �� TextWrapping$
 Wrap=�$��TextBox��$	��Top=�$	��173��$��
20,60,0,28q�.�� � 	Resources  �� 
TargetType  �� Property! �� Value��%9   '��       �� " ��.���   �@��CornerRadius$! 5��.���� -(   $ Confirm��$��0q�$��	0,55,20,0q�$	��Top=�$��Right=���Z� .���� .+��� $��Images/button/ok.png��$	��120��$��32��