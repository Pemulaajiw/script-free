#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYTmO� ������	�����������B�����0 @ `+�w;}3��o<k��]�k�)ɯ���h��z��s�����h���In�OJ}�ޥ����j2z����T.������r�!	����\;����E��ꏈ��d4WN��(�&&�4�!2&2M��)�	���F�Ѧ�A�OP @(�a @)=�SSȟ�C#@���@�ɠh   i�BjeOB���M4�@�4  � Ѡ  �    I�B�#BmM����4􇩣!��L�S@h4     J D��P�0�jOF��4i������24� h�   i�� ���O���S�S�OSL�Py@=&�hѡ��  ly&��7Z�"Fȣ�G2УH@d!B{C�������}o�]O*�~�&���}-=ojC�����(������#kYk��[
�����M;p��mu��(G�jh���)R�e�:g��׆QV���gG%q�=q�Wu����2�b_�:w5G
Ď����U�q��>��˄nt��r������L�j��GZ��8�N�^����XV���jƚ���i�Q�)zh�3/�4L�qS��EN�>�R��Ҕ���rҌ︺E:L������D����q�O>7^8��c�tn��Y��@ ����o�2�F��I�����w#R� ���i^{��*��*��5J��K�l�>j�>�K$��[�t�F��y��2Vȍ[���.[-Ӣ����
z���l�-�����X�h���T�"^I�9�.����uo��5���u-�m@�42���S��x�����TF+�#����%	6�[����N���-��Sm�g�vB��B�����[����Ȏ��=\���m/�la�]a/\�\���[w��[+�{�����ӝ�����r
Ҕ��3l�	�W,�}du�vȬ�A$ ���(q}c�IH��'/7n�f�����m��@�>�P=���֯5��B��Uÿ~<��Q=���A��_�@|^ߦG����������v��ВLf�e����G����J[��b�~���O�kA��l��Ps>�^֛�B� � ч�!Syf��	2�pq���"$�~�ԯ��~���T6�>��gݔZh.����(o�i�Οi>�O��Y�=6�9z�R�,kr�b���w���\ n" *blC�I.���v�?W�Lf�֤���9_7�A��zF�L|���{|z�}������U�����5�UUܑ�xa���i��_�@b[)��(�"��0���W��g�Ï��I�}��H9���ci�	�:�m��0B8	K�%���)�:婗?s�>�J"����"��é+���DN7�8���2�m ���R��� ٖ�CWʫ���R�4���*��ц�q7&���3�C�{��k�6��fɐ(�9����W39���4���8x- �����9�ݚH�F]G�/��aö��E���(�)��
�T=�&y�`�Mn�E@��S���%�5���%�>Yu�x;���l�,^��ir�R�q/٫���8;�펫;4�8��&�r�̲�j�d��*!~�W��KFY���1�_8
�ۿ���JWOk'�����r����Ф��Ֆ��*PY>ѱZ��(���d�K�p�j}�>�[��`�Ƹ��1U����s�]/�Zr$\�M�D�?T�����i�h���om�V��C��˥�$�H�ѧ*��@�Ҭk�쯪r)	�O��1���Y�SZJ)7|�O���K����z������ւQ�5J��/*S�rd�uM]^6J�k�O�4귩�N�\;���5`,f*�Ee�f��Lk2�vM��a\\_��ܼ�%2��F�]�DI��n�~cޱ��6���	K�ƈ�`4@�2������NW)���e��WO��g���Ëk̈bl��q� �N���r���#�	:4�J�`�!�� �%��c���l��(ي���jz��3�]c4��s���遉a[��@��ּ��b�>Jc�5Bq_X�zܛo�/�/��Ut�3ps@��pLvJ�1Hbӂ &v��6���]�n���.s� ,��	3J �7�Z�W�v�Ђw�ü@�n[2��jAyu[�DDT�k���v���aM�k��T�ݑ����,�Y�z�G�����K6a鏠&J�Z�BA��ڒ
�+Pvk�O��r��~�g�x�ty�s����k-�H<ѣi�7{̳�eF-��5f�n����hI�wq{���,lU����,��׶�+�`��3C���ιf����ö"�M~�}��>�u���W:]�q��
="���Z�"��ϙY���HD�3�:�Q���xV��=��y�k�#�t/�0sZ�q�]�t�~�Oz{��2�;>f�¯b����>r.>��TQ0O9��Xy�%��F�^Z�?�����F0�6�[7���ꐃ��L��(�@�Y���kT<�]�<�ǰ;�)
w��R�U2�j!���MscE������KėJ�|�л, �.�	@���#Q�n*����l���1D�υbi� ��l��p��T��z�*vT���p�
4I��\���"뱆�C D��[�E�±7X 1pI�r5Q��ǵֻF�Pg/��������zy�b�w��Ԉ%����\�J�+�9_��=ԋ��Z�'5�ȄK���WR;$��2z]�s(u=�(� �P�����I<ߏ�d|���"�ۘ�eV�aDC�%��`�gT���ᆎ�6���>?���\Mt����=�%9V�m^�������)q�~�z%arH�`z��B�LDOY���J�l`/�خ��ܹ]�*)
 m� �I�8�v�L䙛u�m'la�$�0<�A����z��E�q9<oK���\e�֎�H�5���64쩸{⡘7[	@Ġ���"c�A���ʜ�.�Nꤩ�T�bb"�7*�<IH���P�*���ES��[3]�5R�툑F����U+��B����;�G��J�-��*R���0ߦ!��D���_j�L鯺�� ,�X8M�N�o!f�`��DLT�l�fI2�C��#�B��y�h�����	UeA�`X�w��+_��BDEM��U"Y�sN��0r�ݝ�D�੸�h��D�%��$���k�Yf�F����vՀ�'�5�!l��2�HGLr8�]���J&ȅ� J��PPYR,X(�b�a�I�^X@�gsp�#i������0m�A�@)��X��� \b���21:�+LsU[�����2;9_9Gҭ۴��zH�m�֫Or��եH�Ks����]A��q��ю��)
�?&@h
�Zj]�������h&
h���"�6ېQm-�+R�{�s��$$�1���!I�t2�vȯAd�H�ī' �L�@�9��!Ǻ�g_�?���eT.�z&�l�H�>��1���=݂���?unj��ET�]�{��~ԩ!�Y>v|�v�q���C�̓�^,.G���*d��h�g��m'y,#�8b6�1OF�֖ҍ+e���~�W@�u[A����$|)ļ�E���Z����	�u_� p(����b��~�I*����iL�,������h����O�P�̌j)�=YBT��n�C���nEyM��\�6�۔��~QS��s�~�鳄گ���i�zW���.���z��?��a��O�ȈfP/���=kZ�7���T��_(�|�PUf;�0�_��'�o����=�v5���,b#�"�H���{�v�W_�߹-��ff,w�ށd+�z]7�y�Bά�r���Wdo;�Y��t�<����3�M�	�d�G�X:�0j&�J��W��<��yZgc,����فЮ�wH(Z�,M}�!i�a�+`��΄��-z|��yKTTT^��q����V����~pC�T�&$�8r���M�T�'YȜr�Nmᕵ�P�A��r�
����G,��Q�)���ND�	�d�� g�L�/i���� ��� �C�H;Z�!Hv8`D�q�L�G8��w�s�1ԑ�F Ҙi�]6�v���=�C�=(c��c�����(��l	�"QB'z����m�%�#�
�8�]B׾���m �[!hc���q�3��P��t܁�]�\�'vb(�����ޘ�������Q����9f;d"�@�t$"�|>P���w�.�����f?) ��^Eq��5�#N-1b��^ʌr��
�M��׍���v�1��Y�C5��Y0�ͼ/%ܒUkB���3?SѨ��p~Z�G6#��)�4��5(��ˡuf�h�8��쐴�D
�A�q���B�*v4-NB�14h5�B:��8߲WmG���ш�!
��>�+T�l�$�V�<�;Tx�B��u8h�P�d/��b�_�� ا�&�2��ɐ�/�š/1Ϳ�{I��唙����hH��.�<puǜ�����D�B�Z��KY��rb�f�% Ō3�e����8(gV�q_�ɂ��	��n�nh�;�=<(�R"nVa�/��v�/bg��<��%��G�\Ь��6,���'��W����� $�`�{�ZBacS/9��$l�7}$5����d�V���"��,����ά}d����!�U��&��{0�k>B�pq��u��.�B�$������2���I���)�ClXTf�AA=��i�N넨�3t{H9��o�ů^���+ߝ�>���~���C(���E�y�#�5{C����{"|���$q�N�]#U�ҖQ���H�fqۘ4INh`���A6�a��r���?P�Hoa����S'no���_Jk�\�XC[Tv��g\;<{����0{H6t��H���Zܕ�eZGݩ�86hk��&����`�Y��j~ t�B<E
V!�kƧ��{_�����tkL��R������V��c�r�З"�[��AB
��I%�N�j��� �E����v�i<.����ݘ��ȕs����3�TE:�E��ltl�&�73�V�YP��r\s��ꖪ��,w�`�D��S$L�02V�7e�A�R��I9J
j���r�-����'�)	RDH�?�Q+�ǙVP����/��1zдq�8��h��`@�Yk�9
D��Xl4'd�8O��������!����;x�6�`G~s�/�k<�@��0&�TPBH���~݈��R�t��
��k2N
�(5|���"�wa���ud��/��à�_:�ފ"��̷�:o��q��F��XB�3J�\|��r��& c!a	�Ŏg!��lgEM���YЩɔ�kP�( �7����KD�7��M�� ��5"J�vbۛ�$Ј���\�C���Mb<��c��yA��SB�$��S�����5c(Q'nh� -�w`��$*�\�`��(�F#-���l��@�J�Jj��iӎ~B�L����`H%ȗ͒����pz�j%P��s�$�d�c�cy��1
���gch�U�!2ݚM�j��G׿�࿎mO	_j��##� 8�l@gd�±��M ��	N�I����-�;���CqE2�r���tT�tK���8O�q^�֤�=�Uռ�+�p6�Ⲿ�|n8���� zWd�CgԶv}�ZNT6@�8t���2���W�<��az)eqK%d�n�C�~�͎W���ÃQ�	��/��(�gy�%�J)��e�  3
����RL�����+#��%JT
�AB��VXR����1ħeuڔX��\	G�j�E�b����^߸|ʠ`�����w���uS�bύ}jVQd> C7�8�"Tڲ��٬G���S��$�%�"ȅ�ВU��m��u��%�6�jQ���@�9�n�[�k���Q'����L!~r�BD�^Xd �h|�8������>�&d���hcA��j����	�H�4z�#��o!�(�)D�Dfۆ�{�(lB3'92���f�=s��UeG��_�Q����*瞣��'j���AF2"E��X�ev�ku�na�� ��fbc	��0Dd/�co4�*�i��ՋYV��E�I�&�bc�����@�s3�0�	�lJ!-%�~Y!�ݲ�t\�<у�I���<OA���d��kH̑��pIpm�y�$O�R�J�dUT�f���:!WWO��4�lj�*Z�#��|�%�	}i-@s�sϲ/B���IkY�~ߡB��B�I}\�tr0��*2�R��K!���s�Q�a"0'���S>�=h" 愪b����� �\�L�|�������V!1`4�q��3j!w�h_^h2D��MR$m)=.��w��r��e���u���ïl҂exY�	�Z�*R������# ��� ��ˑX��U�Y����=p A�(]�� �B�p �}�7eS��B�MD�F]�q1A���m �����.��/V�/0A&=NfT�/PT��[��Z�޻��AAy����
���#_ǉ:�	r+H��gT Vy�ǷK9�FY�"��i&�
G�Rv]��a����I97�e��D�t�`(,�($J38�3({��F$|wm��UUUUW��WM� �2z5L�\��s# B�f8�R�v������l �t���D�@Ha�;I�d�S�R
�"���9�N�֜�ݴ�b߮T��P�|!S�z�1��$H��V����%r��F���ݚ��`��T���e�m���T���������řݲ9��TP���N<�KE�ȥ�KF��Z���)Eb�2A;�'u�k�~�t(a�0V�@�FH:
�<��J֐��PH
�
2�B�EvHmr��.)��nc;ݝ�s
w˚݅����H�QI��������H�v#�2˥a0��dV+�;�\n�iݦ�3m��cxoZ�&뵬ྫྷs񍦠�VB$�)��$�(`�oG��ċ��k8���93n-ك��Ѱe�i��T~2�P�`�дΪVX:F=)�i���X�8��W��+�l�ƭp�z��/F�/z���7��8X]`�D�73���XM]*�(.ƅ��4���J� ��ד�Oq߆�������S=��mM�-�P�0@\�G�����[��Q~�̩��X��8Vh=�bϦ�L.&��MCsEڽ�-T^�SUj(������P����JU��L��4�����P&ʰ�QYZ��ܫ7��$�p:��"�SB�1",��״�V����+���"Z��"�f�����m�ʕi�)�[
�8�D�ch����ʅ�/�[�Z�x
��Dr��+���]�
�T��'��l�NZ��!P��@~���9/���4�אnT��aѣNQ�c�����E������;8��!�
� ���j�}	aBZW�bl�#p�j��r��j�P����h��;Y��ʪ5׬��qj���[R�ҖR�Y[�`&U���P�^��L�<Ƣ���ƕ���� T���(.J��a�@&�.C���a#CD.R�(�CQ�h�K��8��V���S�K�|U�R!�.h]��8�����P��� �P����[Q80�8�&ȉ�B�h$�9^�D�2�����j��\f�B���U���~%
 �#�`��A�2\�:mh\�Ρ��Ȅ ��Z]�|OV�m{�аV�����&��̢���&u����3RBu��̆�.���3L�b�f&F�9�v�k,$D�U)�Њ�t�
��/'b w�ċ�lw����qմ�j�#�*�)��Ҟ��P[��A�ű��krU���}���F?0��7S	H�0G��	_:�B���9���w��h��,-e�°Q����y~ʬ�+\��]��t���A GQR�β��Om�I�kB��w���D �&ƚ���ң,0av������KB���4�%8x�\QIj�EcCڌ��!%�MY5��Vz�����=uA=����R^0�`��[�*g���
����x��4_�9'c�����P�,\� f#=(� ��Ti����ZH~[�ݜ�TM���5�j[R�<��A�]��岩}�gmD�H�,��$.��H��L��I{/�#Z������Y�p	&ӉgR�ʄ�.��0P -�G
��(%ES	�!�-$�	Ԑ*�lv���Os"��c�,cT۔X�~�m5�HU�UF"���-��th���n"�����p/�l��O�1�R� ^5ǀ����G�� ���1��D8
D@��&c���p"\��ߗrJR�^CM�i��娩h�L��.��x��i�����QUc��ig�{.�>�lPzέh��iD�f&�;�""g@����Z�%����V*/v|��g�$:�	p���^��2i�gj\���^�\p-9$�@Hb1l��\����'(E���;�B�<����jI�3$x�r�SH�b� G\Lݫ�*Z؀��c�"�6�БzCB��"���d>%2Edm�Z�^��3n�*�!"����H@��V�Ό�ϪX�@R6V5�� ���Kb�S'�qY�ET�!);�$abOZ�bQpi��+��Ա��*���L�;H�6\�%&TR���;�l���-vb�mu��s\¬����V��sB���)S2�PZ+5DE�0`����;i*�rTI!�d�U/ ��'J��An]TbXN��52E}-��A��Ed��΅�ϿقB�N��f�DE������EcFDcH��(^٢�m�[J�IG:�5^�6��@"�������p�(6��dt1�$�n��H���+Z	�Wr*�i�,���9_I)����E�
��������9�xh�<��3UT����]a+Z,��\�ʃ#h.��d�����
�&	��}b0�o8+�o	c���H�d�,k�-A��02�.f����F߯���и�E�p�<@cL1�3��W��&Z��I�����O.������]7�sbӪU7\Qf=˛o�������|�#8H��f�̇�.�^��5��l��!#K�DF�"����#5b(I [er��ƵNw\i~d��K�t��N�x �f��a@�Q��U���Aa�f[#�0�<k���z
�oX�^�A�r���.�w� 1jb<�Ԇ����:�΃A��N���Ɠh��`^��lHMK$ʹ���(��f��킌��r:��ʹR$oV�h���UJ�&�YaV��50���V$�c6�rKI���v\A%(�B�d�a@l2!��6��BB�e��,�7H�Ȣ`�����EEɫ���� �_7SC��PK#�cLI�#��_���o�ϐj�,�)��D�"H�5y�H��l�@���'C�C���>�G� o��XH�=/NB���&q�vS��O���<�C��?߲�US��!`��s��#�>
@�䇽"�[Of�����,Ex��I��)o�^��t?��o���{���)��j|h