PGDMP       )            
    |            wb_hw    16.4    16.4                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25371    wb_hw    DATABASE     y   CREATE DATABASE wb_hw WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE wb_hw;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    25392 	   customers    TABLE     `   CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying
);
    DROP TABLE public.customers;
       public         heap    postgres    false    4            �            1259    25444    goods    TABLE     �   CREATE TABLE public.goods (
    id_good integer,
    category character varying,
    good_name character varying,
    price integer
);
    DROP TABLE public.goods;
       public         heap    postgres    false    4            �            1259    25399    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date timestamp without time zone,
    shipment_date timestamp without time zone,
    order_ammount integer,
    order_status character varying
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    25426    orders_2    TABLE     �   CREATE TABLE public.orders_2 (
    order_date timestamp without time zone,
    order_id integer,
    product_id integer,
    order_amount integer
);
    DROP TABLE public.orders_2;
       public         heap    postgres    false    4            �            1259    25379    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying,
    category character varying,
    price numeric
);
    DROP TABLE public.products;
       public         heap    postgres    false    4            �            1259    25429 
   products_2    TABLE     �   CREATE TABLE public.products_2 (
    product_id integer,
    product_name character varying,
    product_category character varying
);
    DROP TABLE public.products_2;
       public         heap    postgres    false    4            �            1259    25434    salary    TABLE     �   CREATE TABLE public.salary (
    id integer NOT NULL,
    first_name character varying,
    last_name character varying,
    salary integer,
    industry character varying
);
    DROP TABLE public.salary;
       public         heap    postgres    false    4            �            1259    25441    sales    TABLE     k   CREATE TABLE public.sales (
    date date,
    shopnumber integer,
    id_good integer,
    qty integer
);
    DROP TABLE public.sales;
       public         heap    postgres    false    4            �            1259    25449    shops    TABLE     q   CREATE TABLE public.shops (
    shopnumber integer,
    city character varying,
    address character varying
);
    DROP TABLE public.shops;
       public         heap    postgres    false    4            �            1259    25372    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    gender character varying,
    age integer,
    education character varying,
    city character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false    4                      0    25392 	   customers 
   TABLE DATA           6   COPY public.customers (customer_id, name) FROM stdin;
    public          postgres    false    217   P                  0    25444    goods 
   TABLE DATA           D   COPY public.goods (id_good, category, good_name, price) FROM stdin;
    public          postgres    false    223   {$                 0    25399    orders 
   TABLE DATA           o   COPY public.orders (order_id, customer_id, order_date, shipment_date, order_ammount, order_status) FROM stdin;
    public          postgres    false    218   �%                 0    25426    orders_2 
   TABLE DATA           R   COPY public.orders_2 (order_date, order_id, product_id, order_amount) FROM stdin;
    public          postgres    false    219   ^-                 0    25379    products 
   TABLE DATA           =   COPY public.products (id, name, category, price) FROM stdin;
    public          postgres    false    216   w7                 0    25429 
   products_2 
   TABLE DATA           P   COPY public.products_2 (product_id, product_name, product_category) FROM stdin;
    public          postgres    false    220   ~<                 0    25434    salary 
   TABLE DATA           M   COPY public.salary (id, first_name, last_name, salary, industry) FROM stdin;
    public          postgres    false    221   �@                 0    25441    sales 
   TABLE DATA           ?   COPY public.sales (date, shopnumber, id_good, qty) FROM stdin;
    public          postgres    false    222   Md                 0    25449    shops 
   TABLE DATA           :   COPY public.shops (shopnumber, city, address) FROM stdin;
    public          postgres    false    224   i                 0    25372    users 
   TABLE DATA           A   COPY public.users (id, gender, age, education, city) FROM stdin;
    public          postgres    false    215   !j       x           2606    25398    customers customers_pk 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pk PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pk;
       public            postgres    false    217            t           2606    25378    users newtable_pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT newtable_pk PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT newtable_pk;
       public            postgres    false    215            z           2606    25405    orders orders_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pk PRIMARY KEY (order_id);
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pk;
       public            postgres    false    218            v           2606    25385    products products_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pk;
       public            postgres    false    216            |           2606    25440    salary salary_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.salary DROP CONSTRAINT salary_pk;
       public            postgres    false    221            }           2606    25406    orders orders_customers_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customers_fk FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customers_fk;
       public          postgres    false    217    218    4728                 x�MU�R�8]��B_@�o{I�!�^���fj6[Ī(%�p�����������hG◮�Q�I�}G�X�+���޼�j0F���ي��oէ����(/l�׸�>��(+޳�[�+�u�����F^�,b�6�Q��g����+|��Գm���&b�����U$�Q��Q.U�-S��f��}�-E�xԶ�x�7��(Jų|e�P������|4n�F�V�N.��#* Ҫ^�=h�e)�G �z��U%���V�OĪW�-[��
t���-�z���h�	lā��J������cq"n�>�F�m�u�|Oq*\��`�g �W�|�(�����=�P̮���vA_\��u�f�/�g�+�04�L�Es=%qӢԝ�^�^�� 8����V�m`$���˺v���rh�H�z0���-�ĉ9w{���?���P0�S;��K�ǫ�[JJ��{׷#�eQ��Aѽ�~�~p��p'��o��nYy���˺��A�4���
L���f�=���(J
��ܳ߇u~:�j_�Ci!`a��2��(-C{
[h�����C3~[#��5 /��,s�F����,�]�rݺ���{ryi�)KѺeӜ�^���~�lu�(�aQ��#��a�
p�'dY����9���7H�{����s?�jD��H�y�7�M{�4y,!��7^�2�ɱ��T��
��x�q@R�,d_�v�->�Z�U�I)�q�/�܇��'�0�Z�%�u*@*�za�57�|v}T�����B��Ԫ?�|ʕq�H�Zy��L�U&p��lV.f��N�F{�H�.�lX���(��
�@6wຨ��ua����ļ	Ep���G2F��X�Gh_")Le����j����)�����y�y�Fvq�|8`�R�_R�K�@BYL��1�gK�eФn𤋮 H��wU�Y��o0�TEp���SU見/O�j�GU������*���y�^�}5���e���X�s�*ĭ5�0n|O��]U��|�d�d"��cI� [G�]��+(�         L  x���Mn�0���)r�*�/�.=�P%,Z��Q6ݦ%Q!!��ݨ�c U�����y�{��p*�b�ް�+%d8J�ZR���ӭ.Rx�U[���{�P]IJu���o4��ҠT�g��}N3��G(|�L����O4jx��/G_I}�̰�;!15�&ȔS䒨�%i�'<s�56�e|a�%�3�<TƬl��we�I,I��`dJ�^x���/=&�l*GF��:�o뛻>3�+d�VoWf�6��9IFW��@��<g��
܂���e%VuB�m�G��/]��aGy��bs�Tt�D�g0[�E������Yc|�S���y��\��g         w  x�U�K�5���uFq&����yT1:�!.���r�i�>Uv?��O�O���O)�,/ͷ�`3������������L���C����+���H0!���o���__�����C���M�l!��I0�E�ByZ��ʇ�qX}u���6�����է�s'���<_./5g܂��K�S�9�|
}㛢q\0�T������]��I5�V�h�9�R�0\��J/��pٚ��s>����X_X�tg��D�)L��W�J�W�	�Nj�U���2?�
ü�M4���E��Z`��^�G=\�Y&AxW�'Yc-,0d6��2[:��ȅ��
@xG�M����Kr�3��[_���^NlkZ�ZD����,��n�m�nƽ�3�0,
��W�[���Y����#7�aе! ��e?g�$��g�3ㇵ�`�u:CF�X{�cT:;L�aX����OL�Ӯ8�#J�
Yշ���'ք�ZDݵh_������)�K}��'�0�eFU6�Ձ�c�<2�}�Jx���b��i�|_}�zI��(r�4gV.��k�3nf+�k�S�vU�`�Q�����U;���1ꌻ�x,#{��N�BV�3N���<(���ʨ�d	^ԙ5"g*^�P��h�=u�/V(�z4V$����p���֥Ɩ�ͭ���Kh?�b1$��6G2R�ϔHPxX�)�Yɬ��U"e�)G�碋qb��ށ�ӯe�5�L��Ę��+�\4�����>mւծ��P�G�8G4��ۇ3�!�.=	Չ#Ve��(��Jb]F����|ŧW��Ƒ�`\ɛ�]S"���-�J���i�a�J5�l5p�P�̛�f�E���H��͚i��Љ�u�4l$�ed%_y���z !���=�j���kyωi�9��s����FH�`U9UaD�L�~�g���a���T�����yjߙ=Q��'�z�};���ݘ�K�h�Y�Mک�[�$&�|Od�^���k�.�I�r�>�%ڞވ��o�ʈh�����f�n�LSV�Pl�3N�%�v���W��+��f0��}�D2]�`�o�jfn���,� ����!�k9킗�4Xk�����e	G�>�	�T�3��C���u�<��{Ib#���h�rߗ�4��ܝqb��8��0V0���g���/��c5@�-�~�^q��=cBAsӐ<K�"hܺ���� [R�hp����%4����`ZɃ��gP�rKa>w�S���R� �oᕒK��r�'g̹]4}|�c+[lSs����d�$�Z�A>���ō���Zg*h�����詴N���s�X�r֡�ӮQ��,�Ւ\�^ѲךO</�c%:�xP�3q���~�K�|��7��řh�k�Híz�U�%)��.�^����Mk.hݕCʮ�s�f���42L���[����(F��+S��k	�71љ�Ҵݻn�/�G�`3�ǉ��@9��̒;�@ILUS��Ըl]��
<��e盎��6@�9��{P߬S�Q����MslO����.C�z�G��Բ��l,��9eU��X�k��G�n��L�GElvg�G:�('���g�����j�S�#db��˒'c�ВX�?��kQ[Q��@���9��Z~X���`���4���k�e�JzG��p_Ƭ��1p�G��8��b��8B2�*��t��b�)���C��d������fJ���b<������3v=68�%-�e^�������yHq6��b��w�m�@��ى���,Gϖ��c�cה[�.뜋ļ�E��v���m&$��Dڝ��
�5Wh��X\��Ƨ�g�1������5�9C�J�-!�n!<m��xA�fr�.)��!6Ͻ�915[��h0E�Mk�Q�;e�5'��7e�	�W���#ʩZ��n{�r���h�L�a����4T���˔Cw������W]�+         	
  x�eY[�$7��>E_`|�g���a�Y5E�7:b?*G�H i�?*d���:n�+��d�����k~۸ӯq��t�����j����r饱�������q��6���9���@��nF��4p��9!~En�����
ܓ)�s����y�ظA�������~٥:ü_`�'�,��L�x�@��u�ކ�y�ضR�#d�|�B���zxC܎D�w�?��e���,X^1���{�<�P��y+~�HA\�%>���+e��yD!ǔ#�y�w&h^�@<������%�8���Y�l(@��5������=łm^��/h&�H�ٺ�7�/4=>�
G�U	d�7o9�_�wD}����Q*s�#���B��;> �b���=d}�,���E�ЃQz�2�4�H y浌`�5z&Qi�w��8h�(B$Рۑ�z��rF9��ض�>! k8��\D�!S�Z�.���lZ˩ޛp�7 �s|�V��B
6҄�� �J��� ��d�!�l+����#G<~��#x�\H�l���ȸy����\�{-�@�L� Љ~��մ2�W��2�����(�}g{}�$�Z��q����y<qWO���3R���|A�����b�:z���ؑ�� �mB)r��s��KVĤ�։��H�@�e$�� �)J��Eu��M	��-~Bk�b��H��{F
�S�����,R�-/c;!��_aO�Ye���A)4�:�EU[�������Z6����% O�}]��&2��Wl��K����ZӒ}�W9���"��e�8؏$/��RE���L���CV�;
nO��-�x�ɀ X��;[����:��Ie��z�RlU�Y�f��1M�@-������OK���2�Z�O�`f��%�Ŷ�����{�����!��n�bgVk����s���V���$��-�9�������V�����:W�{�?�Z{�!H����8�C=f�,���<���9�jI�b��G�Й|���5������\�R�8�)06�S�OBZ���N�Ւ�1��@��N�@-��9�g��>~������[��+�.=��B����P��^�x�,�<!���hv�/��s4�\Ց$�O5�X��R�E� gX�WK���-(������"��F�Y�PN���iYS�>��z7Ac�Z��)���~dZ�~9DB�7�Q��(�N¹�� �wIy�ڇx���T.��@��#��b��,-ݝ���лea�8Z��g���֕�5��F+5�@F��%2ȇ�f`�%�1`�*�32����\��k���~O�9s�+�{���_xr�w� �T!O �1C|�ş��� ��朁!�,$���d�F�)#�r���c�CeX�6^IfZ|��~�x�$���F�5l��@,&B�/A{�l���t.Z��%��5RZ�t{�4�G��Jl���MM;�u�kI�1;9x�K�:�T��뜖�\{��e�:Ֆ��D�[�����u*Q|�$�rH��.��\�>�Q�'�k�_��vwE�59s��I�n�j�c�'�e
�i	�쀹uq$�����R���~�����=)8����)�T��<qZ�����h�
8���b��x�Nʽ���Z�r�l\�i� "�0f-�M����ѕk�-i�I���	� 딺UR)�T�Ɂ׼i��-��	�=��B��8�2��h�}���#ٓ���W��,@R�#������ |�?#H�W�sHp��ű}$��	�5��X{w�)4p�\L$^ꨃ�B"Ѵ��$�ɴ����^��vE�~�̒l�|����KZ�F�m�[����)�l�E�GPa�uu��NR�(����Yx�5�]
�挤�C�.������(�d&�v=\uM�T�9�n{<2e���к�u'?±�R�j���`H�S�a<XC?E�PX,��9â+������i����ȁg��q����]�3�-�C����b�{;�X�n��3S4�=�����B�����8�+��}�(f6�����b����^+7!oаP宅y�z�^�<���nzrgm�,�}�����>�� >�!H�Lap�s��;��!�;�/C���%2�b��-0��8X����QL���TNj��wM���q7�������&c��?2�EL_;q�A��r<l)����
���Ɠȍ)�^C�U�L�4v�����!T�~����v��������l;��KBk�19tNk�VS	y�=�d��ݫŵ[�aT�P�c��cX��RMQ38�V��0�܃� 3ɑ)6E� �� �z[>��8��R,�����Q!D͍(ֱ)��ѻ���x�s_49ґ3��j��P��U�m9Cλ�Z��b"��\p�DcH)=*�y��/G�Zqv������6���d�.|��:;���v�~1n�52=�8�Em�'�z�&DU	�)��H��W�k���%���s�_v�,_5���4{�oM\G�S��ɶ/͞�k�h�k)(i9e��`�{��������`��         �  x�}VKs�6>�B� C<��ѱS'͸�Ԟ��*a$�"�P�3�/� 	��{�,v�{��`wn�z��l�>[sD��}3Cx�|��a;���v���m?h�Y�П7���tt��n�>\�G
>s��v��:��6�^���P�>7ln�`K��֌�!t��s�;-D��;�4ǲ�z����rO�X�Ǔ�ys��0�Sp�/o�5zr��SJ�t��G7c�G,�
�}t���{���*s�?�����EmK$Ä��a�>o�6�g��b�g��x�|?��=���xta.B�3ݚ���f@�l8Gl��3Ң���/�!���D��hݭ�N�_ZG�(}�?#�w��̮dOZ���ҟ>V�k
hto:;_%��<���@��4���0�Μv��љ���=�)�f|�1�D��Pe�	�$�o�����..
���-�ez�ġ�gȋ�4��t����ݹ��o<#K��М9�ɩ؝}:Q���I4�H=�g�]�r�Q	ȳ&�=R-�,Ead����s#���t��WW��H�/c�OL���L�D�2�ϛb"�Z�Z��`�=�k�ᣘu5S�d��V�U+f�3THU �,^��W*:�B���,Eets5��I!ƊV��iTxԦ�77ۭ=���:���Y<=�}���ξ���;>�癕�(<��%u����OG����6V"@�\L�_Lr� �o1Jm����\��!�K��\ǌ�~��QL�B�mSj.j�*⠛��Gfw���H�0�hI����bZ6v��<��o�'L��o���5	�Èi�ճ`�:	���ɿnnN�hTa\c0��Н�W^�n��f��R���v�����6�^��Q�XP���i��k-�2��#���ݚb���s�~���,d��tvi�YqU�������B.Q��-DƯM��?^�H&t�VU�)�e3�����|�d�y���aYz[(_ l�j$�9{�UElOF3��L���2`Y/BESM*��1.�R��%��\�z�K��`�9�E
�/��+eR�RPM��A�B����DK���;��CJ�i��~z	�X�y�1��-hH�e㼾�5+�e�6嵤$Vr~��ӛƦR&��謊�ft���~�4���M�i8���v5��x-�I��k,���:����נKՄ׬^{��f2F�4�3�p��qh�vq�|$y��"��k�HP��S+8
o�<��p���Y\;n��6��޾������� b"�         	  x��X[n\7��������^��-��>>
8i�-�'� �=ނ���ׅ1ϡ��9sŇ�CR��T�׫��W�l���u�~�7�T��m]�3�|W������ܮ��w���������n��M;k�+��S���m��i��wS���<`c��໺�����ް��#����_�OS��͞��]�,�VD^���͡�#�!����ͬ���݊���v�F6r�C�ވ�\�K�=�y�w|���1��7�u>yQ���v���V��aV;��P?W_,����W_�T�䃷��Z ؿ8E���U|ڷ���$�A�|��΢��m�ٷjc/2j/a<�|���uX��y��#H�����W9��|u��y<���+�1TP�~~���瀿cӧ��1��.�������#�RS��%��s�HAEZX� �x��Z��_���@9�l��B�떯�
��Ң �n��a($�����9���'����s��_�� �J<.��N��
E�o�+tj�A�F��,�]&��D&j_C�EUǨ�5k�/K�I�T���$�-�UJ�tB���E�Q�п`�!��h�Ha���9�@`l�C�ڏ4�2�*��-�S(�[�U���3�lا���'g)�$J�?BZ�۹���@s8I�;��ഘJ/O^�e|׻�����^�p�~��KY�F�� 3���%�cRƅ�'s��+�*��Z�v@�2���z�P"�&��?���>#V���4a�;�{�Wf���Ì�m��㑕FZ$h�J�-F1����y&�E��C�6��g��Z܎IZ5
���q7H�~�z�LBC@�O=.��	�E��DH'9��(�%��6@�1�:��Hz'X|�䕭�X�t�k�$�L�6ʤ$]r�_y��+���4ba�
Vq����8�-�咶z�Ӧ]��۠����6����y��-o�=�RA�B��{M��0)B���G�+�Z����K?�A�d:ƥ�<p@�rx��2�O��WV'�$�b@��I��xl��z�Z�լ�            x�}]ۖ��}��
~`fe�G��C�0�5��%�J�\v�������!EHJg��).;v�C�f�����ө���=}�ͧ�y��Fw/�������v��2���?��O�����1���q�^~��N:}��0��:�N7���x��݇���x<w��珏�q�݄���~7���v��.����q>��������?��7\�ٻ���<����<�_���n��`�Og�������n��{}8M�ۧ����.��;�Ƈ�t3���n�{�<�ﻏ����wU��~����o���t�~t��+0t/���V���8�;|�to',�i,��L�a�}:��7���Hk�|7������Rj�J>}a>u���7|i�^�1�_vX�����#^��q!�z�?|��glg�`?���Ӎ���=vz�>a��7��q���t�>�b=��?}>�
�w;,���o��|�V�(#�Ə�?�N0�.��T�vƇq���|��������p�?`X���:���`��3�g��?~�r�!���t{��U𴿍��n>����������GZca�o]�Fa=�;�ƛ�O,jtX��^.���}����F��%��i��Þ��p<���}��^���y�`�e���^?�p����x���� ����}z�����}����|x8��!7�6;���'�{�}���kG��o�b$��n|�>�N������ͷ���x�ޏ0��Y����<���(�q���C}��;x�ف�ٻ����tcz^��1XZ�i�9|�Ҽ:Nx�!���C�+ŗ��;ڲ��
ϋ���y��O�>�E�������_3�=��f����}>���kNF����7�Ev	����w���|���6��>O���dwp߻Sg����_6_���w�&�����{�r�VM���aIfD˷���b�K������\�!�6�<k����6�n�է(qc]�+�>���L.]ғ���qw����݇��H]J0��`t8v1t�yWr=B�}��C�&�;�+G�&p�FQ�]������� ���"�Ǽ{���F|���o���=��6m�A��h�;�'��w|��鯧�6]������-��
1-�k,����;�EZ!$��~���cu����H~��L�?�oϊ[cʾ�x:��*��? E~�	�[P�M��m�#��-G�O��x����S����Sc7���@������Hou�L*o�w0����ﳼ0�q�/�u`�5Q�ڏ�9$��?`V0���0F�����q�cѻ��?}��N��?�_Ǉ���>N������_T�(��d��j���ɲ��5n���`x��$�G`�D���6��iܝ��B����zM9�ĭ"X���[����ae(y,DXC΢�h���{v;qc����	|��Y���y�K�>�g
}��:Oه"��%A�1�u��k�����_�8�|���m������
�:��kD��ŏ�"��oǯ�Z��H<�&�}ϐ�7DZ��.va��g�wʅ�n@8��Gp�!��Z��S<�<�pFʁ3��Ë'Dpl۳O����M����O�0�֨<���q���+"57Hh�e¬uA�E[�p��?�r�ώ?�����'�vD���9��Ŵ�_d�=�5N_��*~��(�b{J� 3?*��B��{viHCj~�C��7�o��ӗ����a\�
�C,s r}��N;�_�;X���x�ywC	K��'�y$2���.����=����`q�U���s�!;g�}��~�N4�� rQ���J���HHVϧ#��_1��|Z_�:������=%��n`p����l!���a*�: ��w����K�L�
�$8������W^�]����q.EM�K.���Ԇ�8��n�,?�G�χ��I ��mq®h_V+yn��<2û�,�-	0�W�� ��=E������S�Kv���8Q���Q��b́>�b�D�|�&���PE��K�B!%>����J��=�/1���+�5���)ɀv����`��92�3��F�-�<���L7�/"�N����|K���	�����/�3V?|�7.�����9��8�rr�5��[+E.G*r���˗����q�k��ۼMS�H����.�Dp�=�`E��X�:)D`0�(�p`շm[��@H-�lS~7HD�RmAN�w���)�e�����vZ�������rSqǥ�u�:~�7Fs/��r�z�&��;�I@x��?&��D5�t�@L@�R�'�
�E�0c F����+`@v/ �0��:$k���0IF�>_Y��x���|.p� ��"�3v�m��Qxl�>���e5����EN·��N�Ae���T��'|~xxx�d{�=_�1)�t��
M��h]Oi�;!b
j������ 3J��^)���#��b~�I�ӈK�p���>0��=���5?�6h�rE�`���n	�lZ�T��ռqg�:�0l�燇��l�����_�.�8bdu>"yҳ`+�>���������f���#%�urKK��<�����R ���J���
��D��i�_LRɡ�!�c��^�@��d��#�N���p��s"����.�4�5�HVW
"Q�ΩΞd#���>���������d�ߍ��E@��'��L�2�]��T���f�h�8�u�w�sũ\|� R	��<�ؒ�D)�!����(V����/�����U�pQ���C����4������w\4�q���맄�?�-��Q{%	���j��BZZ���j��)	�0��2GDL�N�~�O�r���a��Ư�A�q�I)`�� �8�HK1��s+�*D���Đ�*��Ua����!2���\Jxg��]�ߩ�����?���Z���	+��Pk��i[/W�7wO�+U([�c��o���yWl!\�!�^��jp���WA�ګѥ�>�����0Ex��Y.�Ӕ���B-���6�����E�Ǎ�\$&g��V�7��!�C]4��?fJ6�B��nӈB��gM)�7�����k��T�}��g	�V5���"q���,<e6�GS�ב#�����#�L)��ϸ�%PrFa����P� >d��%9�&�SY�d���?\�(
�b�j�
w+@�ʂ�PM�`fEP����p�g�<�퉳��vӛ[[�
�f~�P�m�O �<p��	���~𾾿�yJ9u�S��E�i�d��*@.�򭈹�����p��Mx�x���{�oo&`��� ��1�ȋ�;6��}�ǆdu;/�$�\�����I/#�\�P|M�����NT�3~U�_�~��Ԉo_g6t���r�Þh׉{~��H�+s>i5ѫ�{*�U����{ �kڌ1���o�������'�0kh�$�2Sj�bS����d�c[y�X��S(5睟*!�bȥ���N����t��g��T�i���U%����=�^szʻ@`sݗѽ�!2b��K�\#�s��ؾ�c���7��\�@@Y�d��X#_ݗ*?�C��r���IFw&+��U�F��/(�;>���=v�����w�%�,%������8^3	
b�Ϸ�3�}��g  #����@�RB<��@q�G�M=R�i��Z�z�m \)�5a��oB,N�(�2��JXkmF�@�!��z��k���u�k�Ӆ��+!�ui���+�A��J%�g��5i��+O�K�.����^42]Ӧyx����Y�6�5g[Dq�n~�(�@��¶��LUT浶��9�ͷlF�B��`�[I9�)*F�Ğ\Kۚ���@z1�QX�k��a4,$����E�X�0���x{B��
���6��kLkx���]�PG�f��\ ��4��q,﮻PX�BHb����,�۷�[-�J=sHԠ�X4 /��	�J\j+���8����Z����<z
�M�1��RIAt��eڟ�CϢ�&�f��4@&��TS'q�-ɥ�z��"������-�c    �S�y~�� eJwM�J�KS;U�r����z>�A��tł�/�β���}i��ĺVOe�/HDc{����j��a?�uX=��人Y�&*%�u�Dˀ;�+A	@��,���ld����m;� ��
�?�{Ѣ���~]%�������Q	&{O����ysx��l"Ð+��֤*��p t3�U�c$���dІlsY�h�xW�MC�G�i��i���+1�5�L��%�$2 ߬>�����
gn���Z+[Ǧ�&4R�����+�?��.�,V�t��FƖ�ұY��ܩ�[-+�++'jEq�����{$$��$H�TҠ�::�g� �pR�Prɵv���D@PL�@�h�V~�{n�HۛPq	�f�>��DԲKr�A�	��z�L:f(L���
�����j_�f��Т�|���Pl������P[GE�ׯ(GS���o���ɀz�Ջ.J�@���Ԇp�ܖ�4:t��1@�L	�ؚ"�E0�1snK��$U�w�($�l��QU��oo��GLN7�.������R�Gi����n����& D��l��h��������t���]t[��������o����ê�1���S}��e&�<�V J�	�MC�����16����Wj�QAG����G�o�BXbLe�x$X^^�Du5��f6��,��/�)PX�/�s�Fc\��f�v� wK(+�Z]tl��d�fZzhu�1F�J�F��\`�7y@��_{��4N1Q�$I�E�L���5�����f(N��Wą�e��zM<�E�ۘrm�n���A���o����4�9�&��ƶ������������^Xh���?�����	�N�c��a�B��K��M;��+��q�3�?����i[߲%;���4�q������}�En�gM.�HP~�U Y�򃐊�o呂F��${�a@%�c�)�	�h%�ƶ���'+o�;�a� 6��u9jA�h��h��$g��mS�`�0�ʹ��
�GV	0�����9��60[�����F�L���p�5�e��aJ��C�7�)�%З�I�OWR�I��e�k����M������������ 2�u/���/s
��M��PS=�����j����HJX	w�~�*����`�/���<5�k!o3�)4,��*ൽ/����˚��AJ�Ʈm_k�Gᤲ� .��v`~Z$
a\m��?U�nq-��؎4ݨ�,��`��b/�ܧaA��Ҏd�\#��W���׌R���#ѐP��҃w[O�DR�]<�@�D��;l�e��b�K�ԨN�w�B�VHeႥP���b� ]�(0��x�@���+�2-5�)�d��k�j�hP���ܢ���eĂs	�/�@,��J��e�i�����8A!��Q����k�On��D���2���5U͟_Qǥ����\�s�mc�� �hPZF�V<a�(��<u)r��@�v|o1\hk'Y���1r�L�0����3Q	2annI�uIC�v�'S��s:���HCOm�������j��8<�y���W�@ǋ��h�.y�C�l�X��Z�F-@K��D�p���3'M��-��@?,�!r�%�`]�C��&4j��g]�iqO\�H��
���'�2mV���>C`�������
C�ץ���ơ�Y_�J)��u
��PT�]�+F�ɷ"ћE�C��˳E�2-Uk���sc�t6�J�r�+�*qі���I���� ��6���A
S��v�P�"1؆'6�*�h� Q.`��岐�fZ��66�~N8��_"]x��\ɱ�/�}1X��j*��'�y7L�2VV1��	��$3Ʀ%�BV-��EĒ���*���J.�Hr�%>q�*��M�e'��Z�oiEׄV�ے#D&Fz�&K8�6^ي��O�M\���WO@��ծ�zME8���<�pi|�t3]c�:��A�IՑ���L�6\�����L��Jy��)�������dN5��:8dv����K����pN�ɝ_̰:ŀ%�׸��T#���d�*R�2u�jH5����M��􊥆q��,�c��!NɀUI���Dž�-�eq;L8jw�;DT{]��9��ci�v P������Ճ�F���jB�ӭڌ#R� N׃�f�E	䒪�ӋL	����#���c�Y��H���9Q(�k
G]�"}��,h1��t�`�ַ^J�g�f��a b<�� �`�F��t�-&�����+v�¹PI�`�~Ƹ�9��9��oX8؄U���"t6�p�]�L��U�L0'yq�3�(���"uQ�°dX	\wMe�-�D�A;���FL1��E�����1� N�s�c�[.j��i*%��-���J���?�5
3�d1,��c�P%f��S�b?$\Tt���hEJ�E�:ع��2h]����=�����۱�yi�2TjٹP]�㡾B�8W*.��2y��f�C�Y����-
.���R���Ш_��eπ��p����M���n��[	��
�y)imK��%*2��u�P���)]����ei5y.ԍ�ۨU�����GdƐ��I�/؎�	N�FJW�O��b嫣��K�
�բXs��yMs��W��.�J�Jk�D��Ô:���ճ�p��l�]t��h{e�#"r��`������2m[��;{��^��,Pw5��d�B��8����#�C��TP�}Պ�Dh�"y�}m��Z�ͳ�|_�9�!l���i��el��4��]{�$�ճR<���k��	�n�y�]�	q8,O��|"!S�ʑԛ+RKO���Sn�U���7��(c�Ҽ𪕹�sc�DR�U��j��}3�������`���K� e�iF�3yU�D�G���V�(5+R�/�+��rR��B0^U�z�k���d���xf*��b͘�C�ĥY�7� �OC�or�c��O��F]��(�zR��j6e���y��-�PEd�u9���N��\�5ϻ6�f(�,o�L��N�����r0���̆Eh��4jCZ�M9����W8ols�Xz���R5�2�t]zSS����d�ME����K�% ވF���nm8��M|&���S�홝˰tyP���U&%Z]�԰�Ew.�h4ZV��̭�~�U�D�^%k+�#�m'�9cS���$�%�d�H��}O�o���Sz��������P.y���WS�{�x��h7Ѕw"����u�����Bd @�E�Ó��J���o4Q�+\�徥d�k��2��8+�
q󸢛�J���dV�<Od�>�K]*��\�5�if�̔�=��+��&t�����q��"eh�:�}�����l�q���
ņ��Z��I~��7���U�Z���L��i��>ȱ2� �Ul� S�x[��>E#c!-��F-1'l��������ߠ�|(LX:8g}2���x�r��ߑ�R�+-t
 .IS�GU���־t�]F2E���c� ����:��?~�D�q�䕃ZЫ-����Xƨ����`��פs�.A_HH�J�W�d�+[� �Y�@�1񸁔l�'R�@a9M��a���D�2eZk
,i�����	��J�}��K!��+�64Cȩe�M� �]�����!I��#U���ʙ��ЫCaB�e����pR9��8k3���E�C_�Ʀ�C���	+A�^D�W,��zl"Y�"���n�yQ��j�l���L�P��� x\
���i,�IA�2���C� ���ˎP��˸:�=�F���[�D��5�&��76�-��-�~�Ԃv�?q���eW)h_����Q��L�*��Ps#�m9*(\�����mG"�r"*ӵ$���:�{���s�05�r��Gl8M�e�,��vyFK0A���[�M�&���U^�V�}�Ň��vBC�[���~�O�%�r��p�8o Ѓr/��\S [4���q뼭`KWI����5��̡�r{cd) F��ŔG�.�>�	1ȦVM��%�֡�z��t��=1�%��[�ר��l�݄]�ȅ�aVS��ćx���z�t+#u����51��é�q!����gu�n�P�/s,rU/C(�� �  B{ޫ��b�+Ƈҝ���+xSd{���� ;`+�����D_�N��
�|a�r�����R8_6��z�+}P���J#���X%��{QÄ�K�'�s;G`���̑NR�>��ԁ �g
�R�𙎗	���rj�X4���C�q[����)IA�ؔ��P��W������tB��r� ����B4���ؖ�F3�(瓗��V�=�,�G�j�C�qK���V&�U�g���jv-��d*�����3�"�UA������Vz5�������䎋w�C_�&d>m?"���y���y&�R<q�]XJxE�I(ʊX^�n���PO&(���q���V�ud8W
fivT��!5��rL��m�ԯ������F��2���Q��~�Z�u_8����E�f�L)8��^$�&�ļ[FӨu!�d�	��Һt=μ����#�?M�\�6�4j_�Q��K�e7CIP�8M���b��%]M�V�I��i��Z�&Ѵ�&��ӱ%[�O4��!�'"�#���$��Dđ��|�S�!թ�����.����}%֮�]����D��-'!]��2�-�*�ڦ���z�Ϗ׋���`cHѺ�t�����y�)w.���$֋!�ʓE+���ٸ-�=�\�����D�L!��k���5'k$��^f���brs�H,�����N]��!��e�p�-�m:�����ɳy��"��O���ǒ��O,�W��kߒ�1uw�pㄋ̰Am�00*-糙�1�H�h��tY�W�)����4�xU}C3�#����/��9��4\�+�Ji���BM�@8�~��S*c���U��8�7rs�3M:4 9Ҙ���� W���TG�z�2����J�H}颬J�D�׃61zn�l��B���(��ބ����gʨ��/S��������WP�}         �  x�u�Q��8�=wI`I�l�%�?G���*R����V��=�z���,���OmW�(���A�ϣ�B9Z.��ʅv�\�����W����Ʌ瘹��3�9�?S���h��>��3ޓ#=����'�����e�^˙	�5;�"�Wz�E�ӿ��e�Qs��e�q��M藑�0	��'
������л�"�w�E@�ő���>���[�!7������>�}����/}��\/�޽��>p�Bx���Ʌ��o3���,@4V�Գ?��I��3�����+\�O�^@��OOOtB�v���/��i��sv��_���Waȗb�?7J�EI�EQ�EY�Ea�P�(�0e�EIE\P�u�Ai2:n�����A�J#(Vi�*����Fh� #([i����d4�%3=�a�UF4���FP��.�p;��4��=��@��h4�"�FF�FF�FF�F�@#�]�3�ZO�$��7�';�@�VU�					��*w[�fW���		&0
$�{umx�^]^�W_�W�À�:�À�Z�֗��M���л�;��@�
tM��������ȅ ]��ɅF�6��~	�ꗀ�~	�_��Dx�w>�%��~��^B���	�w��	z	���w@W���	]��΅�ҧ]�̅��g>�%��>w�}ڽs��v��n~�g�7%�xS7%yS7%��]���_Uyã�*qԛ�}Q�>%x`����ppAQ�2啴�yE-����6������oJ� EyK#(pi�M���_}�.�@#(ui�.��إ��4B7
4B�C͕�ľ���\�\�陘�mxjz&fAюg1B��_Ns�ܚ�涹W. ���UP�s���ּm��m�5oۭyM`4W:�@�FAs��{s��{s��zs�d@w�w�+q�3nB׏�+&���ȅB��O.�ng{�
g�K��[ڮ���v��J瓞脮���߷���	�꜀�:癝��o�s�\��9{*p�7�9�\����	�꜄5��t�J'��ҹBw�NPw�N`w�Np7%�w��3~?��S~?�Ux8�Ux8�Ux�F	��lg�+<s�ć�O͕��]�\�܊�Fp�g�g��w+6A�Fp�Ө�g��w+6A#�FЊ�FP�Tx~�������|�0�         �   x�m�AN�0D���� �.N�]zX !�MU�A,S5�g�#�n��{�73��C�%Vs|`�/���$Jph���z��X�"_��a�)��H��E�����y�eE�h�Yz�s�b)��i������264ep����48Je�G��?��\X��D���^�B_�:Ҟoc>�<������p�ʎ�[�b�{��6.�W��,�c��h���*�fBi�W����*������         :  x��W�n�6]{�BP�[Z:��In7@�#1a�tI*�w���{���l�R#��*Fp4�̙sf�Ϯ�p:��٥,�T�{%]+JgO�T��!��7�$���z�䜮�/���;ٔ���泅ֲ`�����
�:H�|������|v�֕��JJ���[�I�ѿj��af��*�F�w
I�a���_��N*��%c؍"���"LCvL=Hg��(�ꟿ���	ì�#(��_m� /3��=1wF���DQ������ ��A�?��:b��"0x�ҙ���������x\�����&r0}M�z%b~҂bGi��0��$�l�k^늉5��E��$91�[bU�?���F�0��ڻ JQ�ǻ�s'���R�-�A=����鹧�U�
K�J
����3^���&�6�C@`���#�C�iV�!�<<f���Tl��@в��gK%�5+��7z�	�L�֨��Ҝ�}�7�%� �js	��]�6�
�Vq�t��#@�r���>�w��-���;��B�����Lo�Q�a8�8�e�ԾEF��ֹS������}}���&��1��:�����i+�`|�-�k����t�<.!��9�so���Da��ʿ�o7`$���Q�T�-r �~�6�dhcQ�H��O�/�]�����T�b�Cd�A�N}�I.��2	Q�U8٪W|C��F�Q�n��N�e�]��J9�Q^B��L��~x+�l!��,qt�R~l鸷I��1ƻ�5:Dl��&����Y���㴞�B#�q�Y�;0����*�H�`豥-�'���0���B�Z��p�4alyB;���g��񩹶��Fs<�i�����5$��T��ytHZ�S��@%6vE 	����8�C;)���X#,���ռ�A���g��[��X���.j�-���~�Lw�}�R}X�V8h~�U|%�o��$��pJ�Ql�|ਓ�&9������t��ӗ�����J�I���㦔���oɶ��=������T�OH-�h�_i~��0�%0cn���q�O�)�?+"֋�f{��3=�3^ּ6�VG�x!y&V���3gxy�X��Ҕ��R�H�i�N�p`}��mm
��e��`Jhh��$�'d-a�8O@?��~�������,��uD���w���Oʦ��^n�^%�!	�(T��mb7����5�&�_3R�K$���.��VǼ8���{G��!�%�CQ�a_I�8*s����=d��CN-Q8�&�m,-k��<$�|�VX�Ü�{��Q�5��^Vh�;m9f�b�S`����{O��������ܖҹ�P���� �/G��     