#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --version         print cmake installer version
  --prefix=dir      directory in which to install
  --include-subdir  include the Tutorial-1.0-Linux subdirectory
  --exclude-subdir  exclude the Tutorial-1.0-Linux subdirectory
  --skip-license    accept license
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "Tutorial Installer Version: 1.0, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
This is the open source License.txt file introduced in
CMake/Tutorial/Step7...

____cpack__here_doc____
    echo
    while true
      do
        echo "Do you accept the license? [yn]: "
        read line leftover
        case ${line} in
          y* | Y*)
            cpack_license_accepted=TRUE
            break;;
          n* | N* | q* | Q* | e* | E*)
            echo "License not accepted. Exiting ..."
            exit 1;;
        esac
      done
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the Tutorial will be installed in:"
    echo "  \"${toplevel}/Tutorial-1.0-Linux\""
    echo "Do you want to include the subdirectory Tutorial-1.0-Linux?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/Tutorial-1.0-Linux"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

extractor="pax -r"
command -v pax > /dev/null 2> /dev/null || extractor="tar xf -"

tail $use_new_tail_syntax +152 "$0" | gunzip | (cd "${toplevel}" && ${extractor}) || cpack_echo_exit "Problem unpacking the Tutorial-1.0-Linux"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;
� ��b �\tՕ~����?�/&4d�$�Q$�&�4r�qb�?h� K��bKF�ݴi]h�I�rz�۲[��l�l���҅��uK
�۳�S�{R
�驷j D{���7O3������Q����w�}�3s�>�E�֑w9y����Z)$��������[W]�S�>_���(��a�RI=� S�>�������I}0��k	�[S���ǒ���������v��kj�������a�k����=�fX�������D��s�)��ͻ�����{�\P�_7���%�`W_�h7���A6L�q�	z��fЎӄj��Uq�4ou:Y���aђ�k?�����N5��:t���������N$�������O��	̝bW�2,bG��q����tSRlD2A�ӏ�Å���j�
2M�WG����(S�r
���c�S�=5����i�qS�2^m�,��Fz�j?���UG0o����l��;�̔�сj:p��vs��1Al*_̪�C�S�IO&���>q�u�;��t:5=���#U��ә,��&c,��FE?�b?�q��*T���|��t੫��ث�~p�H��}c�_�_�O��u�����������g_��U��ǫ{'�4VdLR�5v&#��?�ՊWz#}Jw4V�1%���`��;ؗ�(�1�?�ң�'��V�,n�A/���a��M�
�ml�ZY�ٕ��)��S��NQ��Q�z��f��2�E�:�h#�A�������iv\C��.gcY�Kw��{?�o"B�sf�����b~+ͶMXU��U��r�"��l��<��֝�yMW��<����0���> �6���_l���ƞ96�\<�S�/��NF?�B�q{�B�gm�l��l�ek�c����[w��l�S6�p�{K����0��"�G�-�-z"ҍ�������Ƨip�ף!�-��A|�т�����F�D������P$ե5i��3��&O�Y��nmth����K6��>_�7���D0�'�B�@`�]�$��z#���P�h��Z����X��)���B�^(]�U�h��%�[����Z �镾>OjP8R�}���&�NƵ^�ں<�-�Ph0���`�?��0�C�����%������x���x����9(�@��~�
�m��"���#�=���Kx��3�cx�����wXۿZ��Wҿ��_o���F�M����b�|^��@��^�_"�_�/�o����`O��_����fӝu��W�E�F����[$��!��~�����W�H_��\'�pPOW2	h�`h.�Z0��!�P��?�X\�x��ѹ6�ЭL2ҫu'��r~���D����?#�R�;�%��k���t'��RV�ߙ*}/��;����q��)�tZ�+�>��V�$\��~��_��i-_"�ĺ�&�-���_��m�~�mv����;$�N���R�G�<�^b�
+?(�r��u������R�����(��e�KW�Ey�f��������6�UfB­�P�ZSW4����W7���	ǿ#���\�n�1��W���x%�_uum����B$ٻ�b�5���>V�+�'�aW��K�2z��2�v�)��]��z��˔{.8������T�����5�N�G1�}�1V`.�d�*�h�2�D���[z�(`��˔?�o�1�����z��dz1S^�P��7a��v�Ϯ_JX�p��?�լ����R�k�׭���$�*j�����1����)����X��7\�y�Ͼ�d��6$�H;�����(���O�nz���X<Z�8S��woMr�o���o��<�=Y�6�~�z��߷�s��=�6��6��l��Ʀ��6����b�z���7L7�ȿǦ��Ȼm��i���.b-���(/&����/XI=Z��@Ѵ��xO	]ӈ��Ѣ�#�HO4�G-�}�X�y�0�:����P�p�عh�\?Z��6I$�`_Tߣ����ѝ3����?��Fc=V�&Zm��h�j��^��S��k�iF?WY��U^M�{�۵xJ���Z"�p�ZUύ�vC���E�'���\�m��7��نWQ��~���"�(�N=!`p6����=km�$���!>ͨ�A�ުu�}=��o�i�D"���!��d��Q�w�4�P!����h?Ah�/iܹ�as���T�k��6p�x����V�3�ʃ��N�ᝰ�Pj\���Ei����s����:s���{��ϳ�������o-�;�Ӭ��������6�9'�i��-�$����oQ4Z�O��Z�����]�>�����b�c
K$����[�	�S��qΏ/7(��ķ���m一�	���.~��%>%��>-������O|��g���gz���\pы�*����N��np���+��7���
�<�]^*���L�G�\�G�B��|����~X�	��~���C�J����X���qݙ9�=Vr�dj������X�+�ѧD&O���
'�8d��)���q�&�)�'�q
O�����ԝ��s��N�P�W���M���#��NP�I�q'o������M�R�{��M�)�m�q�&�� y�I��_F�f�M�/ �C2I(/�8�Sg�����o�?4���YM?�=?���|���b��]���������P��˷P�֩(|@uô�~A��~����veNv{*����u{=�C�#(x��٩�>�_ُ�q��)���&������g
KQ���}�`I�S�6>8��c�^�o|��2h�
�=^9߇�^>�Mۃ�&�A��a��ޯ�S#au���Uhr:0��{��� ~|Q�#�0�8��4��73h�G�������Af��������[�y4�M��C�g([]D;�~���7�\�b���!7�)Nr��o�t� |����Ҿ<��'Pu�Ú)Qt>Y�j����70��r(�V+>
�Æ౉�OS)����w��c����W��"��}��1� �&�<��+�����,4j�JV�a�ؚl;��ȶ�.~��;�2V�K���U/�Q�G��>z�e ��[h'��!�4���?�묱KpX��������X�V�����]�Ӯ�齰|RS��i,��yJM�h<����I���	쑉'��pSQ��2�0�F}i���ct���r����O�'^|�W:=L�Nf3�y�Xq|e�BQ��[�!5�2&-�ן���~i9��?�X�d�s�O x\�8�*5f���;_���FM�ԗ�����A|[::�kF���q����
�}�g���u#z��C�T����Zm�!u��j�1cjڍqF'A�e����C�(H�L2ڧ�xi�1q�з�d'�ߢ�Wb����S��#N1X�;N1X��I�}e0�>����(���{^˶X
�rB�����y.�Z�:g
������r���|v���¯�����X�M3_ۘm��m�s���|p�.����m/����ŵr�~���774\ߔ~����W�.��µwmoH�ٔ~�y��Y�ț����@}w�AW|�����כӯnI��!�����Q���?S/�ʇv5|�aW���ё\}/e�6�i�x���$xER��7dxR��t&�=����R�]���(��R�DDA���M*����u���z߫��	܍�[�!y�!����	���2*�'/طV]��.����t� �Г@���0��²�'7\��:�P|��_+��݈͊�q
l\��&��˙��+�������Wn��w{�>�i�5WU_���G�~�+>���W`���l�ڵ��5���fZs�����K������V�%GNG`��r9�z�߯��+�z��(8�~�A�Ub~$�_ �OA�[��n�߀߯!�TIv�pd�h����X�E��A�qȷ����{ �K0G�1�c�{�?��������|�i���r�A����O��ʁ����)T˽w��뇊[������ކ�U������%t���z���L�q����)g��]d�Y������]͚���.'��s�/�i6ͦ�d$���~;���9
��V)j�_���T�.���y���Ƹ?��s_��q?!��{�+g2q���>�ө����Y>�Y-`�C����>?L�Ǹ����޻�5�w�-r����f\�c�����5^���,��>��0~�	d��b�M,�5ƿ[w ��WNul��2z=�݌�f�.F�c��.��3�4��c�UF�؄Z��{Eg�yH��<s:�+��Ì	��wZ����v3�"�%^�]_f�0���xQv�����4�%��l��d׍��]_f|^v�1�D��ˈ�b��`��[��}ˌ�ɔ%>?�`��+|!9Ti�/��f|qv_4�K,ץv'���q��b����f|i�ۙ���v'��ԟ�?,�+nr�C��u\LFV(��0m��������%={�|~����5*�&^�k'�qf�g${~�꽁�?����}�O������.���^�zK���a��>���z�- _���V�j@�<�I���� �_�7^	���r'Փ?o�h���}�dP��
�i�<�����?W��G<�x�[�[����J�!�d�W2<ew�M�L9���lc���'m��ra�Ne����e-�����������"���ߞ���_6��B�]|��>�i����A��O+����6�>�jڮ����F���P�uˏl��S�ż���b2�/+4�O�?��H�M�S��G����S�O�+���-2�y��/?�᷑���E�qA������8��$��?F<]d�+��g��������Z��T�������F~-�k���5r���c�����k�$�Гz���"�x'M��Bה�cgq��/����z<�Ԃ�A���E�H�S_�a���D�#8Z$�'�z�F����@��r�u���b�/��AL#�[�=]�mmkh	h�[0ZL�vG�P�ni#ږw4�45B��ma3@cx�%Ja@~���E�a'���vlд�X
����`S8�:�Z���u{�Okmm�ֶtTi#�!Q���~�Ok�u�YMׁ�p4�����y��ǎ��X+��x&sx��Mo;�T�|��,1jRٷ*���-7x�n�eĠI&�^+�D'7L8ck�j��)��9 .g%�u�4�%ƃ��C�
a�s	�_��x�{�6l���i�Ha0�>�#=	�-�N��M]�]�@`��H�뺒ɬ�B?����@����[�@k�]��\)�=%S���ZLE�_�C�FXJzf
�5EOB9�(ƥ�Z�7�|�v���*z0[�ٔ�9���Zt�M��y�T��/�-��.��� ;t�a��a���JE��k�aB��`��x�{b�Ϡz���m|�51Z���Av5Чz�१'�	a:#����i_�7��q�=�"��Ȁ��o��t�8�(C��GC������;N�gO`ڝ��I>�x1�^��XI^�{>�<��qz�Y��w�W3�8/��s�Ry�k;������������A�O�^O�gW������R��n&��~AN�$�����p�s�a����.��~</R ��~FN�^�?��O��������_dQ���|z���r*Ơ�?�i�<�or�:�-��J��ӳ���;�|�\�_��I�_.��T��8�ݾr�����/��pz��~��%��;OfW����ܟ�)?�oW�Ry���t�$/��g���~�|����;y��zT�?ν��^������;���	��X�σQb��	ܿ�j���8K����Y�#��}E��__���A&X)u�\��a��xy������C��!� p8���[=�����������U����_{��B}�p�]� �~�����7{��B$>��? �{^�8����z�}t��ު*���gu��������n�U�\}��߭�Mm���7@��h��� ζ��|>��T������]�"�[G��Ct�S�HX��{����dDǰ���O(|�̽,��"Y@�>���t���a�um�o�� ��
t���[:���f6ͦ�4�.l��h� b  