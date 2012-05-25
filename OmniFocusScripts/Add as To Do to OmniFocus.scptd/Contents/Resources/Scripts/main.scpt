FasdUAS 1.101.10   ��   ��    k             l     ��  ��    > 8 Script to add a selected record to OmniFocus as a to do     � 	 	 p   S c r i p t   t o   a d d   a   s e l e c t e d   r e c o r d   t o   O m n i F o c u s   a s   a   t o   d o   
  
 l     ��  ��    E ? Written by Eric B�hnisch-Volkmann, Version 1.0.2, Aug 10, 2010     �   ~   W r i t t e n   b y   E r i c   B � h n i s c h - V o l k m a n n ,   V e r s i o n   1 . 0 . 2 ,   A u g   1 0 ,   2 0 1 0      l     ��  ��    $  � 2010 DEVONtechnologies, LLC     �   <   �   2 0 1 0   D E V O N t e c h n o l o g i e s ,   L L C      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      Set properties     �      S e t   p r o p e r t i e s      l         !  j     �� "�� "0 pdaysintofuture pDaysIntoFuture " m     ������   > 8 Created to do will have a due date n days in the future    ! � # # p   C r e a t e d   t o   d o   w i l l   h a v e   a   d u e   d a t e   n   d a y s   i n   t h e   f u t u r e   $ % $ l      & ' ( & j    �� )�� 0 pprefix pPrefix ) m     * * � + +  R e m i n d e r ' ( " Prefix for the created to do item    ( � , , D   P r e f i x   f o r   t h e   c r e a t e d   t o   d o   i t e m %  - . - j    o�� /�� 0 pdelays pDelays / J    n 0 0  1 2 1 K     3 3 �� 4 5�� 0 displayname   4 m     6 6 � 7 7  N o   d u e   d a t e 5 �� 8���� 	0 value   8 m   	 
��������   2  9 : 9 K     ; ; �� < =�� 0 displayname   < m     > > � ? ?  T o m o r r o w = �� @���� 	0 value   @ ]     A B A m    ����  B 1    ��
�� 
days��   :  C D C K     E E �� F G�� 0 displayname   F m     H H � I I  I n   t w o   d a y s G �� J���� 	0 value   J ]     K L K m    ����  L 1    ��
�� 
days��   D  M N M K    $ O O �� P Q�� 0 displayname   P m     R R � S S  I n   t h r e e   d a y s Q �� T���� 	0 value   T ]    " U V U m     ����  V 1     !��
�� 
days��   N  W X W K   $ , Y Y �� Z [�� 0 displayname   Z m   % & \ \ � ] ]  I n   o n e   w e e k [ �� ^���� 	0 value   ^ ]   ' * _ ` _ m   ' (����  ` 1   ( )��
�� 
week��   X  a b a K   , 4 c c �� d e�� 0 displayname   d m   - . f f � g g  I n   t w o   w e e k s e �� h���� 	0 value   h ]   / 2 i j i m   / 0����  j 1   0 1��
�� 
week��   b  k l k K   4 < m m �� n o�� 0 displayname   n m   5 6 p p � q q  I n   o n e   m o n t h o �� r���� 	0 value   r ]   7 : s t s m   7 8����  t 1   8 9��
�� 
week��   l  u v u K   < F w w �� x y�� 0 displayname   x m   = > z z � { {  I n   t w o   m o n t h s y �� |���� 	0 value   | ]   ? D } ~ } m   ? B����  ~ 1   B C��
�� 
week��   v   �  K   F R � � �� � ��� 0 displayname   � m   G J � � � � �  I n   t h r e e   m o n t h s � �� ����� 	0 value   � ]   K P � � � m   K N���� Z � 1   N O��
�� 
days��   �  � � � K   R ^ � � �� � ��� 0 displayname   � m   S V � � � � �  I n   s i x   m o n t h s � �� ����� 	0 value   � ]   W \ � � � m   W Z���� � � 1   Z [��
�� 
days��   �  ��� � K   ^ j � � �� � ��� 0 displayname   � m   _ b � � � � �  I n   o n e   y e a r � �� ����� 	0 value   � ]   c h � � � m   c f����m � 1   f g��
�� 
days��  ��   .  � � � j   p t�� ��� 0 pdefaultdelay pDefaultDelay � m   p s � � � � �  I n   o n e   w e e k �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Import helper library    � � � � ,   I m p o r t   h e l p e r   l i b r a r y �  � � � l     ����� � O     � � � r     � � � c     � � � l    ����� � b     � � � l    ����� � I   �� � �
�� .earsffdralis        afdr � 5    	�� ���
�� 
capp � m     � � � � � @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�� kfrmID   � �� ���
�� 
rtyp � m   
 ��
�� 
TEXT��  ��  ��   � m     � � � � � b C o n t e n t s : R e s o u r c e s : T e m p l a t e   S c r i p t   A d d i t i o n s . s c p t��  ��   � m    ��
�� 
alis � o      ���� "0 pathtoadditions pathToAdditions � m      � ��                                                                                  MACS  alis    r  Macintosh HD               ����H+     j
Finder.app                                                       �ǰ�        ����  	                CoreServices    ���      ǰ�       j   &   %  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l    ����� � r     � � � I   �� ���
�� .sysoloadscpt        file � o    ���� "0 pathtoadditions pathToAdditions��   � o      ���� 0 helperlibrary helperLibrary��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  � ����� � Q   � � � � � k   "� � �  � � � l  " "�� � ���   �   Get the selection    � � � � $   G e t   t h e   s e l e c t i o n �  � � � O  " 0 � � � r   * / � � � l  * - ����� � 1   * -��
�� 
DTsl��  ��   � o      ���� 0 thisselection thisSelection � 5   " '�� ���
�� 
capp � m   $ % � � � � � @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�� kfrmID   �  � � � l  1 1��������  ��  ��   �  � � � l  1 1�� � ���   �   Error handling    � � � �    E r r o r   h a n d l i n g �  � � � Z  1 D � ����� � =  1 5 � � � o   1 2���� 0 thisselection thisSelection � J   2 4����   � R   8 @�� ���
�� .ascrerr ****      � **** � I  : ?�� ���
�� .sysolocSutxt        TEXT � m   : ; � � � � � d P l e a s e   s e l e c t   a   d o c u m e n t   o r   g r o u p ,   t h e n   t r y   a g a i n .��  ��  ��  ��   �  � � � Z  E ] � ����� � ?   E L � � � l  E J ����� � n   E J � � � 1   F J��
�� 
leng � o   E F���� 0 thisselection thisSelection��  ��   � m   J K����  � R   O Y�� ��
�� .ascrerr ****      � **** � I  Q X�~ ��}
�~ .sysolocSutxt        TEXT � m   Q T � � � � � r P l e a s e   s e l e c t   o n l y   o n e   d o c u m e n t   o r   g r o u p ,   t h e n   t r y   a g a i n .�}  �  ��  ��   �  � � � l  ^ ^�|�{�z�|  �{  �z   �  � � � l  ^ ^�y � ��y   � &   Get and format the data we need    � � � � @   G e t   a n d   f o r m a t   t h e   d a t a   w e   n e e d �    r   ^ k I  ^ g�x�w
�x .sysolocSutxt        TEXT o   ^ c�v�v 0 pprefix pPrefix�w   o      �u�u $0 plocalizedprefix pLocalizedPrefix  O   l � k   v �		 

 r   v � n   v | 4  w |�t
�t 
cobj m   z {�s�s  o   v w�r�r 0 thisselection thisSelection o      �q�q 0 thisitem thisItem  r   � � c   � � l  � ��p�o b   � � b   � � o   � ��n�n $0 plocalizedprefix pLocalizedPrefix m   � � �  :   n   � � 1   � ��m
�m 
pnam o   � ��l�l 0 thisitem thisItem�p  �o   m   � ��k
�k 
TEXT o      �j�j 0 
thesummary 
theSummary  !  r   � �"#" n   � �$%$ 1   � ��i
�i 
UUID% o   � ��h�h 0 thisitem thisItem# o      �g�g 0 theuuid theUUID! &'& r   � �()( n  � �*+* n  � �,-, I   � ��f.�e�f 0 replacetext replaceText. /0/ m   � �11 �22  <0 343 m   � �55 �66  % 3 C4 7�d7 o   � ��c�c 0 theuuid theUUID�d  �e  - o   � ��b�b 0 helperlibrary helperLibrary+  f   � �) o      �a�a 0 theuuid theUUID' 898 r   � �:;: n  � �<=< n  � �>?> I   � ��`@�_�` 0 replacetext replaceText@ ABA m   � �CC �DD  >B EFE m   � �GG �HH  % 3 EF I�^I o   � ��]�] 0 theuuid theUUID�^  �_  ? o   � ��\�\ 0 helperlibrary helperLibrary=  f   � �; o      �[�[ 0 theuuid theUUID9 J�ZJ r   � �KLK c   � �MNM l  � �O�Y�XO b   � �PQP m   � �RR �SS ( x - d e v o n t h i n k - i t e m : / /Q o   � ��W�W 0 theuuid theUUID�Y  �X  N m   � ��V
�V 
TEXTL o      �U�U 0 theurl theURL�Z   5   l s�TT�S
�T 
cappT m   n qUU �VV @ c o m . d e v o n - t e c h n o l o g i e s . t h i n k p r o 2
�S kfrmID   WXW l  � ��R�Q�P�R  �Q  �P  X YZY l  � ��O[\�O  [ 7 1 Let the user choose when to receive the reminder   \ �]] b   L e t   t h e   u s e r   c h o o s e   w h e n   t o   r e c e i v e   t h e   r e m i n d e rZ ^_^ l  � ��N`a�N  ` * $ Convert array into localized arrays   a �bb H   C o n v e r t   a r r a y   i n t o   l o c a l i z e d   a r r a y s_ cdc r   � �efe J   � ��M�M  f o      �L�L $0 plocalizeddelays pLocalizedDelaysd ghg r   � �iji J   � ��K�K  j o      �J�J ,0 plocalizeddelaynames pLocalizedDelayNamesh klk X   �=m�Inm k  8oo pqp r  $rsr b   tut o  �H�H $0 plocalizeddelays pLocalizedDelaysu J  vv w�Gw K  xx �Fyz�F 0 displayname  y I �E{�D
�E .sysolocSutxt        TEXT{ l |�C�B| n  }~} o  	�A�A 0 displayname  ~ o  	�@�@ 0 thedelay theDelay�C  �B  �D  z �?�>�? 	0 value   l ��=�<� n  ��� o  �;�; 	0 value  � o  �:�: 0 thedelay theDelay�=  �<  �>  �G  s o      �9�9 $0 plocalizeddelays pLocalizedDelaysq ��8� r  %8��� b  %4��� o  %(�7�7 ,0 plocalizeddelaynames pLocalizedDelayNames� J  (3�� ��6� I (1�5��4
�5 .sysolocSutxt        TEXT� l (-��3�2� n  (-��� o  )-�1�1 0 displayname  � o  ()�0�0 0 thedelay theDelay�3  �2  �4  �6  � o      �/�/ ,0 plocalizeddelaynames pLocalizedDelayNames�8  �I 0 thedelay theDelayn o   � ��.�. 0 pdelays pDelaysl ��� r  >���� I >}�-��
�- .gtqpchltns    @   @ ns  � o  >A�,�, ,0 plocalizeddelaynames pLocalizedDelayNames� �+��
�+ 
appr� l DK��*�)� I DK�(��'
�( .sysolocSutxt        TEXT� m  DG�� ���  S e t   r e m i n d e r�'  �*  �)  � �&��
�& 
prmp� b  Nm��� b  Ni��� b  Na��� b  N]��� b  NY��� l NU��%�$� I NU�#��"
�# .sysolocSutxt        TEXT� m  NQ�� ��� n P l e a s e   c h o o s e   w h e n   y o u   w a n t   t o   g e t   r e m i n d e d   o f   t h e   i t e m�"  �%  �$  � m  UX�� ���    "� o  Y\�!�! 0 
thesummary 
theSummary� m  ]`�� ���  "� l ah�� �� I ah���
� .sysolocSutxt        TEXT� m  ad�� ��� & % c h o i c e   p r o m p t   e n d %�  �   �  � m  il�� ���  :� ���
� 
inSL� J  pw�� ��� o  pu�� 0 pdefaultdelay pDefaultDelay�  �  � o      �� 0 	thechoice 	theChoice� ��� l ������ Z ������� = ����� o  ���� 0 	thechoice 	theChoice� m  ���
� boovfals� L  ���� m  ���
� boovfals�  �  � ' ! If the user pressed Cancel, exit   � ��� B   I f   t h e   u s e r   p r e s s e d   C a n c e l ,   e x i t� ��� l ������ r  ����� o  ���� "0 pdaysintofuture pDaysIntoFuture� o      �� 0 thedelayvalue theDelayValue�   Assume default   � ���    A s s u m e   d e f a u l t� ��� Q  ������ k  ���� ��� l ������  � @ : Find the number of days associated with the user's choice   � ��� t   F i n d   t h e   n u m b e r   o f   d a y s   a s s o c i a t e d   w i t h   t h e   u s e r ' s   c h o i c e� ��� X  ������ Z ������� = ����� l ����
�	� c  ����� l ������ n  ����� o  ���� 0 displayname  � o  ���� 0 thedelay theDelay�  �  � m  ���
� 
TEXT�
  �	  � l ������ c  ����� o  ���� 0 	thechoice 	theChoice� m  ��� 
�  
TEXT�  �  � r  ����� l �������� n  ����� o  ������ 	0 value  � o  ������ 0 thedelay theDelay��  ��  � o      ���� 0 thedelayvalue theDelayValue�  �  � 0 thedelay theDelay� o  ������ $0 plocalizeddelays pLocalizedDelays�  � R      ������
�� .ascrerr ****      � ****��  ��  �  � ��� l ����������  ��  ��  � ��� l ��������  �   Calculate due date   � ��� &   C a l c u l a t e   d u e   d a t e� ��� Z �������� @  ����� o  ������ 0 thedelayvalue theDelayValue� m  ������  � r  ����� [  ����� l �������� 4  �����
�� 
ldt � l �������� n  ����� 1  ����
�� 
dstr� l �������� I ��������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��  ��  ��  � o  ������ 0 thedelayvalue theDelayValue� o      ���� 0 
theduedate 
theDueDate��  ��  �    l ��������  ��  ��    l ����   !  Add new to do to OmniFocus    � 6   A d d   n e w   t o   d o   t o   O m n i F o c u s  Q  �	
	 O  } Z  |�� @   o  ���� 0 thedelayvalue theDelayValue m  ����   O L r  !K I !G����
�� .corecrel****      � null��   ��
�� 
kocl m  %(��
�� 
FCit ����
�� 
prdt K  +A ��
�� 
pnam o  .1���� 0 
thesummary 
theSummary ��
�� 
FCDd o  47���� 0 
theduedate 
theDueDate �� ��
�� 
FCno  o  :=���� 0 theurl theURL��  ��   o      ���� 0 newtask newTask 1  ��
�� 
FCDo��   O O|!"! r  W{#$# I Ww����%
�� .corecrel****      � null��  % ��&'
�� 
kocl& m  [^��
�� 
FCit' ��(��
�� 
prdt( K  aq)) ��*+
�� 
pnam* o  dg���� 0 
thesummary 
theSummary+ ��,��
�� 
FCno, o  jm���� 0 theurl theURL��  ��  $ o      ���� 0 newtask newTask" 1  OT��
�� 
FCDo 5  ��-��
�� 
capp- m  	.. �// . c o m . o m n i g r o u p . O m n i F o c u s
�� kfrmID  
 R      ��0��
�� .ascrerr ****      � ****0 o      ���� 
0 errmsg  ��   I ����1��
�� .sysodisAaleR        TEXT1 l ��2����2 I ����3��
�� .sysolocSutxt        TEXT3 m  ��44 �55 6 O m n i F o c u s   i s   n o t   a v a i l a b l e .��  ��  ��  ��   6��6 l ����������  ��  ��  ��   � R      ��7��
�� .ascrerr ****      � ****7 o      ���� 
0 errmsg  ��   � k  ��88 9:9 l ����������  ��  ��  : ;<; I ����=>
�� .sysodisAaleR        TEXT= l ��?����? I ����@��
�� .sysolocSutxt        TEXT@ m  ��AA �BB F E r r o r   w h e n   a d d i n g   i t e m   t o   O m n i F o c u s��  ��  ��  > ��C��
�� 
mesSC o  ������ 
0 errmsg  ��  < D��D l ����������  ��  ��  ��  ��  ��  ��       ��E�� *F �G��  E ������������ "0 pdaysintofuture pDaysIntoFuture�� 0 pprefix pPrefix�� 0 pdelays pDelays�� 0 pdefaultdelay pDefaultDelay
�� .aevtoappnull  �   � ****����F ��H�� H  IJKLMNOPQRSI �� 6T�� 0 displayname  T �������� 	0 value  ������  J �� >U�� 0 displayname  U �������� 	0 value  ��  Q���  K �� HV�� 0 displayname  V �������� 	0 value  ��  � ��  L �� RW�� 0 displayname  W �������� 	0 value  ��  ���  M �� \X�� 0 displayname  X �������� 	0 value  ��  	:���  N �� fY�� 0 displayname  Y ����~�� 	0 value  �  u �~  O �} pZ�} 0 displayname  Z �|�{�z�| 	0 value  �{  $� �z  P �y z[�y 0 displayname  [ �x�w�v�x 	0 value  �w  I� �v  Q �u �\�u 0 displayname  \ �t�s�r�t 	0 value  �s  v� �r  R �q �]�q 0 displayname  ] �p�o�n�p 	0 value  �o  �N �n  S �m �^�m 0 displayname  ^ �l�k�j�l 	0 value  �k �3��j  G �i_�h�g`a�f
�i .aevtoappnull  �   � ****_ k    �bb  �cc  �dd  ��e�e  �h  �g  ` �d�c�d 0 thedelay theDelay�c 
0 errmsg  a J ��b ��a�`�_�^ ��]�\�[�Z ��Y�X ��W�V ��UU�T�S�R�Q�P�O15�NCGR�M�L�K�J�I�H�G�F�E��D������C�B�A�@�?�>�=�<�;�:�9.�8�7�6�5�4�3�2�14�0A�/
�b 
capp
�a kfrmID  
�` 
rtyp
�_ 
TEXT
�^ .earsffdralis        afdr
�] 
alis�\ "0 pathtoadditions pathToAdditions
�[ .sysoloadscpt        file�Z 0 helperlibrary helperLibrary
�Y 
DTsl�X 0 thisselection thisSelection
�W .sysolocSutxt        TEXT
�V 
leng�U $0 plocalizedprefix pLocalizedPrefix
�T 
cobj�S 0 thisitem thisItem
�R 
pnam�Q 0 
thesummary 
theSummary
�P 
UUID�O 0 theuuid theUUID�N 0 replacetext replaceText�M 0 theurl theURL�L $0 plocalizeddelays pLocalizedDelays�K ,0 plocalizeddelaynames pLocalizedDelayNames
�J 
kocl
�I .corecnte****       ****�H 0 displayname  �G 	0 value  �F 
�E 
appr
�D 
prmp
�C 
inSL�B 
�A .gtqpchltns    @   @ ns  �@ 0 	thechoice 	theChoice�? 0 thedelayvalue theDelayValue�>  �=  
�< 
ldt 
�; .misccurdldt    ��� null
�: 
dstr�9 0 
theduedate 
theDueDate
�8 
FCDo
�7 
FCit
�6 
prdt
�5 
FCDd
�4 
FCno
�3 .corecrel****      � null�2 0 newtask newTask�1 
0 errmsg  
�0 .sysodisAaleR        TEXT
�/ 
mesS�f�� )���0��l �%�&E�UO�j 
E�Ou)���0 *�,E�UO�jv  )j�j Y hO�a ,k )ja j Y hOb  j E` O)�a �0 f�a k/E` O_ a %_ a ,%�&E` O_ a ,E` O)�,a a _ m+ E` O)�,a a  _ m+ E` Oa !_ %�&E` "UOjvE` #OjvE` $O Rb  [a %a l &kh  _ #a '�a ',j a (�a (,a )kv%E` #O_ $�a ',j kv%E` $[OY��O_ $a *a +j a ,a -j a .%_ %a /%a 0j %a 1%a 2b  kva 3 4E` 5O_ 5f  fY hOb   E` 6O = 7_ #[a %a l &kh  �a ',�&_ 5�&  �a (,E` 6Y h[OY��W X 7 8hO_ 6j *a 9*j :a ;,E/_ 6E` <Y hO {)�a =�0 m_ 6j 8*a >, ,*a %a ?a @a _ a A_ <a B_ "a 3a ) CE` DUY /*a >, &*a %a ?a @a _ a B_ "a )a ) CE` DUUW X E 8a Fj j GOPW X E 8a Hj a I�l GOP ascr  ��ޭ