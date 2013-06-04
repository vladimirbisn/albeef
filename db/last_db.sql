PGDMP         %                q            smartkiosk-dev    9.1.9    9.1.9 a    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16385    smartkiosk-dev    DATABASE     �   CREATE DATABASE "smartkiosk-dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';
     DROP DATABASE "smartkiosk-dev";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11647    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    184            �            1259    17508    banners    TABLE       CREATE TABLE banners (
    id integer NOT NULL,
    visible boolean DEFAULT false,
    duration numeric,
    playorder integer,
    filename character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.banners;
       public         postgres    false    1944    5            �            1259    17506    banners_id_seq    SEQUENCE     p   CREATE SEQUENCE banners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.banners_id_seq;
       public       postgres    false    183    5            �           0    0    banners_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE banners_id_seq OWNED BY banners.id;
            public       postgres    false    182            �            1259    17427    collections    TABLE     �   CREATE TABLE collections (
    id integer NOT NULL,
    payment_ids text,
    banknotes text,
    reported_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.collections;
       public         postgres    false    5            �            1259    17425    collections_id_seq    SEQUENCE     t   CREATE SEQUENCE collections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.collections_id_seq;
       public       postgres    false    169    5            �           0    0    collections_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE collections_id_seq OWNED BY collections.id;
            public       postgres    false    168            �            1259    17438 	   customers    TABLE       CREATE TABLE customers (
    id integer NOT NULL,
    login character varying(255),
    password_hash character varying(255),
    password_salt character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.customers;
       public         postgres    false    5            �            1259    17436    customers_id_seq    SEQUENCE     r   CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public       postgres    false    171    5            �           0    0    customers_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE customers_id_seq OWNED BY customers.id;
            public       postgres    false    170            �            1259    17486    orders    TABLE     8  CREATE TABLE orders (
    id integer NOT NULL,
    foreign_id integer,
    keyword character varying(255),
    args text,
    error character varying(255),
    acknowledged boolean,
    complete boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.orders;
       public         postgres    false    5            �            1259    17484    orders_id_seq    SEQUENCE     o   CREATE SEQUENCE orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       postgres    false    179    5            �           0    0    orders_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE orders_id_seq OWNED BY orders.id;
            public       postgres    false    178            �            1259    17411    payments    TABLE     -  CREATE TABLE payments (
    id integer NOT NULL,
    foreign_id integer,
    provider_id integer,
    account character varying(255),
    fields character varying(255),
    banknotes character varying(255),
    "limit" character varying(255),
    commissions character varying(255),
    receipt_template text,
    error boolean DEFAULT false,
    checked boolean DEFAULT false,
    processed boolean DEFAULT false,
    failed boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.payments;
       public         postgres    false    1931    1932    1933    1934    5            �            1259    17409    payments_id_seq    SEQUENCE     q   CREATE SEQUENCE payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.payments_id_seq;
       public       postgres    false    5    167            �           0    0    payments_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE payments_id_seq OWNED BY payments.id;
            public       postgres    false    166            �            1259    17472    phone_ranges    TABLE     �   CREATE TABLE phone_ranges (
    id integer NOT NULL,
    start numeric,
    "end" numeric,
    provider_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.phone_ranges;
       public         postgres    false    5            �            1259    17470    phone_ranges_id_seq    SEQUENCE     u   CREATE SEQUENCE phone_ranges_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.phone_ranges_id_seq;
       public       postgres    false    177    5            �           0    0    phone_ranges_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE phone_ranges_id_seq OWNED BY phone_ranges.id;
            public       postgres    false    176            �            1259    17400    provider_groups    TABLE       CREATE TABLE provider_groups (
    id integer NOT NULL,
    parent_id integer,
    image_url character varying(255),
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 #   DROP TABLE public.provider_groups;
       public         postgres    false    5            �            1259    17398    provider_groups_id_seq    SEQUENCE     x   CREATE SEQUENCE provider_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.provider_groups_id_seq;
       public       postgres    false    165    5            �           0    0    provider_groups_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE provider_groups_id_seq OWNED BY provider_groups.id;
            public       postgres    false    164            �            1259    17462    provider_groups_providers    TABLE     |   CREATE TABLE provider_groups_providers (
    id integer NOT NULL,
    provider_id integer,
    provider_group_id integer
);
 -   DROP TABLE public.provider_groups_providers;
       public         postgres    false    5            �            1259    17460     provider_groups_providers_id_seq    SEQUENCE     �   CREATE SEQUENCE provider_groups_providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.provider_groups_providers_id_seq;
       public       postgres    false    175    5            �           0    0     provider_groups_providers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE provider_groups_providers_id_seq OWNED BY provider_groups_providers.id;
            public       postgres    false    174            �            1259    17387 	   providers    TABLE     �  CREATE TABLE providers (
    id integer NOT NULL,
    keyword character varying(255),
    template character varying(255),
    image_url character varying(255),
    fields text,
    visible boolean,
    requires_print boolean,
    phone character varying(255),
    name text,
    popularity_weight integer,
    is_mobile boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.providers;
       public         postgres    false    5            �            1259    17385    providers_id_seq    SEQUENCE     r   CREATE SEQUENCE providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.providers_id_seq;
       public       postgres    false    163    5            �           0    0    providers_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE providers_id_seq OWNED BY providers.id;
            public       postgres    false    162            �            1259    17497    receipt_templates    TABLE     �   CREATE TABLE receipt_templates (
    id integer NOT NULL,
    keyword character varying(255),
    template text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 %   DROP TABLE public.receipt_templates;
       public         postgres    false    5            �            1259    17495    receipt_templates_id_seq    SEQUENCE     z   CREATE SEQUENCE receipt_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.receipt_templates_id_seq;
       public       postgres    false    181    5            �           0    0    receipt_templates_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE receipt_templates_id_seq OWNED BY receipt_templates.id;
            public       postgres    false    180            �            1259    17449    receipts    TABLE     A  CREATE TABLE receipts (
    id integer NOT NULL,
    fields text,
    printed boolean DEFAULT false,
    document_id integer,
    document_type character varying(255),
    template_keyword character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.receipts;
       public         postgres    false    1938    5            �            1259    17447    receipts_id_seq    SEQUENCE     q   CREATE SEQUENCE receipts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.receipts_id_seq;
       public       postgres    false    173    5            �           0    0    receipts_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE receipts_id_seq OWNED BY receipts.id;
            public       postgres    false    172            �            1259    17381    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         postgres    false    5            �           2604    17511    id    DEFAULT     Z   ALTER TABLE ONLY banners ALTER COLUMN id SET DEFAULT nextval('banners_id_seq'::regclass);
 9   ALTER TABLE public.banners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182    183            �           2604    17430    id    DEFAULT     b   ALTER TABLE ONLY collections ALTER COLUMN id SET DEFAULT nextval('collections_id_seq'::regclass);
 =   ALTER TABLE public.collections ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    168    169    169            �           2604    17441    id    DEFAULT     ^   ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    171    170    171            �           2604    17489    id    DEFAULT     X   ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    179    179            �           2604    17414    id    DEFAULT     \   ALTER TABLE ONLY payments ALTER COLUMN id SET DEFAULT nextval('payments_id_seq'::regclass);
 :   ALTER TABLE public.payments ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    166    167    167            �           2604    17475    id    DEFAULT     d   ALTER TABLE ONLY phone_ranges ALTER COLUMN id SET DEFAULT nextval('phone_ranges_id_seq'::regclass);
 >   ALTER TABLE public.phone_ranges ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    176    177            �           2604    17403    id    DEFAULT     j   ALTER TABLE ONLY provider_groups ALTER COLUMN id SET DEFAULT nextval('provider_groups_id_seq'::regclass);
 A   ALTER TABLE public.provider_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    165    164    165            �           2604    17465    id    DEFAULT     ~   ALTER TABLE ONLY provider_groups_providers ALTER COLUMN id SET DEFAULT nextval('provider_groups_providers_id_seq'::regclass);
 K   ALTER TABLE public.provider_groups_providers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    175    175            �           2604    17390    id    DEFAULT     ^   ALTER TABLE ONLY providers ALTER COLUMN id SET DEFAULT nextval('providers_id_seq'::regclass);
 ;   ALTER TABLE public.providers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    162    163    163            �           2604    17500    id    DEFAULT     n   ALTER TABLE ONLY receipt_templates ALTER COLUMN id SET DEFAULT nextval('receipt_templates_id_seq'::regclass);
 C   ALTER TABLE public.receipt_templates ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    181    180    181            �           2604    17452    id    DEFAULT     \   ALTER TABLE ONLY receipts ALTER COLUMN id SET DEFAULT nextval('receipts_id_seq'::regclass);
 :   ALTER TABLE public.receipts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    173    172    173            �          0    17508    banners 
   TABLE DATA               ^   COPY banners (id, visible, duration, playorder, filename, created_at, updated_at) FROM stdin;
    public       postgres    false    183    2000   �m       �           0    0    banners_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('banners_id_seq', 3, true);
            public       postgres    false    182            �          0    17427    collections 
   TABLE DATA               _   COPY collections (id, payment_ids, banknotes, reported_at, created_at, updated_at) FROM stdin;
    public       postgres    false    169    2000   $n       �           0    0    collections_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('collections_id_seq', 1, false);
            public       postgres    false    168            �          0    17438 	   customers 
   TABLE DATA               ]   COPY customers (id, login, password_hash, password_salt, created_at, updated_at) FROM stdin;
    public       postgres    false    171    2000   An       �           0    0    customers_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('customers_id_seq', 2, true);
            public       postgres    false    170            �          0    17486    orders 
   TABLE DATA               o   COPY orders (id, foreign_id, keyword, args, error, acknowledged, complete, created_at, updated_at) FROM stdin;
    public       postgres    false    179    2000   o       �           0    0    orders_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('orders_id_seq', 1, false);
            public       postgres    false    178            �          0    17411    payments 
   TABLE DATA               �   COPY payments (id, foreign_id, provider_id, account, fields, banknotes, "limit", commissions, receipt_template, error, checked, processed, failed, created_at, updated_at) FROM stdin;
    public       postgres    false    167    2000   #o       �           0    0    payments_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('payments_id_seq', 25, true);
            public       postgres    false    166            �          0    17472    phone_ranges 
   TABLE DATA               V   COPY phone_ranges (id, start, "end", provider_id, created_at, updated_at) FROM stdin;
    public       postgres    false    177    2000   �t       �           0    0    phone_ranges_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('phone_ranges_id_seq', 4299, true);
            public       postgres    false    176            �          0    17400    provider_groups 
   TABLE DATA               Z   COPY provider_groups (id, parent_id, image_url, name, created_at, updated_at) FROM stdin;
    public       postgres    false    165    2000   �      �           0    0    provider_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('provider_groups_id_seq', 78, true);
            public       postgres    false    164            �          0    17462    provider_groups_providers 
   TABLE DATA               P   COPY provider_groups_providers (id, provider_id, provider_group_id) FROM stdin;
    public       postgres    false    175    2000   ��      �           0    0     provider_groups_providers_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('provider_groups_providers_id_seq', 472, true);
            public       postgres    false    174            �          0    17387 	   providers 
   TABLE DATA               �   COPY providers (id, keyword, template, image_url, fields, visible, requires_print, phone, name, popularity_weight, is_mobile, created_at, updated_at) FROM stdin;
    public       postgres    false    163    2000   =�      �           0    0    providers_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('providers_id_seq', 464, true);
            public       postgres    false    162            �          0    17497    receipt_templates 
   TABLE DATA               S   COPY receipt_templates (id, keyword, template, created_at, updated_at) FROM stdin;
    public       postgres    false    181    2000   ;      �           0    0    receipt_templates_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('receipt_templates_id_seq', 4, true);
            public       postgres    false    180            �          0    17449    receipts 
   TABLE DATA               v   COPY receipts (id, fields, printed, document_id, document_type, template_keyword, created_at, updated_at) FROM stdin;
    public       postgres    false    173    2000   Y      �           0    0    receipts_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('receipts_id_seq', 25, true);
            public       postgres    false    172            �          0    17381    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       postgres    false    161    2000   �      �           2606    17517    banners_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY banners
    ADD CONSTRAINT banners_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.banners DROP CONSTRAINT banners_pkey;
       public         postgres    false    183    183    2001            �           2606    17435    collections_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.collections DROP CONSTRAINT collections_pkey;
       public         postgres    false    169    169    2001            �           2606    17446    customers_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public         postgres    false    171    171    2001            �           2606    17494    orders_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         postgres    false    179    179    2001            �           2606    17423    payments_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public         postgres    false    167    167    2001            �           2606    17480    phone_ranges_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY phone_ranges
    ADD CONSTRAINT phone_ranges_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.phone_ranges DROP CONSTRAINT phone_ranges_pkey;
       public         postgres    false    177    177    2001            �           2606    17408    provider_groups_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY provider_groups
    ADD CONSTRAINT provider_groups_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.provider_groups DROP CONSTRAINT provider_groups_pkey;
       public         postgres    false    165    165    2001            �           2606    17467    provider_groups_providers_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY provider_groups_providers
    ADD CONSTRAINT provider_groups_providers_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.provider_groups_providers DROP CONSTRAINT provider_groups_providers_pkey;
       public         postgres    false    175    175    2001            �           2606    17395    providers_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.providers DROP CONSTRAINT providers_pkey;
       public         postgres    false    163    163    2001            �           2606    17505    receipt_templates_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY receipt_templates
    ADD CONSTRAINT receipt_templates_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.receipt_templates DROP CONSTRAINT receipt_templates_pkey;
       public         postgres    false    181    181    2001            �           2606    17458    receipts_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY receipts
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.receipts DROP CONSTRAINT receipts_pkey;
       public         postgres    false    173    173    2001            �           1259    17424    index_payments_on_provider_id    INDEX     R   CREATE INDEX index_payments_on_provider_id ON payments USING btree (provider_id);
 1   DROP INDEX public.index_payments_on_provider_id;
       public         postgres    false    167    2001            �           1259    17482    index_phone_ranges_on_end    INDEX     L   CREATE INDEX index_phone_ranges_on_end ON phone_ranges USING btree ("end");
 -   DROP INDEX public.index_phone_ranges_on_end;
       public         postgres    false    177    2001            �           1259    17483 !   index_phone_ranges_on_provider_id    INDEX     Z   CREATE INDEX index_phone_ranges_on_provider_id ON phone_ranges USING btree (provider_id);
 5   DROP INDEX public.index_phone_ranges_on_provider_id;
       public         postgres    false    177    2001            �           1259    17481    index_phone_ranges_on_start    INDEX     N   CREATE INDEX index_phone_ranges_on_start ON phone_ranges USING btree (start);
 /   DROP INDEX public.index_phone_ranges_on_start;
       public         postgres    false    177    2001            �           1259    17469 4   index_provider_groups_providers_on_provider_group_id    INDEX     �   CREATE INDEX index_provider_groups_providers_on_provider_group_id ON provider_groups_providers USING btree (provider_group_id);
 H   DROP INDEX public.index_provider_groups_providers_on_provider_group_id;
       public         postgres    false    175    2001            �           1259    17468 .   index_provider_groups_providers_on_provider_id    INDEX     t   CREATE INDEX index_provider_groups_providers_on_provider_id ON provider_groups_providers USING btree (provider_id);
 B   DROP INDEX public.index_provider_groups_providers_on_provider_id;
       public         postgres    false    175    2001            �           1259    17396    index_providers_on_keyword    INDEX     S   CREATE UNIQUE INDEX index_providers_on_keyword ON providers USING btree (keyword);
 .   DROP INDEX public.index_providers_on_keyword;
       public         postgres    false    163    2001            �           1259    17397 $   index_providers_on_popularity_weight    INDEX     `   CREATE INDEX index_providers_on_popularity_weight ON providers USING btree (popularity_weight);
 8   DROP INDEX public.index_providers_on_popularity_weight;
       public         postgres    false    163    2001            �           1259    17459 /   index_receipts_on_document_id_and_document_type    INDEX     s   CREATE INDEX index_receipts_on_document_id_and_document_type ON receipts USING btree (document_id, document_type);
 C   DROP INDEX public.index_receipts_on_document_id_and_document_type;
       public         postgres    false    173    173    2001            �           1259    17384    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         postgres    false    161    2001            �   i   x�}�;
�0E�zfn�d>�&��FAKܾ	i4���p�9�����gw���y��0R�ܠ��UJ┒���_/�t"���<Ξ��=�(��ބ�C�c�3�      �      x������ � �      �   �   x�}�M�0 ���Wt�α����J�$(��2�������C�����>�ƋF����nA�u�x&I�t,�Y '�zM�[�E'p6T��-�ǡ�G&Z�5-����Xԃ�Î�R��� �ơT�kW.*����)�M|���6�y(UEm��Lf�)�;�S]f��85 u��V� �7�qQ�      �      x������ � �      �   �  x���o7��;��"U���~�u+�J*�����F"���
!�ĥ��Ԧ�ת�DE������l���sH�@F����ߌg���;�o<K#�v��ȰAbf5Z]]��S!�xz������C��4=I;����^���izU����'�,��0�M����m��k?N���x�~J���$=H������rPI'��Qf+�L��S��������N���{.ԩ��jn`�p��9�l�ي�{��^�����@��|�͝������<=��壥��NDW�֗׾ۘL7�]^[����f}�ڬM��vjn��^=?��Lݕ���r7W�nn����������iT���~���a�|��`���~��D��~;X��mȝ�r����x��ɢCz��+{?�����*.��ƥ���U��v[��������m��o�V6���k,ݎo�5�^�t���?�����ata��� ��j~��|4:��A�ar��TFUjDD��B-��?�>Qk�d����FmD�A[�ab��AWԪBm�6S��G���z�B���{rZw��ԬLe@�.�j3����Z�&a���v������ZS�-�fjM���������$�N��A��,��Bm�6S˅���x�F.9ȭ�3a`[9@[B�����m������49
!P�A�+�j3��P{�Ԓ�<�j	@�,W��Bm�6S��'K-�|����⍟��y��!���`[��؆�a�'Yx��0��(�@�C;�bل&��+X	�l��R�[��%&��`�,�e�'Ge��Y���mG����:�\�*����{�0��Qy�ȓ�7lg�Ț�4�mG�y��ѨEM긱�m�WH"	���<n�O�u�zyr�|n��	�y?��͵���{��`�o&�_|�k]���Q�����}j`@�P,5/�����+2��P��������ć&΁����/���&��+�i���(���@�op?4%�����^�%%hM���\���{tHvyE	>T%���T�SMB��R��5y�*rP�ٽ��G_��(��)A���> %ј<�E���u���9t�*�P�6X@�A*�v���׊�2п ���Cl�NXӢ�E�u2H�o�ΰ"m�B�!(Jp\J`�$�w�a(���<'t���R����(AQ�w��L	X���k)�� ���Zs�J�h|v��PA�uW�8�N��$8?p���c23i�|��h�$� ^TĨ���Q�⠣�b�d��-q:tZ)��RB`�!xGB�ß����pp٧N��.���=����ќ�E	�M	���w�A(�2wks�v�d��P�*U)�1ˠ$K�&Z�	�S+c��x��kP=>sC��.�F�8�Fp���s�ZG�^ҢF�)G9[�EUU���%-      �      x���]�$+�m��Q�	�0�_���m��'�²���.Vy���g�����q�����/=1������������s��ҿo�^o�ȑB����o��ۓ)�9�,<������V)�����_�/���~�%��/��y-}�=�~�%�H;<�y�-�ߕ@�r?����%�<�#��/��v���ɓB|��Ӝ߯q�B4��[R��_=߷~��-��(!��T`�+0~,jX�!R��o�Z���D
��k��ƿ {����"4�vް}{�\���E
���
p��K�}X]�H!���l_ް�Fe8R��yC��QI͑B�Z��P��>��'g��c��.��[�{�lE������D�o5Yk~�9��0=d�^��r���n�K
)OLQ�/o��Q�､�
c�zK�ێ���×ReLU���H����*�����[6T��.�RgLSo��]6J�lc\RHĘ����\���p)�11� )��T�zR�����г阈2[�P�h|iDz�v����z��<� �r9�Cp���z�P�/6N��d�%��)g�ş���e#��OS��[�<��I!�z�%���ٞZ<)��nE��[�1(�l�B&�4�t2}�G�j�"�<�ҭ��A�k�zK�B��Y����a��T�$�&L��A1�mk�x��HU�oo_���D
�S�z��9�V_)R(��Z�|��	�R��[�P���ܵo?<e���"R(��E6������^R(�Q[�0Dp�}$�b�D
;����4�}��e��$2�d��L���ŗ*0�|�s�.��l�"4��i9M���Hm:/"��CY]d��;R�yar�w�(�R�K
�,L:��4������eb�F�i�w$<�d��z҉)�ܺ����q*��95ٔ��o��"�_�ҷ�F�]���n`�j�)���q3ge"��b��N%�ȞR�G�%�&d�#cf�H���Q��~oB3�@�B�s�x�:冮ʑB+sz~�N�J� �Z]���srmcJ��.K
�-̱��7�Qr���B�s�zy�v9��ܐS
����>��3�B�xL��<��>���"��b�A6g�A��D�#)��0{�9�oY���E
=-�y˜���r=���-R�ya�Az�8�a$��B/��y���1�l\����ă�z"�㉵�ŗz[U�^O�?�o�t�E
�/�緡\Oݜ��:M�8uY��!sn� �*����ܟ��p���1��p�d�fu"�s�u�ܫ��$)PZ��ݭŚ��E
���c�:_�kO'�E.)PY����3t�����H����&���?!�c)P[���1�𐽠뷑K
�F!�6�[�J�H�ha�'�[�(�tT�@�rHukT]$���,E
ca�Bv9b�g)R�zք�E�]��)�m=K
#-�i�#�_|�f�%���|�Q?�|0�f�K)��0� ���Q��Mh	aԅP?z8#N���١\Rma���o��`�fg.R}b�s���2�'ax7�� ����(��ݜ0�Ƙ�ӱ��xH��bu�"�F�I�����`�_�~�%����~<�b�]��V�'��T4�}�f{W�U ��9{Gy�>��K{Z��ICc�B���)5sd	�
��t���R˦� R`|�؋�X^��c1W~̙�H������v�m;�[3�C$`�%���ɯ��zlv�^�c���[���b�dn��bR�Xv��X�F�H�F!u�mn%P/�ە�$`�"5]	���Ƚ�_l*���I�ն�����#D�,�P5�Ft��\&W�����^�E�\s��V$`�K:�6���2�;%`���Ѡ�ɣxX4���E�IC���-�<VC	����h��xM��f���D
1mR�X̛��m���H�Ɨ��T��e����H��E�n�_�Ԫ�L"�y�RV�������%[^7܅m�|��d��l]�z*��U�X�xH"�cZ��X�_��n�]	K�/R6ow�eG��r.N=���G��~y�);m�2���E��[��b�$Ү=�ol榗,��%�mc��F��b���fI�&!l)~�j��9�l~I�TB~;h�gs�G$`�Kj�vil��0�l}I
�m�A�d�I�贰U�+#.�;"S$`���#vm<,�?�#!���_�٭k*�]��9��X1�w�h��Z)��\$5.���l�<�iaE6.�%�P���I���T��0�۸�N0�=�H�7A��u;�/���[�@$`��j+[��Q�s��*��}5=wl*JІ�o�j]"��eN��ޠq�!˛	ؾHYc��m�f �H��"U�u�$�%�v�]��I'�t>|��Λx��.)`>7I�)l�bc=�'ڭvI���$�hau���a�v�]��1�
K*V�1��H톰$Pabi��������*,LbN&uįT���&l�,_����}n�@m���t<�����L��؅�KL	ܾP5��吏�bZ��EO�HF���ց�ۇ��]:�c��Ǝ/�Qj�{�%��&)=<{��й�����h�$�l��Ǯ��������)���$�S	i��-�x����j~AISyWˣ�G|P����v�����#^�}Q��#���4ӛ	�&������D3K$p�B��]�N�E�֚90�,-���uG�_�L8���T�\��Aa��fH�H!����[]n�d�\ 	�(����7��9(ґ�;.��6�of��:l^�YP����q��y�*�m�M�k��"�]Kw[��S�˝�ޏ�6�郉l;���N��9����E�oR{v>\���kW�T ������?.Pە,L��q�BjMa�����U��IH=����T��0]|��ԓ��X�`���Fd�ϱ_:ă]7,�Ϝ�lҨ�`׃�EU�na�lyI5��}nX���YQ���BJ-�z�`㓺馋l%�����J�>�H��6�}ֶ1y�ay)�j�"K��469�ֻ��"����zF3~H����'�b��0�{A�)j���L�3W�E������m*��ߩ��-G
|nW@]S�w-p0̵{�@���x�١V4KsB"�E@U�k�N��ӣ	ԺA��λ��?Ƒ@mj�^1�]�=���H�v����Q	�]�K
|�z��Q�J^�ri�,���t��N�SK���ZR������.�2#�DvYV�q�u?�����1Ӫ����Ub<�1~p*a�w�8Gv�,�L����E�3����[���5{T4g�r�fL���1*�R5S�	�j���G4��
���4���L1ً�"�J� Ft��I��b"�:^������Z��UY	)�����k�|��Y��H�F!%��.v��K�&!�¦�a1٫�"�V�&Px���R���E��jl���ۜ؊l��X�w)	C���K���R��[��i-	���d�q>��5���KL	����j�_v$�
�K��ִ�v�7�䪙~�H�@���VA��1't"����*��Q[y�e4X���)�p{��b1W�D�5��{���@#;�ǫ>��0���[�_�n�Ku��	{\jj��K�� v	65F���ٮԩ��_L�o���]�p{no:%P�eM��#��G"�:^P�T�[�G�'cI��*��M���e�<8�QH�ێ'd�,��9��·�2��u��>�w���lK��44u\-���X֖@-R5@;����%P�imZ�q�b.��j[[��$���ƾV+��ܫ�ֵ��3�E�A�>ܰp~��-�쫤��%ū}�h��o�d�����=�]K
�lP�T���:&��������V���`��m	�􂲦��Q�<�]K5(k�unTW5����E@ES��O�b���k^r�w=t�+����jP�T�][�dM��k\����W�-�z�#�*�E�^ߍ�uP�X�@�:ۊ��;cyo[
Z^��^8�֣�8.�uI�ӧ����գ�l�(n	�$���^��֒@}m+7]nˢB��`I����u�����L�b�%N�1A    �jd��<\>�i n	�׸�r���i����K
���UՔ�T�ێ�'�j�/"��W��vu��HV�-�T_㪺�v�\�U+�oK!���z7��q������Q@���P��f-m	�׸��500�_��?k�zK�.�"x�k�n�1�M���lyI��oc߇��lml	�e^T�illu\��)O�֤sK���\rV�h�u
jK��T5յ��l����􂚦�'H\od��o	�e]��3�|*B��kI!�44u<�P[NpR	�(����S���a�I!�`��~W�f��$k�`K�N�jzє� I�w����.	�i]S�"3��pÎ\.-vI��E�m�R9Wa3��n)���8��l��<��+@V\ԖBZ�-ӳ{�6�Ux�;��گ;P���.�B��RGkV\�����:�V/�X1[
�6j;������
`F�T�l�ˌsi닉nT�\��ɮ�����k �/���Z_L$p�AU�]1nƐj��������z��{�֙�-�����v��F��@�n?(R\��L����-�+��~������Cs��/�B�qPMs�í5��ڻ�P���=g�~+�_XݹH�ƃ"ͥ+7π^s-L$p�A����[��o!s�/�bo]7/T�r���ޝH���>��%�"p�Q�*YѾ[��6���ǻ��>�N��@}m-UM����T4x�/	�������#Z���l�]o)��Z�������Bޥ��T�\'ĕ�Ѵ��AYS�@_.�Y�.�)��4ׯ�Vs�r��kgj��I�};�㝭L�[
�ɂ���D�sa1��s�B~��t+�~=����U@}�L�L�O���B~��ts�RŞ����Z�����%N�b�bKWl����~�%N�~WB~�Һn��9�e�0��^%�A��_zr�h�9��biC���떓{^��%�+�6t��������B�biC[�����z��X��_m8��\��je�R�Qlm���[����r	���ZK��\O�kj�N��킪����L�5�{5�.	�i��C��f:�-�;�5׳��by"��6�4��n��d���koM�e�m��'ޠr$p��t��~G2���$p��t��v�¥���N)�T54ׯ�ęa/�;%p_{������=S��E��7�c&yG�P8�xk"��ڛ
��o���p͍3�BN$����]�Q�u]�BNCP��~{�<��To[
9o�j��=���K{X�����M~�S���Ò�}�mhz���W.f6��aI�fA%���t.�����-�ʚ����aK�VAU���3L��9	�&���~�mv�B�]0����:(�y��H���t[H����t�E
9A��m��j�'�\6jh�o�
�
��R�ElM��x��S�9��ؚ����ͣ,���_wI!15���/]:�h���25�O6����_�wI�V!5�����R7���l;����񰼡c��
iU"m<ܰ����
�B^� �6�� X�h�$���2��45}$��]~ȔB�����.cpA>��H���4�5�
���#���:��n����W?1�f΁D
y������StqY^z���W\HOj3�|l��vʫ Z_N����l�(J<�q��WXHO*���{��P2�MD�/�* �
��X�>�,�����͗�֘�d}[u��s4*���:�������"�|�/���B^�!L*�\��sD����?�p���lAOd.�r�B*[\l���~�%�܊��ƺͫ4��_��}���I�3�y�uK�.�B�&٘Y^�X9��r�E�������!�7�fV�j.��.i���#�7Wo	ܱQ9*n�ޗ��ة��H�-�Ttz�dG��W��Bi�x.��4�D7	��W��M��(mn%�nި�j��}��ݬ�\�UB^1"������5ʖ���.���5��7�Q��e4�
�bi���MŃK�����H���e�ʇ�1�%�!-"�KE�뵅�y�����بw=ܸ�ؓ�B&Aq�G=�\�Ti���[�4���Í;ȼueK!S:(��{O���h%��R�$�vfQx��-p��l��@}m��3w9��a�nn%��kk�xM��5\���gK����m��u�mEs�R���5���}r���v6A��kj�������.���g]^vJ�.C�cs��8��P4q�ﺤ����Ԭ�k�.�\�8$�B^�!��|xp"Q��d��)�����i\�w3���B^�!}���GϹ(ŌO	���Z���7>�m�;�
�U0���q�{�=�B^q! ���N$-���[-)��9s�D�̇�V�o�%��Kԍ5������3��kXQ7V�~.�x�ȑBy�4��X��oe ���a�%�ݏU8��]�5�� {�����_�ת�Jv_������%��ZjW�C��V�C�9	غI��wnX4���.)��	�?�`�s�F�e��\�*��͉���#�9_o5S�o	�״
�������I�$W$`�&��FX^�1��D
%
I-���v��l�W!��V)����9n�R��kYE[V�_��%{�W�E�5��{��X<&9
�bX]���>p�ۑ��&[
%�]qn�C��������SV�J�ĥ8�! �X��a�GUk�_��E�ؑ�"���U�T��7�U��/m�6D����Ǭ�|lfn�-���Tw2��p�Qv���l<����v�?蘣��*�i�H���;�fMVC)��7iT���(;SI8���um�^�0.�ͫ�D	%�FO��g���	�9g	ضI���`1�fw(�]H%��]7lB_j�풀%!�|��-�� Y��}m��� wn�F͜"�J>$��k2�ʉ�c�.\��q���[s2��Bɯ�щe�{�E����%�������{RΩܚ�~(R(�(i���5��r�
�b`�Ǜ�O�$&V2�-�*��g���^�����,�B�����=G��ߓ@�"��~���ґB�b\g�zq��l���}hEe���mU��/s\Ak����J9�W���e�v۴�j� E�炫�/��@��sa��;5�gx_�e�]��Ãs���(W�̄H���5�9��9���m`I�����\S�C̨^D���@m/�i�3�Eі�Y�"���']�N�C.J��-[�BY�!�s�*��}��'ch��"�:^i�����'�a.��J}A*��N7gO&��H������+r�~=\cyP�?fR�-�^�n��M f�Q��L��%P_��c��x����.s�O$`_��Jvc߇����E	�
�����8p4/16�X��}��Ժ^'o���3�ݖ�]��6J3�NdL�/u��Pި&��nؖ�\�)�7,d���^׶��e4��E
�)���t�v���M13P��2I��NݢP���K6mRVu۟�ă3is�)G6�P�t��G���o	���x��ʃ�Ӈ]^�By�C&*k�}��Q�\�	�vP]s�ǁ�W�b�K�)n��/�]\1'"�K��wY��G�|�%�;Jׯs��8�#�˒"���~��p��Z��؋n<���ɫ 7��X[��ˑ�w��4cD
��j��sL����<p"���A5���b�sv�Pz=(e���w�U�vX�H��vPYs�-��L$p�Aͽ���˨��>#R(��G=��N����o	�qP��t�8�:z�wJ��B��K���)�sr%p�A%�u��c�y):�F?���3>�i�@[���w{C�DٺgK�{�ޜXNh��������!�d'6	�mog���K�\��N��X[9;n��iP��h��	Xڤ��zW���l�,��8���WjpT.��ߥP�"��.X��5�E6nR�u��N/�_O�t�E
e�CJ{����͗��$`�!e��N�G�v3ZF$`�!U��z��3���]���N�swl����d"�6IM���m˗��"�2�!��m��J�,���+aI��!E����u�GQ ���ڹzh��B}))�}8>Tx]�����    `����X�P�tH��y66z4]�W4���r���̓3-��0%[�(l�|f�W3PR�O=�X�?Xe��tc%zK��C�
[,-���JI��C�����Uv�-zR�ϱ��4��ffY�<�}PWI�>����fz*���*�Q�w��P�"��?7�(��<�R�1�P��厳l�u���RR�1�~��m�;�~ƖB�����ޮ \e�0�/%[6I2jN��:��l=����.�ѳly�o_�(��v8CA�M��>ۥ�P� �b�t�x����U���;�LI��AUͽx��peˮ�%�;�)�m��
g너�BM
u���f:�0_>|�N	�xPCqo3�U��%�O��P�P��:���e&9�����t%��ƒLTR��
�,�a��>��$p�A��^V,V����J�TV��rK�=�;J�o8���^�AVY�uж�%���A�-.��q�PI��A��zV���osP�UEu��|�#���׳a��|�H�ƃj���Գ�j�$p_[��ّ*��}x���"��B}cJ��o�|?\^wD�)�7��QQsݮa`:�{QLI�փʚ�5�Q�D/G�P��k�O�-+)�7��Qgַn�Q��������ҵ��,~"f���t��8������U�sE9R�E���7�f�}P���އ�O<��-)Ԓj(n��Z~`����-?�*���x��ֲ�j�c��p�k	�ckE��}�y �26�B-�ڪ��z�P�Y�ݕ�����Q���6��6�\�'56wI��cmCsoЫ0��kMJ
�n�	f�^����
�n<���^{�0�ߡ�Jw�[�cEtƊ8����Jw�[��Ct��w�{�%���-f5E�1��f�QQ�bo*<��m!~�[�/�ْ@k��z�=�
�\��-�*q":���r��ێM'R�P%L$�Ln��J��5�=�H���m���N��k�D
�m�~�[�*�W1'�"�*1"��z�ʃ��O�D�E�P%F$�qV/��%+����}m,7U�p�&L�����}M,SW����|߫պD
UBDJK���~�aw�*)T�)z�\nX"�zg%�*"3�������]��K
U�Cx����lO��'R�¤�����,�Rs�'R���B�;�rd�H�JlHm]S�1ݞ8ߑB�����g����jQx��t�E7oeť���>�t�ߑBJ��2�/��v?ܸٜK-�z0M3�n�4՗|*�JL�ԣ��X�Yv�X~��+)T�	a������Y��9^%�K�4��"��=Vs�#R�¨��wW����)�*)P�Ի��Y�q1������WKw{ȟ[7{0��MU5׫��+)�W[���t=8�TN��a����W���&���*[˺~��j�/F:
��ֲ��|�	|OT��*��m"�[C��	/;�P�XZ�m�����nI"�{,-�P����� %�:J���{�g�ܙ)�ql�����1��H[��Z4��j|��9�	�ckU�v�!Q�}�o	�ckM���˜V��78J��XZӵp�u\e)es�X$p��u���X�Y���0wPD��Z���Qxf����H�k�Cs�=gen��e	�cm�{2��S��>䪤�����xN�L47�^%�����u�ʼ����%�{l�t�p�b6�8�k$��5�}����Is��H�[�}o��(�c��7#��چz_o�[1��j;����6�Yh���"������k���v��:���wo�~8,�ܚ	�qP���8�U8�Z/%��j������l.Rh1�n�nÜ����iJ7T�\�2#��������ٜ�����U%�[J��뭟�=�)�X�G�z�3�jz�"�{�M{���+'���	)�x�-ͽ�A��3sAS$p��io::�4'�LŜ���7�OGǟ����-/�ZR(ݟ9��(L#^���=���]8�Th����X+	�coY��۵��p~���&��޲ng�콫��jG
-{+�=�{{h��ĸ�AI��coE��ro퓞a\̠$p����}|k�����E�BK�ފߊW��b���!�BK�ު����o��\�ےBK�ު�_g{�{�CD
-+�����oɔL�L$p��U]�ζe���t�	�coU�[��(�yo��]��ު/�gǵ���\��B��ު������u�J��[����i�p�h.ϋ�7=ӌ�L�}�腻���7=׌��}Wᜍ+@���~=;�Z�U(�B��޺��[��Yx${1�UB+
��͙qs����
U�����z��Q��D"�V���w�w+�|����^%�rl�k���e�3�ߧ�Z9�F�&��v�"�o)�rlMϷ�s��Q�R���NI��vPUs�ڝ����A$p�A��M��绁��_J�*i�W�|����!��t�:s���1�()��P��߇S��P����g n~Jf��H��tPCs�=Y�{���SJ
�nkKz�"9���é��R$p�A���4;�Z���B����U�.Ga(�7�	�cmYׯ�Q�pƙP%�{�M{�ɉ�T:ɸ�GI�k+����$�}����=֦=��x|�N�Ds�U�КB��଩[~̍��=���ԓ�I�0o����$p��iO�=s�R|��+Rh��[ӽ����n#��Q@=��u-��㯲pc���H�k�k���gB�l�C�Z;�F��t�8���yK��kmD�̃�Í[�=��ď0*i�g���� Rh@¨���UT*v�H�u����>\�=S��:K
MbH��y��9��u_��M��י����Б�����9�@*���"�&Q$��Qw��>��:�H�փ��� ��Fs��UB�H�Zp���_��T@=�v�~��0��l�_������/�n���J����d�|��j�"�F
�ۮ��6�Ll6�"�{l�t��W�	=���,��ֆ���R�p�o��"�{lm��uN�q����+Rhtl휸�n���	�mk'a�y�pkd�ӑ�m��a8�6��gz:"��J�9ÙYpƀxi�S�hh�W���f�l��T����4�F�%�&�$�\�}������[ЕlR��[R�U�����$�dP?���p��Ǹ�CI�.S�b"�~��3��M��%`����;��xȗ슫����-;m���8����w�))�G2�xn���~�3~�e[
mő�QIV����usʦk�%`��������L.�t�Rh+�^�E����m�ivcXR��F��x�ߗ��iG
}�0�i����Y���9�-��IE���/���8G	}����G��å1T���~�%[^�D�����a�l]$>Y���p�r����o	�ei�H�`�åjgđ'��7Jƈ�p�v�0Ek�W��W�eM��c���G3�dK���*�{���­k��УB��.\��X{�[7�����6��vw���W�B5ͽ�}�0�8���R�+�d������Qx�Ԭ�U[�T�\�~����rK�փ��{�>���	�)�x���vv_@��sX{P��Ɋ�|��ܹl~�+Q@=��t۽�۹l�fT���=��t���Q8E�O�-�zR(]��� .��Ś�l	�ckM��}=��K=,)�tl�i�hW�?���M	�ckM���mȅaJf_&�堒�z���T~'�S�����z���;�)���h�gk�َ�����j�u5e[�4Y�.i��0���rK���ҭ�~��{-F�n%��*j�gmT�j�5D
=ǃj��Yu38G��s:���^�'�kaI��ҵ��#|��<�z֖B��ִ?���Nl*�t�D��Zҭ�sɅ1��l	�ckI��=�1�QޖM�U$p��e�E�{#�V�A%�{�-��{�i��:G�X[����ȅ;k�qK���*��1v�����D�X[�}��?���l�7�$p��i�������ʁ�$p��U]��.�̝�-�{���u&�(\���[I��mo{R=ܸm��{[��j���ǅ�c�T����~p�v�r3�G^T:����Wk�=G
���ʚ��f�oC�kaI�W����    =�YD	���굱^�����붵�����Ӈ�n1WD7T�\�v������-�k����qcif=��5ݗe�/˜��L�%p���,�O8r�Z�9�)�zl�����'���o53�B��ڊ�$��Gf��1���=֦����]�����H�Bo
U5�n(�J�ⅷ�����2�W"�{�M�_�3͜Ü�
������}�P9��mS	�[k�n�Q�\�Vs�rK�[�o�Ǥ�p{��})
��Һn���a.���Ŗz;�FzT��s���W�����~�1��le��ce�{�ۭ�,:)�D�B�
����p2��HV�-�޷���g�!�ص{�%��*i�g��j.j�n>���w�����k-�H���RQ�Y͞��n=(���|�`:�W�n;(�Ί�;�OJ��ݘH�������_>���B�z��R���#�#�/՜���8���^{����R��I�t{p���ƭ4J
���Umo��]���a��n)t���4��v����B��)T�\��q[7�E��jg�ٷ*��d��#%�����}�v?�ʅ{1wr_�v@�\k�܌��n?(]Μ�ǰ�"�����9Es�1�g�i��-)t����:Fs|�ʋW��UJ
}(�-�㛢0zBs�S$p�AUͽ��ʋAfd��B�ڪn��K��+��(��ck]׮��U>�b�!��8����v�ilΥ��W[��ֺn��<(\�F�*�H��cmC��=�n�X����}��|�;R��X$p�����^kh|���;%p��uݧw�O��m�^L)УP��߇��%�G$p�A������.�lI��tPUs�z��(s/���t=8�Y��n�>�n9��p����8�H9����՝Uo���Hඃ�{o�(�	���D
tbH�-���\x���D�H��9b����� ��ڪ�j�>q㼣���H��B��z�!���Y�H�kk�58�N��G/ջ$p����uș6N
�/�lI�N	�!9�
�Y��n9���^��'�K�.)Љ!!��K�3�\~�顊n;����^�}��K#�����z���L��%p�t���$&4źwkK�N	�^��^^��B R��P?���Kb>�3���54׳7*�L�H�N	�9{A(����K
t�HH��������Ò�=��w���jry��H�{ӻA�̅�Rb2πl	�coz.DNl �w��^�H�{ӱ����uNbR]	�co:&��9
�'[y��D�P�����;�_�H��B����_�����P����*w+FY��J��%p��m����<FO��H�k�;�t�Åus/S�@'���n�S�\x�hz%"�{�����̸�x>�A:��������s�`G�X������_z�%:�$;��|�gyA�Z�XŒ�=���wsb:;�s4��o)PQ(�ݜ�+��H��
�����9�����r���-:q$�c/���3b-f<�H�k�>59�/(�+�3,��=֦W`�Y)�ןb%��R�GBz����OQ8���>�H�N	uݛ��yr�̗�9���H׃��6/Hf<�H�N$	�=7's|�һ��ZP���n��N_�޳�-R��P��9{y|=��{n"�{�M�����(
���	�cmC��on��c�H�k�}��&
c(�q��g�ޱ ��W�u)Ў$���Ǚ	>T����H�v$I�L�Ϡxܔ�٧�n?����G��g��-ڑ$]���N�{n�X.�lI�����{��ȅ�M��@M���n�=p��hG����}>8�:
sD��?,	�tPQs�^�b��;K
�cI��<���d��6�-��$�Q>5��;򓭌�[
Ԏ��~�wp8Y2g�"�{����GB�V3�hK�{��.�/
G���I�{����}>.Ld}6Q�cmM���o��n;VtK��B����C%��:'+�Ė�=��u�{�չp������@;��Gݫ�{,.
����a��@;��G�۝|�\��0�
�倊�zm��Ѭ��[
��Iz�}��m8��x��%��m-f]��H�ħ:{��I�n?(]��>=�N;K��x�u��ѭ\8au�N)Ў'�QE��x�#���l��˶�j|��p�G���lI�nk�U��|�sTÅ;%p����vw��ra^���wI�k��~�������aE�n){k��9}/ߋ�� ��7��:YU�p�����=��t�p�E���.m�R :�ִ]�O%�p��V�.R :��t�uF��i�k�`K�{ӣ��W��b^��@C���z��+/�;��޺��{�,
S�hbs��7;��~)G3+ؖ�=�F�~�ј�%c��
�v<IOz$vN��(�ni�:l)Ў'��$iwN�r�6�鑈n;(ek�Q�b�K�T��{=����!nK��A�zp�x�f֯H�v<Iק�s�c��Z��R�B��n�қu:sKa�x�t�޳/p���sD
cǓ ���G���5���%p�A���[ƔϚo	�coE��<����-��{��L��`�����Cn)���[��[�v����;�[��[�v|��ʅ<;�	�coE��N>��/�u�0�co]��3���o1�RQ���:��0��ɢ�(k�W�/O��K7T�ܻ��W��n]z�%p�A5ͽ{�(��Nl)�O���Ay�p1y0S�l	�zPj��N/ɇ㨘��Ha�x��;��P8�Ҭ�-���I�>�ֳ3B�^��մ�0v<	P�����".<Z�NZl	�qPQs��M���D
#)��_�C͟���	�co�C�N��g�EkolK�{ӽN�G��0'^���T�H��T�k/��K��	deU��堢�z��skmvK�փ*�{�{3N0OQn)�M������V���E
cG�t}NHn\N�z�N	\:(�K��Z=
�:��N"��t��O-sa�,+ad�o�x([�c���n<(����?��n�nm)�M��jn�K诬��-���k�}�/����6��=֦��z���¹�y��n=����>��U%񱚃Hඃʚ{����č���n?���^�FtJ�*�Ha�h�t�:�
󥨞Ǝ&J׃���L_G�0�B)��Ό�Ɋ�{0��U=[���6�W��H�-��J��ٵ)���d�U@�T5�ޏ�u��YQ�[�T�\��V�zV���=���O�=
�9��u�tKa�ciU��{�K��g�b%����Һ~_g��s�בE�X�^/�|[\���%p�A��,�j�VD
�TTV1\K���l[w[���6\k�dϦ� R;�(em������I�
`��u�q��O�Κo	�mkC�q��y1.������������n�M�b�Hn	�vP��:z�c*��D
�đ壓?����k�"�KU5���*S1#����(�vɉ�@���dE�m)��PQs�p�Ŷb��"�*k�}�Ò|Zˑ��q$@����B7�VD
cǑУ�=z�q�����#�堒�z�˷�]�aI�փR���I�pKde�������z��R6�׶���}rr3�p{J3בE�*j���8��9���8����w�	�=)��PYs��m�q���Ǝ$�}��z�p{��Ha�HJIׯ�Ty#�ZY�Ǝ$!�D�~P�k+�饋n9(]���_?#r�6G
cǒ��RIN�J.��ov�]�����z��,;�B$p���T���`�	c��)�~�-���̢0_)c��"�{�-��଑�߂n)T��{����'��H�{�?����5ǃ�)�Haб7�/F��
�gܸS��[����(��N��u��=���co��a>�9�5n�{+�.��"���/�w$p����"y�q�0O<n):������ �/�[YD�{+?��}�@aމ��ے�=��b�(;�:
���
E��>\��6{�)�KBzM��3����:e�%p�Ae���/&���O.	�|P��gj�p���wJ���*����Y�������;D1��a*��J����(�+��.	�~P�v���zD�+�tP��9���)e��_Ew[[ѳ�J�z�|1�0��E
|�a��    n`x3�v�H���4����U�ÞǊ��tX]��Jc3�Dbp>,��tg����`Obp9���w��ۯs7]�\+i�W<q�29m����~T�g����6�����}tg����憩H���U�t��Bz̰�<+k�׎K�t��%���p��X��l�����sf(�[7=@���j�[�H�P9��KW���*�_�f�("1�X^���b>a.؊��cyMױm�y���	jK>��u�Ӓq�d��XC�թ�d�_�W�n�c���cu�Y뎳����LgM$���9{�(=�y`�"��.X>La:�"18��'��Py�pKbp:���^E�*��|-��a�p"b:���\�Ē\�h�gT8��#1��1̞��U6wPEbp;������W
_��%1�V�`�*0���!5����Y?���f�U�2��$�<6K�����:�+�l�pV,]�Α��5��"18nV�o��Jc�b���f��f%�J2S�l������[���ǵ| �\K����.]̫Dal=$���]\�e�-1x۝��.�
�K)"1x�]֭8;{]�)3�#1�K�b/��8����&��ai���D)��_آH��߇���Ʊ$��j|�h�����"18V�`�M�Xڥ����mu:���N�#J�f�~�%��*�}:��cN�E
�:�ͪ��1_TlN�Dbp;,U����!�|��S��+j�����d�%�a���GB�Ի��$��a�:�ߧ���9�	�zXM77�h Jw;��kh��ƄI�uʖ�-�ꁴ�@�Vl�^��aiq;!�T�yrK$�ӝ��
�K�P��$o�ӹ�����G��g�f�����}rB7Q����2��C�����C�XR��|�U5���5�TĔ<�k��<P�3I�#�K�9L�k���x�+i���qJ�H��!��a��l >7r��%18��xΜ�{���\�i�U�4����zH�M8�����9����꒶:g�|럙HK>v��;'�'�n�1�	�|�N�wN�O.Mvͫ0�X]�M��S�Wv��-�Ku��l�p�+;���|�.ksv��3�ຼ��<y",=EpR^�t��]�Kb𱺢���o|J5]n�|���7v��Q&`�@"1��]�v�D9�գ^>ޒ�<��Y��N�Χ��I����cwM���'bp��yOʖ|��v���P�^����x�ۺ�L�ͨY� &��]�=y`�9�n�bI>�G���w�4��hSa�;�]��-��53�N$�#݊�3h�.v�$�#mЎ3���BMH$o�����=>|�y�R$o��!�x��'�6�Ԉ��~XI�=�C{2g����&��:���sq(���qX��^�`�4vE
|��a�61�՜y��Z<���aE�Z��1[��-18V�����f��
͇�������1��K�����bS���MViWa̘�{c���ƶ�?���k�<o��m�Ζk�{�n`���w��}����~��9�Қ;o��tXM���0���k:���a骸{l\��7el)��V�Uq��ҭ������xXC��w�ri��޶�%18m����������ؼIgQ7z7 q����-1X�n<'d��6Qr/�%[bp=����=�F^���-1�V���ܙKcbh��n����tU܇$.]�(�W`(i��]�f��(
c�!��;�ll\������i�K��;��[����-18V�`�{�d-�m���~��g��
:���f�*'?��,�r[���rX�㽷F_�T�`�#1�V�`�*0������ms�h~p�x��Za���a�7�g�Ci�։�-1�Ks�����e�Kb�8���^/1ڌ�K '�R=E�O��4e�PҖ+k�*`��Yq�06����D�֛���%���1�=E���:�%�I��5��l\� *���]Î��ҽd+��|�nh�o�p�QM��U{��l�Do'�S�#(����&��J����n�����Nn|�}������wJ��M�U}8�;.M)ZqK[bp<,U��S��S+�dKN��4��ţ4,��Eb��Uwg��|�v��Sbp9����.>r�;3DeK����x�2��au��-1���`��K��Z'���ݩM��-�si4M+�ΖL��5ثc8|dŒl���t�sˡ4gr5�"\K�cg��1�V��-1x[�Z2���a�o�wKbp:,5,9k�(�z�0�-1xY^{�ɻ��U�8�i��4"1w^��<���Z���M.mɜw�
S�ɵ�N���:0�Y����eq\��y��>n�o2o��c�����^Z�|�O���de��s���󜃧��\^Ⲻ�W�*�P��Q;d뛉��xP?���M��˖��ԴAۀ�Å��$���H��5���y�5�7��[6����S���0kW$�փJ�����	���]s�Ae��7Ѱn��s�A�uꗳ�]^���uU�5zԞ�3{[b�47yܑ��;�n;�����V�!sX�����2�~�q;��5n��頔U,����?����-17�ns��G��C��[�on�^�����	#R��9������혲^�Ò�+ֆ^Xq�g=Q��[��ܾQ]s��-��s_{���#?x܎ك�����eo�>���@��@��� �喀�T4�����!x�;"s������0�RAKblzI�ylt�ׯ�$���47�uGC�o��[��k!'��-�T$�V!鏖�o���d.����&$���©7sKG$��Uŭ��r��;%ƒ���ֻk��*��*3k�]���8We%s!J����^T��~_�d�D�� c��:i�Wmܮ��0T���1���r�ʚL�A$Ʋ����|�X~ə��4Fs�W$ae..n�y�Ж\�U5ع�1s����H��+=�*��q�������eU�>�sd_����Ƈ��s���DGxF���[��.�L �%Ǘ58�ỏ/�xIN��Y���sf�f^��%O��ƺ��ȼ]fK��S<�70{4�3)��6���.��j����Jf�.c�$���,]|��'ih���a�$��XbRԕ�����a!c�"E��>��f�z�R��ɋ����Ps]c�$U]	_>�K���Dbl���+��'k��W�o���II���X>�d�p���2IQc��x�uhK��Vƞ��fK��̭c�;�,�����D�Ȧ��icI��T�@G#����ia�Ch�}��$c�����_z/��0��D6.�k
�C���%�NK��J�)4�7(Db촰�M!��������.���²n\��ۦ��~�%1vZX�o[ܖ��Y��[b촰�[B����Ƒ;-�귭��qƼl�s�%�N���ꗷ��(sx���ʚ~��v��/ot3zB$�N+k�Sl�Ƕ���LfK��EJ����o^l�s'c��5�׶/怞�\||�Nk����r��K�.���%E�uߕ����H�-�����8�Q��x��UHqckw޶��cU�H�m�D�}0��v��-1v�X�CNs;N����lLw4mD�%���V��-1v��H�mBS��풀͓�u��]c蟜��m���ƺ6���m�F3NT$�N+#������+���n����H���%�^�̏[b�2�-��TB�]��0t���U0��*�!�����ƆpƗw��)�]$Ʋ�E={䇱NB\��N���HQc3Ox�X����R���NRQ��m�Ga�_"[^�~��c��Gs�#c�"il����1,��i�4�~��p$��E�X�Tj2��EblY�_�{K��ݷ�X�2>�A��9�4ٮ�%1�MR<�y\�[%�T&�U���"��]���*����b��Z���m4�H��T���8/�e�"[��m~�&���-��ظH�y�k�N�/�s$�N�k�6�W�<l�no���ؼH��J��d�n�"��زHMc��62�Pn������w���N��xc���5�8�`y�R��    r[bl_$Yv\l�ɓK����6�e43���;���X��'�D���X�������*c����X\/a���<�%02-�2�⎹c�gF���ؼH�'q2�ǼwsK��V~T�;8r*ؠ�׊�غH�m�;2�,e�C���iaU��c�R�%S3��Dbl_$��_*��K2��K�����i��yv�H���'NqM��o[/�jl	ؾH����8�9(�{{"16.���ba��b�ɉ�شH?�~_ۨtseQ$�N+#�����v����[I���ޣ,�3b]$��E��/���b<v%,��m�4�u�9!A{�p���6���8��;%��"U�ug��0/{�c�"��bp��u/��4����/�}�.+�c�����v8Xΰ���ZL�c���)??�?��s�w��yqԬax�m�ё���-1v������U�	�ڨ�-1�.��`�Pf�2[P}�S�%ƶM�I��_	��i�[b,ۘl�Olz�q��ft�Fo�%��$%����
��Ѻ�uK��T4�[Q�-�1�[v,R�Xo��e;&2�1,��q���~�du4���-16-�º;z(�85�mdKbl�$�n��8�\6�TGblY���c�y���7�xc�ʒ�(|'d��6�����V��^*_�Ί���%�N+�[o�W��ڭ��[b촲�5����Z��"[b촲���~1x�elXR��I���n�q���B[b�2���ܭ7��'�9,��������/X8��*�;���Jpw�,�tkw�Kb�2�ې��{.;S!8c����<}tx�Ú�m��leY�(�o�0�i_��%1���hlqW�l��m�KǶ�܉�c�$%��b����2D.	���;�c�s���8IEcݑ����"16��ɑu����'�j�k�3B�B"����g,�Ķf�[bl�����J��<Cv$ƶ�c��Z[�[b�2�X�x#/ʑie"1�����.�)1vZ���+n\�Y
�9D�lz��Eg�X��-1vZ�^g.nh�m9[Q	[bl�;��b��c��鈵�F�q����޷���gl����'[c������(�8a�#1��[8߹#1vZ���Ã�?�e[NVhƖK�b����mEb첲Q5֫������ ���;v430vK��V��%�z�p:1�%������qYx�V���;�,���䲥$��-�yIz���ȋ��O�m�-��ĒIz�����1^]�Sb촲�ǲ��`(��m%��c��e����Ȅ���'1vZY�V憛rY�s�B$�N+ӓ�R��[>�o�=��e�t+_(4�e"1vZY��|i`0�d��o���ʊn`�K��+�}K��VVtsCyQ�<5^ؒ;�L��w���u�t5Kb�2�	W�a.��J��%�N+���݄� �]$�N+ӛp�_�H|K�y?˖;�L�~�e���������Gq��Q�W'�u%�����[����8�����i_z9��/-�^B���i_U�����r�K�Zc�}U�b+��G�v
�-1�,R�X�m�ZkksK��k���P�
���-��ӾtL{qù�,f�V@і�����Lz�%�N��q�x���9����ؚ��� �Gۗw�E���:%�ƿcy�l�ؒ;mL�s��7��&��.����X���[�j�_	��m��n�����ц9�����t�վ�_�~i_Kbl����x�aI�]6F��U���Kb�1�-�/��hh?�'[���;���{0�.�}m�2%��'1����Gl�<|S��׊��eczJ��p��d�����X|ls�A$�Nӑ?��]�9��%ƶ_X�!�t6Y����ic]���.;��t-c���8%<�X��6]{�;m���� �<�3�U���H��n���Lβ�Wa贱�{��v�y'���"1v�X׽Ww{/���UT[bl^���_ޖ?��x���ic]��K����{M���´��[Y����Jɱ%�N���p9��:O�%�N#ma�$.۹�9c���CIx𱘶�����ia���n�/�4�%;I.}1���jno���ic����X�Ì��c����1�b�態�ؼz�]�o���%,��e���~y[���.|I��V6�	�/c-+^�=��|��~c�,�es�/c�z��`9���dKb,[ٻ8���'BYz�u6kK�e+�z{�F7d���4�(��s�U7�E�dmp��$��IR�W}c���ԛ�-c�"5�m>����(c�$e]	�	9��1/�c�"e�u�b�,>��],c�$-�����ż�gK�m�TIa�V�9N��0��'��J�~%�ԫu,iK��E����ۓ;m,�~�/����m�풀�/I���#�-�G<������!?�9�,�4Yo+c���X��g5z̞F$�N+�Mխ�����@3�D$�N+�{8��=�ғ�9�H��VV��&�ݖO�o�$ƶE*�o�T�,s��}�����{�oEb�2���>���3��c���:G�,_�bu�"�^����e���?ْ���
��[G�DahZ����k<�&�"1v�Xͺf�_�-u��-�,��
��Gh�<� 
C��靆Z�c�\����m��m���~yWz�u�Wah_���~'��*��H����t�����n�]�Kb�X���������J�����kI՟@s�n&��c�u�	4�𱍓�:c�"�*����p���/c�"���_*��׾T;�khwy��r��]��<�[)i�߼�j�i����ia��m��\�:�mKbl_$�%��UB�p�@s���HEc��e��t$�N��n7S?�F`��lY$u��|,�k3rU$��E�u����MTs}Y$Ʋ�5=��×��f�Y�c�"u����~�S�l�[blY�Ӊ�4τ�Α��j.ي������6�mᮚ��Dbl{I��������6�gDblIEc���)[Y���XzI?ޖ\,�3�%0r,Jҟ+ݓ^�d~�ك�
�U8IC�Ň6�Ebl\���@��y���Wahz9�Su�W�C�/kI�͇D���kOv �H�-�4c
;#����\�[bl}I�9���l����~V$ƶ�t�>���y�#1�/R�
K�Ѣ��
C��$�.�&2��Db�xI?���eQ�'�;	����z[w�xP���H�����F�7h���g�EahZ��o\�������%�ΰ{��, 3PS$Ɩ��4�m�c���H��/�j�3"4v ڥy-���%����0/Z�c�"Ũ�ް�� �������ƺo��1�c�"%���e wl��ݎ[���<���%$8��q?�_RSo;7Ǯ����jK�M��3����l�$%
C���]��o�7�]�f��H�]6֕Ӂ�r�C�_����(S�2'qQ��抽H�m/I�B�|.�ŧ6#�Db�0����]�k�#k��K�T5��k9���Sa�X��:|(�l.Ή8O�K:�?x��$;&I$�Ɨ4����0����v,��l_]���Wln��"�?��-K�UG�}�hL����ؑI!�֙r��k�KL[|��p.B�,�+?��3�7��{�l7� l�Pe'�I$`���^���0J�%`���e,��7��uk��H�M#@'8k����H�M�:��.��}��=Fbl�+���Ü�W�������-�Rϸ�lQ��v�b�u.��,\�y�}��^'9ÛR�����"Tډ���3>K��/�06Z���M&�.�*�#�6�D��K.;���ؕbe:Uv	��%mƦu��c�q	��%Ʀu�1�y���=F*T�5[Q�?�wġ�.}0]2�dl�0q��z�oM�i16��4^Gr	�j��ؼ�l�?<�J����ۗ�����qK0	Xs�bl�d-e7n�H$`�e�[B����#n����lqݦ1RKC�Ӻ��ls%���"_��=\�\v�ݞ�t5R��B�D�|I�դ���y�� �,	V#<6�)���n���Ok���u�P]88<B;�������l���)m�r�J����l��QJY%g��2>D��C�1�3�t	Xu7������c>4[U U����'9½	'�~�J���8�ў#�I�}z8�t	�    m����iq L%���1>�$?�����/I�����a����m�[n.��C;?�#e����_	�j$��tt+eeV�!]V=��ev~\F���7\������;~e&�㠁��ɞ���.T��4=�J'{Iv�s��]Fbl�d�+4z8��*�n��f�A�?|oT��34���g'���4�����p����0^����\�Q�l9.��S-;?~�k9d~�U	Xu?�y��BT�7�]VƁ.{�3��3�]׭I���8���O�H���.��";?)"e����)��:�O����[��]�I�n#�qw��"e����%`����[\���gI��H�nw���8(��їK�#�Ӧ�v�>4�K���8����`�� �/ѐ�#��
�0����J����7���2f�����H���� ��$�(t	�i��ؼ�}f���H����k�T�s���.���	�����1����H��3�8�z�n8}��/�34o�2|��d�%`����tquc�>À���F���Ɉ�HE��5�m~ڗN��+n]� j����W�NM�,k;���v����	Xs��}�X�5k�G�Od_�����R�Χ��$`�a�{�|}y�l\	7/��U�����n�Ʋl���%��/�06����U -ơ.1_���2`iq�2	Xu/P��P�Ƣl��\���W����f�\V=�+I��ͱ2`	w�\v�26o���F���4��meRV�a�`��U�5��?�]-��J�n#��_�#C�06�%`�cm06�8,ʎ�0�K�]^���6k`�hq��K���xM?rl�s}@�q
C_���.�%`�c|������b�0�K�������K3_�����|����F�pe�%`�a����N��Vx��%`�a�S���⹍K�������`} \�p	Xu�e;�Z��]�I��A|H��b3]F9Da(�K�#M¦�[�k��%`�c��v�	�\���%`�c�0q�y#�.í���z��'�7����ۗ*����doO�?���������T��֫�ȱg���Wv�36i���0���Jj��لe[	s\	�c$~�lB�����6_I��KZ�M&�(;��bR�lQҘ��de�S]	ت��C��#Ǟ]�!蕀mF:���R��Q�Õ��F�JXy%�\w}%`�e����qUL"k.;�n��MRv�6d�~��5�~ړ?����������}�#�P�!�;��U���ؒ�a�(;������4�M�Qv����G;y!Q�i��-���Rq�.zb
�3��~[�
���/*͝����+�ޢ$g-��e7΄%���5�n�����h�J�����4ə��zqg"�ޢ$g�#���,b��@�Y�[A:�AѾ��]W ��
�s`���eF'���%�J�zEڳ�ˊ���,|U:?m:z�O�x%`�2�&p��G>R�Ӛ,V&cg�{�#��h�y��ֽ�ظe���2�h}�I��ae36�hS��g��T��4ʖ�^	X8�/b������F3W �þ�s��e�(*_�(��=J�}���F8LvI��H��iP0��z�����*�k�/K�ʤ{E�W�*�붤���7<�~%`���WM�iQVobI$`��c���`�^Ep%`��c�Q�;ja��+;�t��m���7�%`���m�)/����Y�+�.k����)���} �a�]��	R�G�;��$�f$���z�ې=��U�ѥ	-��e���d�%`�a�_W��e�؟%`�a�˯5D�-��h����0
ih:��==���J��a߶e�o�z���0��+��_�/o��t������QP������}w��GIE�,ܵ��^o�7��c�W�(�0��ig�Ż"Ю�W���k�AyW�(�1�����:cۚlURgl:T.?�L$`��cӹBA8ۉvA�lW�f�K'3d���M0	ء��ؗv0d��J��p��o�J�?B٩]޳�z��?j��S3������z�?7+��e1�x���z�sKH�˥�D�h�nM�0�d�K% ^���h��2�4�4���8;:9x%`�e�;�t�eG�f\T=��0�H��F��zl򳦑�(���Ú�z�'xk�l�^��ne_	�i�Iؗ�ݿ�DG���zl��򵎂�7v�%`�c<]i^h��5H����()s��ύI�ELG��-?����?$��-J��Əl�@����`����ď�Nm3\�p	X8��c���$�ʜh�m�$`�0>$?�3�(;�2	X8���+U�0�2	�i�B�l_e��?P� 
�Ʌ��\@Q���D�������McGEn�0/���=Jڋ�;��V�-f��$��%��p�hZ�Eҏ�J��c�5,?�(n���[��\V<vV������0���&W�{�l�?(�G���w�p�����%p���Aq���M���y�����5)͝S����^�K���[>kP��\�~ԏP����O������$�>�����j=i&�{�o�Ҏ���r�ӧ���xO�%o�
��� F�J��q	�"����?��oX]����#p{���z%���:��� F�Ml� ���C�����d���=���J ��Ð��� �����KX���|JY��+��u|�pmቑ+,�+U3<��#cHw&	���~I��,�Et��� .`M�M0�؄Gp�AK�x���XR���b�2p�/ydi� n���?�,a$ԕ ����[�G
޵��y.<��Fu�)�i4���X>��?20�죤�Wx)����%�c�<<�I og5���o�-u	�����y�/=�κ��f��0¸`�()X&�ᢼK �˪���;�D���p�������:ᨯp	�vY��-� 5:{{%��eu�����g����N!���%��eM�,�8��%��em����Uï�K og5n�-}y�x`(��K�W��W']_���U[�H��Z����Ů3	���/����ѧ�%����b�����
��u];N[���;� ����"��L�[�����u�;��4���K��*�9��ZO�Z��)��\�z�sc뉙��':s%���:��'mb�@7�$��u��DOڄ��H)�H����M��MB^a�����6��Ϩ�>��]�K _�-�����d:��+|}��孴�K]=\bt	���u��ﳔ�#�ru%���6�w�i"���$��\�:os���NS���p��%���6w�;5H��_��L�:o�ANڎq?[Z���y�����X{1I���u|�:�3\�*�^���l\���m��q.�+�ԊK6���-ܔt	`�]��F@��/�U4�t	`�]���H�g��_�aN*�M{�����9Lx^Vep��:��>�Ux]�dp��:nX�]g��������,��p��������^+��sI������)������U�\�`p����`� �����Fڊ�[Ni\��np;i��Ç�$�����H�Bƾ+\*u	���H�1B��� ��܎�U
)���g��y<�*yo��)%��L؝7~���l�MJW�W�Ol����#[���877�<�X�����i-�/�p�,���V�?�=\� ��5�6���D<�7�k�ZN��2��c����h;�u�����B t\�oM����R	�yY\�R���OD��������Yk=��&|]���s̟_���$���:�#�zH�>�U
�<�X�y��X!?�j�K _��f����ⅳ°� �����I����T�m�J _��g+3p��b&쮛<2�%�BKi}�ˤ.<.�08mnq�گ 輜��d�&e�P	�uY����C�������->��粨�ي<.�(2�H$�?�������W�\�\��l�_J��'�����eK��-1ܜp	�vY��i�@r��������lu�G�g��7^۞�	WG��|����f��+��^a�K     _��z����@=%��s<9��� H�xR���s<9@*����&}�������MW\"��(����䪘yU�8�� ���\3����������dsd���Jb��\	��:^ԝ٢..�h�K _���\i�$+�q	���u�-��B	>I$���x�3wZ�?SL�:osUd��RK�q;6	��<^-�٢.����U�$�����h��+��ѥ�W�:�u��^?ة'4.|�w���u�4�E��%���xQw��*vy�ER� ��;T+c₉�67� �E�^٧I��X�j�K ���6�l��LH��P�*�.��8���	�A4�p	�}Y����t�oz�����I�k����'�/k18YHX�����K ���N[��R	`w����,R'�`�%q�i����ۘ.}�쪳�M��M�^�
��u�[D6�¥�uyxq*|]�ë�-��ډ�°� ���%R���k�?K.|]7��ʹ��σ�L��n��|C���$�?u�+S,��p����u<���#� v�I _�m�G6X�]�q�,� �������R����)V�X�#��.|�w��OZ2��a(�K _�������H`����Pe L\&|}�C���?/,D��6	��;ށ^�����\�X<�6S�����a���x�J�{�'�J ��jN���c�
����M[������$��eM�-B���U+Wx\�bp��XKo�y� ����65y7;�y��,jj;[g����>��Mx_��l�m�A�p��%��eq��yU`��*Tp�c��*R��#�CU��u�g�,*a�����K _�qTn����w���.|�׸��b$p����u��w6�8y���L� �����ζ�tm�yw� ������3q�*�Yg� ���q��ƙRz�~�]�:�Ǚ�##ux�ɻ�u�`�d��r�7��pI���U�U�OAr���M�:oV�ͭ���u�h�l,��W�	��\�:���驥��V�K _�q���V4�OŽ��AL�:�W4w��)ʨq�b� ���M�2��+N�Gcy� ��[\�+�4�U��0��%���[:��=?�����+|�����,#�S8�w���Ŗ�fxR���s	��<���X|��0G�K _�m��l�`�QØ+� ���5؝MĤ4�?�`��x��x])�~g*|}��;[3�ҸE�"T���׌w6;H���r	��;���l�t�d9N����w<_:YĮ�n+u`�u�#�NvV����,��H��a�'ی�����G� .�U�zy�.�%��em�/��pqХ�&�r��l�}�vy<�a� v�r�,"ZJ#gZ\�&<.��8������*.</�28���dA#�\x]M�N,�q�7�>���ട�n$����R��ش�j�k�$�?�����Ah������Y:�l� qx�� �����y�֕��EZ��otI _�Mϧ��ҫ�\$|}7�*��VZ��g�$|}����8|��8���x�$���x�z��V�����O�����q�i��o�7�=I _���<��L��]� 	��;
��5y+-�CA���X�e>��ki�m�Cc3	��;^�?��VZ�E	��;�<��W+=��y ���^���J� ��u�1��~Xa����3'	��d����g�ҭ�� � �Κ�����q�f�G�;����*�����(I }7�˜/=[����L�8k18o����I>�u�WEo+�D�$����dr�JB
��%n&�����	�L:�� ��$���6��:^����O?I �w(O	~�=�E����C��i���Ir�U�����4���wװI �˚N�w2#���D���6����F���o3	���ď,���6a��3\Vap������7�I �˪N[128=tA&\�U�*g�VZZ�C+6	�vY\���Vz����I ���x�]����Dx\Vgp^�R���$}� �ո����q�H��m.�.��8�$Hi��BK��;���ԬUlo���$|.�18yyQq���%���:���xZ���e&\.�08�6q_�4Ө�p����d+�e����T� n�5��
\-Η\؝W�qގ��N\x\��cd���R���S���৕+-Mu�/�$��eq;~�s��2�
�.}4�����=�9j�Q��K
��w��(?�6�l���S�$�zY��)�ה̶ּ�j'	��ɯn���"�j'	��ɯ�qc�J#�f��L���6�G��d4�\��n�˛�H��k���$����fp2��Ҹ�!6�I _��ZЩْr� z�$��������y��7B�$������G-�p,?nn&|����_iO�'^�In,�)�e&͎�=YC��y����V�����C�i��y���㎣��H��H _�m9��>8��H _�g�h���.,6�I ���@Z6֔���ۯ
��F�N�fѸ. W�&��Ο�����qȸM���#��\�g�������� ��Yz>�h��x�`�%q5<g������� v�Q�ώ%�,���X� v�q��y��ҘDd�Go0�����Vz��0.6	`�o��tQ����$L�=wh����b�@`{�$l�C�������W��W�<g٭[�9�)����I�<7q���s"\+��U����T�_�bpV�RӋgE��Hd��X��a�n4�r	`s��EG�H��� ��Ľ$����$�~�M�"�]��*�6#��,b�#�N��%��Y��?�,#��o�՟��#-���{N�B��˪w��~d����������qx����vV�W's癁��|4��Kڌ�:ˊ=�ϼ�)��Nj�m��O����z�p��:������|$�.�$���[�.���c-�˟ÝF� v�M~��$�V����e� v��;ӷ)X��$����'�#��G�GS��+�j���j��*ܮr	`q]�a9��3$.+]A����[I�C��b;.��$`��c���~L�2�d�|�";��-J:���>���8������^G�X��w�XYi�O���G3�ll�N?:���`w-���-���!�ϭ[�(����.Z��&;��a�M��C
ǝ�I�N#�>^�deW��Z.�@j�&7�5��$�%	�m��	;w���$\Xt	أ$�)�]��R)+[W8mqI�[Ik����)V��p�˥�����hܧŏ�i�R-������P�������� �$`��c�vp�1��M�+�oԫ?,nVY3�:��0?��V���Op	ة��u{f҃ẖ������F��c����u?<�J��˖��/v}B��[�.}4�� k�ŏ������ىȽ.	�(��"C�qr.r���/.�[u��Ï�_�8]��q�|�J��g.��%�?.��J��>UP;@�R��R�U#�	�!�Rf�\���C��P����ڿ����4�q�	��'�KQ��]_.6\��w� &I�n���k��l�f���2�g?.���N�(����t��B�K���ꝸ���!Z5v�I�Eq{�=<=/>�q�`�G�)����2�.�7q��nS����� �\�>�3����������M|�t���5$}��Cc�,�#׸��t�`n6��)v	���༆O�$p���"��hi\bn�����6���X:��ӻ�����6s����]���� .�:<u2�<��K$p�Emx�����U�}Y��;���B"�ۿ���t�AJK�PP�5���KXBd�{�*���_�dn���~�4�'������坚�u��;e�f9�����LX%��r���d�����W%��/j3w�4y#\"q	`��<^5{���ȥp���f�՘���?ҳ��.l�[���⧒δ�{��$p��[�{��-�{�5� _V�^8����)s����U�!��嚗u���g�G�IW=�wQ6~�
�_�A    ��LV-g�M_�F�?��:vO�����Ï{�q�����إ�@5���q�7�c��'�r	�b��ܝT��m�7�t����l���N{J�}�{.��v;���f�����0�K��nJ\.�zY���c��+r.��}Wӿ\[M���\�G�GsKՙ{O�<<oA b�q��2�b���VO8�r	ܭ���;J�|q�Mhc��=���͖ԥ,NN=�%*	�I����q均4��-���^��qYy��f�K�V%m~ܽRl-5�ʻl3�f��k�J~�]W�V7���Ȱ8Έ\W�V��_�cch2�W']V�V�õ�`�!�H
��U�U��m$� �J�o���P��w���5���yUW�V7?��6Ť��O��/�0��V��O.�[ŕ��ED)�[�7I�VC�����Q�>z�RQ��y룷��`��6��i����qS0	X5/��G���:�a0b��P���8nD+�K�.CQ������<��݆*��6˥쐶��U	�c��ؕc��?L���6c���=�4��-F�O��ml��9����A��e���6����y��%`��cw�=%���$`�h��c�o�����&��46p��q�.QJO��5�-~޷����5\zq	\s$���µ݁=��w	\s�ɝ��+��9���҈���z���`חč�[�~hd&kN�ۤ�#w�̍�Ր��=�^����#/%n^���ԙ���E���b��P��3o]g�xs�%p��s����0IS�i�����]M��Q�iK6ڟ8��s@�j�����7��I
˻M]W=6��7z��q���3����a���k��#��G����~7)�{�@I�|F��o�1�D-�%`�h��<��+�	�@����{q�$��������$k6�A�������<��ٌ?+�q`�~�\V]6�g�%u��w��5\Wm6+sk��Y*�$p��s�%)�\��!L���s_^�L�W�P���P�����Թs�����P��/�M��+��q	\���U����p��O\��U�Mn��h>q��69��0Tcn�eǥ���+�.�;ՙ��~2cǾ0	\󛎙�sGj�&#�0�%`�n<f�tA	V���K����^=%U���ġ�.}�r�������iqɔ|G"�lq���؏���z�T|B�%`���z6�Q�3v����iU�9is%�����k�K7.�5���s����x��}���.;�$����s=cKt�6I�N'������++X>��K�.'ّ8����y}	�����^ٰ�FX���\��璴������<
��$�rIv�����X�{V u��]�� ��ZG���U ��SA�s�V�^���.�.�S���ԫ����%`�%q�Z��,����0�ƵVI�{�FĹ�4�`l6nĵWk�;�.�[<�Z#چp׸�2	�m$~ڻs��N��f�G��gg�\<<.&�q�e�`���W����FIVM�x���)�����TW}�-6��㶫(4I�6CM榃��MO�0	�n���tP.�5�{"�;���R�}� �;I��6OzvM�0�����$p��
s�i5n暿��'	�m���t��~�Υ\�j0���|b�*}^`(nf���gIW7��-��f����N4��f7���|�pux	�y\���s����֏���>;��5���o�7n�7�
�f6�3���Rʶv�f�f6��<�B/=+����c-v!����k�.�kn�띇6I�U�U>Z�
�;^��)~i&}rc(n���.|l㱮I�������V����1	\���֐���2�,��y����鉻ޅ۶��$`�j���ǕO_���j6�˫�e�']�C��:�p��ɣ�p����u]wj07��\8���.��݆�����c.4�kn.��^;ܓi���+_���>3Tg�K�"A��
�I�Cq���q�LG���\�����o�l�cXa@�K�6C�{�/\���H���j�M�wc,~��K���8J��(��lC���e��5�q��I�)�I��y�;���ҧ:XхC$�k^��s��7��y�,���m:�$\���5n�M�8�얏Lda��-J��������r�aVC���F��6�lY�߫�I�i06۸߸�j���K�v#M���ۉ�0�bl'�1�����%`��6c�8!)+�;ܰu	�e��ؼ��_�y�H�n%5n`-K��%^,�*����*/;�$��%5��v���`��ƭ6P�:JgS.}���:�lyڍx�D�<��i{�1�byq	X�Xg����ʘ>�����έ��u�Z���U 5���4m���F���9lp�ٶ�F\\}�Y��5�Ѽ����p��~H�����O;s�m���&	vI챙��2I����ylr_�����I������?�R�Wf��şǕ[w�R�4&k[lݕ[W��qNA��5�-���_B���&k.[�ye�����əK����V&�	��5�mƞ��!whn�����d�����o�P��g7@*<Z�oX��FH��U�q���~�v+��p�?���F��^�A��^����H��/��Z�\V]�
WB�:ƃM����K�#5��u+���5	�i$��4X]��x��U ]��M'#R����t	X�X��H�ٗ� �M{[�>z͖�
c3�JY���P*}�n��ؼ�3㣃.k��ҩ�A��	�E��5��ԩ�S�����]�<�S��N����>�4|@�a<qj��I�n��K$`�a<qj�W@�8ѵK���x��Z^�]m�m��5�5��t�pp�XE�U 5�񜡥s)�x��q��9���筠����K�z��A:�?���U	Xs��ȟv`�nL�6�iG��X��\�6�i�q������*���x�f6��Uݿ'<����0J����lG�5�e��5�-��t�xtY�b�f�����D��B'&�qo`��u�W�����7�$`�a��`�m��}).	�~I�f�K%`&�P	*k�\	�qɣ����5����Q�ܽ��>.����#o^����l7�fl����3	X�X��g~�����%`��c_�VF��9��U�u��lHW~�.����6Ral2�+��Gi	�c��ؤnQ��0/ѕ>8�n$��lH���F]�+���&=���5�R���H��I;@ي����y�I=͠��ߣ��+k��L�(;N8����1x��S���h��J����SN�3㲸�*�5�Mn	ْZ)?�+{��y����lk\V�q�x�J���(��w��`���v�`��x�г%5��AW 5��Z��Pt�MD��y��z�������ځK���xA�gä�����H���x�Գ��PܼL�<�#�����6�p��J���6��;o�ǯ�$`�c�[B6���8��1U>�~a�R%����u%`�a�Tٳї��$+�޹��P�ģ�~�m�L$`�c��6�I��޹�
��0>7��q=qw`��0>t�9�뇇U	Xu��!�L���S:�LV�G��G6H��s���U	�i���ܸ�k4w���H��ɔT���莬+������q`��H��y0�;e����덴�{l��~ªl1�fl�)Gʇ�I�V#���v��=:�w��^�
�f����F��y�s��y��w�{/��5�un�=o�è�fM�<ֹ�f�t(;z�H�J���x�nf{�(�$�q�h��1�۟�(\ʊ�_&k�Q��B����$��%q��VQ1��Ӛ�y�Wg�����i}xe&k�U�9�a�������=B:���+�xrP��o���c�OI]�<�:��m��SR��5��n��eG	/e�����͒ˠ�*aN�+k;챓7��{t��@�a�W:��2����>H;g$n\'3n���Pu�ق���Mu�u��QWV��[��eWYa�r	Xu�f�Ζ�PV&*�    �%`�c�Ǌ;��-�GG��%`��6c���W�����z�����l��3�]	X����uq��n�t�%`��:c�-�6Ï�K���� ���z����c\�+��4��?`UV]�Ǔ�N����cE��U��9����2�UkW 5�Mn��Z.��@�qt	X��%�t!�ɔ>�rqPs/��t�!�M���@�_���wn�*s�h��J���6!]��6=�{vPs/K�tt E��ѭ�W��ţ���CٽG�;x���4�?mÛ��&���sN�#��㎙���h5�b�˳�G˚����Oɏl�հ�s�K�v#5��ݡ#[�����H��/5+^	�\v����{�qp"�������(a���F:��[��3�k��U����t�!��D��Wl��c�Er���5	X�����A�(;
�vP�9���`��4��y��'�:�:��]	X�O����`�|3J�v%`�c<6�[�2�W]�<6غ��w���(?���5���9�;e���^	X��`���f��Q��y�H�e|0�uG�]I��qx�p^FSl�(��y�Gg�-a���*���6��,E�"?Lt��J���8�<�gF�W�<���.KHY��Vk��1^�8/�5Jt|�@�a<�9��A��������0^?8/���GxQ����þ�8��t`*���޴�
�GA���*���U>�3AA���:��OW@��:���gT���~.��}�q����ō>�:�K�6E���?p�7[�����G���<{%`��6cߪ�:�f�SQ��!�m�e Tu)�1��o<��MWmV;Wnz�����K$p�h|sF�㍋�Q5�$�n���{��W^y����j����M�(,�<���mq���z�;���5�m~޼��X��a܀K���tO�o"��/=�J���������c�k��4��U�q�}o�/�p�ᖋK��8H�����u�,P�m��[���H^8����U�qptoo����C\�`)HQ��o�l���{%p�m���[����W�I��:�:�/�Gl�9q�=��m�j�͒����#c�n7�`n�V	�Og~_�a���,	��]q���4�bn������m-��]�����5��A V"��u�{rnC>������C8�#�J�pq�%��/�07K����2��5�щ�N!��>w�6��5�Mn�3mg���7���J���&�������ma�K���&�����N���
���}�z�]t��T��5��ȁ�N��1<ne&�kn[�;��������%p�m���zq�tQ��T�ܶ���^\,]I<�wI��P<����5̶��UW�ܶ�=�ϡ��>K���6������7�%p�m��Cz�^UOR>K���6���彭U��W���c����W���$p�o.�G>���GҌ��5	\������G�Rxʟ�I���3G>ϔ¸��yUW�6xD=�5.k�OB��L�6��F>�ƵJ���%p�o|w�w�q�2'��I���ΒN��܎��DW����}����pո_7	\�G�����q��}��LW��1m}���#��J��&��3�_\X4F����7���y~d�{�hf���7c�;�����%p�o��w�7\.T�\^W�1ϱ�Ե(\�:]W��yv�b�7.+�pf���H��o�0FK%p�ns�w>�?H�]r%p�n�y�ֳzx��%p��
s�)��i�p#�%p��s�a	.~��$��f7Jc�9]a����f7�R��w��g	\����%˼��O�a.}���P��/��	���ٍ��;NN��足+�k~��|x6����}��5��gs��}�/} �*�����?;��<pGG�_Tu�����I��N�	�]w�0��v�|�2	\u����֛M���o�$p�m�{��/ Ja��Diî����G�c���V�.}p3���cu�ʏlOH��_���l1�fl���k`j���U ��9=)T:�p��� ڔS��LQ(:4@�Y�i06�#^:1��]vi1��
�3�^	ة�ʕ�_���:�K�.#�Ӧ�C�a~� E���Jj���)��s
30��1������zx�Yl���
i�r��8��%`�a�+�g�'�}�w�]	X�X/���0�L�¤�� j�s]#͂��ң�˼.k����{IY,��U`��έ6=)%e��3&k��{�,vh#{�
=������Aʮ�p	X��`3�'��l��+ i�l�4�k�l��M.	�i����([p&��5M6B�^B��+ݺ��kr���iRvH��q��9ls%�����$��˥���*��6L��;N�~%`�a������*�:�p	Xs�f���i�͠���*����lz�W�xS�%`�_�m�l�Hj�@p	X���=y��&���`5Xdp�(Y�R�m���6��-F�}y��É�WTVx@W�!�G�oߺ���C��Fm�zD&��H\�I�⢌�y��:�������#�����+�+<�(i$4�\�#��
��2��a���n� �����.��p��%`���u�|2T�k�AcFڌ��U�~+ܡt	X�K��eG#�U 5M�ٗ�ty%"����?�%=}�5
&Q 5w-��,�x�]zV�Y�ܵ�
�#m9v����ŭ�el0e�.������%��e���M0	Xs���G�]�v	Xs-�ɏ�y��z����`���+=�'e1{��`&k���^F2k��p����1ɔ�����0�5��X����R����+k.�����3v����2	Xu�W��f�A��^�s%`��c�\P�A@�q6C�v �IW)]v�06�Y\�0:0	X�X��x}��L`�:0I��H�!�/��\S�H���*�ښ��K�>K�V#5����y؛l3Rgl�ɿ�8(<����H���|A���8��%`�c<_�ir	���w8�s	X���v����g�#��U�qL���z�#����ɹ�6�bl����ĕ`��2��i^���Kx��%�n#�D$M���8}�\V]���#͐����w�\	Xu��ֳ���G�W�%`��6c��p����2Nf>Ҭ�(+���ct	XuG����������]	�i��ؼnW�+h�%`�e��6�KY�R&k.�x�wee��x�����i�q��1l���`ϗt�R	��3~.k.�x�"\�n\NcM�\���4E8���}t	Xsy��(+����&�.����c�}/n	&;�T�R���]f��H��/� �4�����3��4E�����J0	Xu�yvl)+S�p����H���4M�A���\��f��ؗ�=+���J�#��i����T���q��FڌM����i�l37��ˋ���h'�J�����۳O$�"�d&k.�Od��[ʖZ�M�+k.�Od��e�?���W�\��4�3�ʇ%J4q%`�e��I�8���, ��5��סg+5(�>?n�&	�|I���LG��ߺ�3mW�\FYF�e���?K���x�&�㌲m��W�\�+5ig��1Ft-ڕ�5��'�g�H)ۊ|?�/5��,�g�=��+LTy%`�e<�K�C��L����+�.���&�FY����{%`�e�=f��E���5_�g@A�/�̾�({�D&�Ԣ<&wӬ�R��{I$`�c�>Ҥ�([׎_	X�'i�]����n�l3Rgl�#ty�qͪh7�`h�H:�$Wvi36�١�	Xu��4,�b9�YT�ũ`�|�8JSok��/�8Η��سE��+k��X��V�N�0�i�kq��v�lae���ȕ�5���Z�ee�-^_	Xu�AiT��]O$`�a|&c�yPQv�Q�g	X��Ai�R)����DV=�'=�G�^����i���4�b���ʋ���WV]��GF��ee-�\	XuifQ�=+L�%`�e�YT~�v�2�y��$��%�����T���H��YK���D��W��[B��L�"    	ee{%`�et�}�Y[��AxET	.k.�n|gˀ([a�D�\�ˀi�V��%</q%`�e�u��3q���%`�et|f�lKe��٢��K���xK>�2[�aG�zW�\��4�,�➲蕹$X���L�#͇��}��(Օ�U�q>ԑ&�D�Y�
��U�q�J�ȱ��W ��02kR��X-r�K�v#u��PJ��u%`�a|�e��*Q�a��U Uq�J���RTL�k]vi06�i+(�� ����W .�g7.����#M���2Ўb�$X��������[8�u	Xsw�'�he�N��%`�]������{�9q��9���4O��m���$`�a<
O�4��L-ï�K���x3���RvE��_�aJ��|� dGq�W���Iv��R��D6w�,69�v���(+��p��GI���v ��/K�$��%ƾ<��a��+[���i�����E�\	�j��ؗ�=��#p��mJ�����D��A=t�&ۍ�	����,.���&;�4�W��IJ8�s	ة�ɕ��i���[xkՕ�]F��������>���lq%�t�Sf�q�RP�����ҁρ%�D�6���.IDYy�(��J���6?m��.e�eG�Z��yls��6��쒗�0�3	X�ml�4e�&�|��5��ۗ��Lv�q%`�c��2S�=8_�H�����,lS�n�:��5�n	�}E([w{�2��y�pKx�@L|� ��XP���솵�f�`ϗ4��򲣻"��z����2�������:������)?2���_	�f����Y�]�K��:����4re����:�#WgM�چ�N�]V�I`�Gּ���c�9�J�.#q�:�~.�:���+}��T�R	��� ���ʙF+���d�Nƥ�+�[m�.�BY��L��36�q������H�%�ъ(��+�$`���KL#�P���c.�㈺�Fԡ��X^�I�#�Ӿx��^�s%`�c�6�5�m�;�ܸ�z�c�fK���l�5�Wvi06Z�g�p����2}��\��Xi��֥.�7Ral��L��\�Mb�����E�r���F�}1/��*�6�,��f�g�G%�l7�fl6�ŝa`W �9�ת;�xu%`�a�%?�Qm�A�8^�%`��c���B^���6}�y"���~�I���7��s7nM���[���ؼ�٣�(R�J���h�m��t��v Hs����4�h!�
P	X�w�=;�Wq��tP�kM����q���"О@�_<���d�Y������/���!d�̢�WO^	X�����avxkՕ�5���(.q�5�����'�y���D)��$X��B6G:��+�.[�4��k�(q���U�q*�9�[�*.p��h3?k:����K���8���Q����{��F�}yZ�EC���z���Α~�쁕	X���O��r�HY �����6�#]����y���.{��-!�2��xݱLl��h,3ҵZ)+��0n�%`�c�V;�cH({�+C]�6�YW��?H����ylU��ϊ�Oq��9l��Y�6;0�H.k�/�8� Iʮ����W�v
c�6�	At�J������� w����.��`��w"�Y��0��Yq�,��I�F���r�����g	�b��ؗ��+�Kw%`�a�<g:��pGi!���a��
c�EJ�p=�%`�c�<g:	����^�I�#Mƾ<->`UV=�Q��#o	�!`� ���� �+tL_�(`��5��|��}����f���5;�*��{�w.	v~I\	�RZ�����0��5��R�ܹ^��Ӫ�yl�҉H��=L{%`�c<�C�����a4c��1^��C���/���u	X��B�<z`}��Z��U�q(4�r���p����H��/O�#�����2����c`�0>����H��YC���B�$��%�f� e���i�K���8�z��RKX�+s	Xu�B�<Z�.�QJ$`��c_���NE\V]�Q�3��E�|�0�,;����a"m�1T.k.㈉��Gٽz�	�J�6R7�t5i�4��I$`�e����#�R�b��H���6��4CʶS�u:�����ؼ�ᒇ���K���x=i�_)��.����2�:�4
wē���y�cv� E��?�I���8!���Bk��%`�c_=O�H�kN	��.;�4�?-����@@�a�'#'��W�b����2	�m����Yg[-��v	Xu��ϓn�H�1�W���c_�v�Ɓ�.�����XOJ���^	�j$2�I�.�L�z>���H�����D��zh_&ۍ����Bf��S4	X���m)�ü���\: � ��l�?(������.��y_�QU���J����Ζ�oODJ���_	XsN�� eg�C�]�����%�|�.%\w	Xs�K'._�p��U �Ǿ��n�C".+�t#G\�)�0��c�<��]���Z��+A:��+;���q��<<�Ԅ����P��/��K}ª�RR��Mok�3��7��[Q��'mRxĹQ�.��9���j:�I@�Z�K�-���M�NC��K�Eqs���1��x%�w	\u�v�����Z��/������n�1}��?�^U@U�q��˨�.\H^�$�Wwj0w�<-�d�'Uwj3��j+%�<w	\u�nn��|�v�ʑH��8xsS�fl)��oMP�k��)���ӮSÏ�K­�:���~y(|�
�\��0w��V4�Ƴ�z��M����������ƭ���\�M�u�N$p��6sߞQc��*��n�4l����(���]W��
;�~�奇Kx.��n�kWw~���c>�%���^�}3��s�߸�|��K�#u��+ӛp��`ۗ4��:�����K�C��qq��C�6	X����7�~xܶg�n3�n��ee�݋r%`�i� �W�^ږ/m����0�`l�pqΊ�B��mq����4܃�P.�>[��X��pN	/>�����	J�s�S[�E��U�qN�Mk���~já�K���;�9y�ʷ6ܩw	\�ڦe��ݯ��W�%��Pd
ʚ��=kG��n35ߝ�F�OH��H��8�æ�������K��8	Re�a),��p��%p�n���i'~9�W��Q��������m�j�����C��6R%l����f�|p�I�%~�4�i�6\.uI��Kڄ=/O+��p��%`���˓�q���V����J��Mp�ʊ�g�lSRcl��b�L�h�A�.ۍ4�?�<���Y.;��-!������fq	ة���4HL�ʸ(r	Xu�>%���u k�.���u��n7�=+���x~}�ӖR�i1�%�N#Ʀ;�/3\sr��O�D���[J��Nv%`���fkv�W��p��%`��
c��)�]��CGc��H���+;8�׭I���x%��4�k#�
�o\v����G����`��1���ԑmVKٳ�H��6Rcl�l.�^��3��5�Q�ة��Ap��`��&WB<,�./"��]�\6�i��Ap<�r	Xs����FCȿ���_P���敦g>���Q�>�Ѧ$~ִ���%5ߺ�z��ʏ�
d�T�cv.;�D�в���l�^4�v	�e$j�f;?2#/����H��َ���5���J�#u�fu)�K�)�t9��y;��̇Fk��0��崞�Z��\��26o��V%`�����ոf���.}��T���R	2 ׭\�ȟ����كa8s�*���&;,���0� �]<�l/����N�t���.�e[�N�������6�$���G�q��x(t�$��%q�z�g���p��%`�_|���n�v8s	�j$��̻�-/;ܧv	�f$�d�KK@���mM��26����Lv���=��+%�*��GO�+�XO��HY���2�����k�����2�x8�7�ۆ�쿿���W�i36i`R��f����9F�6�y    +H����l1Rcl�]@���[ޯl5RglV��ܕ(}ٕ�mF���(�s_A�p%`���n��rPV,��+;�4�R	���F�+;�ĕ��Ƥl�5n�
���s��M�PTM��^�l)�z��h$�6�'��y�g7#;��c�h�J�-_?mB��������yl�ǲ�9�nlk'��1���,�L�Vܶ�I���[7�mQV^w4���1�8=�i;���Τ���/��gkPV^w��v%`�c��'?�W��h~s%`��c���g0���F�a���6���&{�����Q��p`w���F�q���P	e���l1Re����뎆JW���6K�����D�NW��\��ѭ��ȲLG�l7���ob���>�yV���#�|�J���(��'�Pv�-R]	Xu�`;�e(���V���������	6);4Q"�.�l'=�����W� i��xy"�ueۉ�]T=�wn��J��6��U����IO-����!�I�6#5��=���Cͪl7�dl^	���5	X�/�y% Qet�J=�$��,-ʶ^3p%`�c�+�ź��]��U��I�sް��s2�>��軺�����/(�w���J��F:�=9VF���`���O[��*�������J*�-/X}���$`��*c�v���D�+i0v�`W������}�c_Z����I�N%qK(/-Ao�&�@���KK�2py/��V�����\��+}�P5H�������0��;���r,�_��� ���R�x�� �aNf��ʭ�o�����2WV=F���{&���~zZ��U�U6C�"Q�I�1��U�Q�8~�`᜸�1	X�Xe���c�\#Z����1��Ï,B���u	X�Xc���c�\�E�WV=��c-�X�e�p�������k��*���\8WV]��e-uY�e�(�ݕ�U�5vYK]V��5�x�+�.k첖����{~������Z�2�3"C��e.�.k��b���I���%`�e���߰+<��
������.�l1U U�v�x�������LV6�
��
��7o\I��Hl��b��X��
&�l��b�!�:������V/mv���u��U�n�#�2�('\w	Xu��/CzA��4�<����l����YV	Xu�� ?r��]љ�+��T;r,����$`��&c�JX�E�]T=6��ΗV�I}8
wI��H�j�L�,�ڎ�`��H��3�Nl�&��H��/����P	*}4�H���/�]g��Ư�zl�u��c�.�.O$`�c�Ў���<ԭI�N#ƾ<����Z�K������#c��]V=����Z�n��`��H��5Ƕ��r�+	�|I��yG#c����1	�b��ؕc�[��p��6cw��eE���l3�al����ϹI���V�mh�S���.k.�o��Yí(�+:�~%`�e�X���ō�X��5�un`��X��E�jW�\�;c�������˕�5�u�j��n�����U�Y���=�负RFw�]�\�c3;�^��.������Q�����K�.k.�q�J�	���k������	+��JYd.�����2��,�^3®�%`�e��]����EC^	Xs��6���7�I�J���h�����+e��1�o�K���6yw�啲�G{���A� %�w���VzH�����v����ʌ�����ls��/���d&�1�J���6����� �����pK8/-A��+JKq%`�e�[�I֤���'�J���/����K��2�K����I�	9�F� �������n{|�+�������j���\�W��:5%q�=/ݢ�N��������yi��q�`���*����0�G�3\�)�3�e�1�U�Cf���F�}yV��
Lv(i�ӎ����F�e0	�i$~ڗ�5�e���.��4�i�����~0�I�n#�Ӿ�����b&{���iW��G���E�۾$~���~}��L�(�<V�-�����Z�K���x˥���*a��+�.�m����wMO�����W�KO{��}����G_)H�'��J3�| �a�+ _����}��]Vƫ�%_�,�\V�K�e�<m����.������e�De� �%�v#��δS�+�̿
��8��/Ϻ4,�YV���%_Y�2���Y�+}4�H�w�t"ґ�����.�����/�`b���$`�_��X������V�]p	X��oJ>��?���\V=��ODp�Fx��+���xR����;�x�*���x�Pv���X�cR\�0j�IH�	�(+�+���x
R�1�=+^�w�ǫ<��[���d��r�K��_��jD��F0�I$`��AD��#��oI���W�x�#��x���SI��/_[�Q�]�
�K9��/�,�F��q���J��}���.�k�$`��6c_^�OX��1��1���\��y���-J*�M��z�I�X�U U���д={.���:��\����:�	�.�닱i;?@լK���:��|87~0�ǳ.���\̓1�f)��@@�a�Q�K+�*o������ ��z}I�4���0��y���*o�a�J�]F��5^�W9�ٞ%`�a��W�1~j��y��z��1j>���K�X��U�����ù��L�mmWV=�ù�o�\_C! ���Ͷ�oHɪ�����/���6���gO��:��j�0p�)L�y%`�a�P��]���Y�>�W	$��K����K��F�� �?׹���$`�a�P�K�B�B������,�=F�]V�����.,o�pT���0�]��la`}s=t�&�.��B���3������u��a�0ɓ+�������w�r�*���1���|'dh���]V=�;!5�	X���6�K�=Fb��;!Ä7^]	X���|'d����ê�:��A�yi�2�//�$`�a��l�e1qt8>/���0޲�'m�Sf�'~Z��U�n�'m��a�)�W�����~��%E�	#��
�K9��iӚHr�¨���Jj�M�Y\	#�I\�&{�4�6.)+���Ct郇T�b�K��z�;��-Jڌ}ic�ȶ.�5^�h����L|#Jls%`���%��7X?�e�Ad.ە��~qiIxq�+��L���@�b����U��Q��/�H��0�w	X�/�����+)��K�����X��
IYy�ᢄK�����P˗{&�;<=�`����>����p����1^�i�	��S�p��%`�c|B��>Rv�0�WT��=-_BY:�WT]V�K(-߶��0�V%`�c�u�z�i\�u�.���il�7����Z��Wvi16�U�m-2Q�=f��H��Ypnk���$`��ak�u���#�4���W�H��yݢ9��(.[��u��&�;<q���1^�Y,�(iq��K�6#Uƾ<���7�]V]�+I-�r]:�'M.�.�-ז/�,c�<�%`�e�������"'��s	Xuo�|%I�i	s�]	Xu�$�|cp�`�.\�r�	����-_�X��Ի��Z%q�͗&�,r��-�$`�e�4����B �yh�&�.�	t�C�����k��2!k�|la:^|%`�e<�y7�P�U�7�*g34�ħ�/��K�N#��U����P�K�����}1�W��G������_�a�x�b�/n^&{�D���=)+���E�ۍ4���-\�:Õp��-Jڌ��񈥳�(�땀�Fj�}{e�&��X�^��x����ym��4��s��g�X�zǩ�\v(�2��/�n��k3.;��/+��]ȧ�c��R��//k/B<`U�����ر/6�t]?G&oaL�K���:}lz���p~+ܹ�*��(�_�ۀ���5���J���C��P���e�Y.���WyaQ#�r	Xu���LkvcQ#��J���&��L�V��X�	����� ?��qz+>h���1>���м�e��]V=ơy=����ft3Õ�U���`Ϸ��|Q��K���x{��ۃz�    Z8u�*���f����#���A��U���`χʸ���Ɂ�
��0���@y��o�
LV��o�m���ќK���x���b	�f8	q飉sA�V�����-�j�K���x����F��r	Xu�{>J���A�;�.}t{�/��bG�"e�o���U �����<�ec�j�e�>X�WRa�K>W[��RТ���+`�*�|w	ت��ؗQ����aM�)�3��aKz�p��%`��c_���k��#��P�d���%a�K�N%mƾ��[�u�{��KI�ӎ����u�3���0���<�\�Jg��O�I���8�|�9&��|͘��ޕ��n�ܨ��������3���RV^w8Rt	XuNo�3V	ב\V]Ɵ���)?2-��*����C>�>��ȼ8�.��z�׼F<t��
��z�G#���x�0�%`�c�)y܌�{�m��K�J$6C��vp�K(.�㥴�Ǣȿ�G�$X���2�莃�@q
_��U�qt���3�N8w	X��gF>�8��0]�K��c���k�\.[�]��ق�����?�2��Fj�M;���f|��Wt*g�T����0Y�K��c�W�V�W~~d��1t%`��c_���w��ы���;�+_�:���*0�P	%Uƾ=+"�@%`���-V~��`n4�$A.[�����ny<�Y��mJ�}��d|��%`�a�0��nG��_P�/��|��F�qt	XuODV�ن+�j	I.��Ͷ���lx�X]	Xu�ͬ|m�`�#\��*���xef��D)*C��~�+	����|����xN���0�o\�����P�&}4S��x���K73��a�^��U�-�f�\d�_O���f��0�E�ކtk����$`�c<�[������z�[��U���<�K��Ap<%u	X��W�z��Q»D\��qM��c��.�kq*��U����ʷq�e��<%��I2=�Ϥ�,\�y��ӯn�EHӊ��lURel��PVj��+�ܒdim ��^�Ds���_��RQ�'F��S;��P$w���J��U�n�HZI��[�*��Z/y�u��^	ئ��}0���s��y%`�����1��F�{�����&�c3lm�vMo��@��m��}��%���mХ���K(%g��$�b$����S;��+���m�6�H۱�H�������c{�.���/��3��-H+��k_飡a@j���������_&�����H[��/���0���p����^앀U��T��C���/[��U�����  �|`��+�.��v7H����3���Qp!-�nVx�@�b��P&��T{��2��[4+�24� ��z��[�(�14��K��EH�@�*i0��z���z%`���+�}���_�|%`��c/�@np�Wv(�^�]�����!�*�-^�X�~�]x�>��]J�B����׿x�J�STRf�lG.�[�x%`�a<�Za���_w����U�q��FhA�6��Z�J���8B�
#�Hډ�߻&�.�-+<섴ҫ��$`�e|�i�Z���?:�V%`�e�e�+_H+��5���U����
/s �ٽw	_	Xu_�X�Z�"�����2^MZ�3�K��t��>�}�$6oM��u�-޾�# ��iȺ��|��$`�a<_X�vE8�ѽ�WVƛ�+�Ԯ�zz��^	Xuoj�pSi�t{^�n	Xuoj�pSie����z%`�a�����Q�����gb+<���X)��7[V��g�V��X�z�A^	X��)�pM�j8�y�^&}pOI�$��ф#]͋�J���xB�⹣�]�����$`�c<w\�⟤E�6陋WV=Ƌ+��"s��Of��1����o��I�w:핀U��3�+܀GZݼ|K���Ƭ���ip���ӡlUv�16x'i��z�^	�i������E��-����2>0��H[��F�"P=���yӊ��y�#��x�����V������O���z��Ȭ��_Ef��_LV=�'�V<�Ox��zz^	X�O�W<�G�Q�5�-����
����avw^_	X���5�8H��� �����W�a>��z�W�׺|�)��C!���k�{�gX��_������$�.#M��v}���%`��cW��
�k�G�y)q!���^ [���bl��F�&[��	[/� ��C�`�MI���ɤ;u	��]I�!�d4��7�y@8�?����Zej�����JJ��,n�z�kK���h!S��v�o,l僻�ʩk�$�6�;��J���2ׂߥ	�dz�]8x%`�a�4�)x�[�?B���0Z��<���syo����̭W�����~lK���2�^�bl�
���V(��%�}�镀U��^����pgy[VV9��R�8�wo�U�U���ۅsbG�gF�i��vq�����-}��p��a�W��dw%iK���:�_�Ă��V%`�a����y��F�N)���0���������&������p�U	X�Xg3�G���N�)16�m�qP� :��8��/r��|�&�6)��6�⢸߀�$���&c��R���[V=ֹ��fF���f��1nf�m��u�Z��5����Kn�̑�Of���-¸�Azkw��Q U��¸�U>��۴%`�a��:/�Aǡq��1�{� q{0/��cN�W/�>� H\��vљ�zlq!�K�3N��[l1w8�ہg�X����8H���<c�u�,x��.�()1V�mrۆ���%`��*a�%����J�V#qn�+�Yw�eK=��$��;��}�앀�Fbl�`{�;��0c�����4��L^��e����u�ʰ�2L�kp~ɚ$�j��ە'㞋`�\�=��%`��~{��.��%�wwlK���R�ܾ��XLf}3�l1R#�3ϻ+���:�/�_Jv��8���HT��Վ����yK���Ң��c�tʮö�0�^9GA\�{G����Fꌝ!VC{_lK���x�;\!�㔻�[�یT[���3Jv_Gy%`��t�ccu�㌭b%�L6�Pn{4`.��<�H�l1�$�`���9K�V#���?�w�͖�U��BJ���`e:��3[���[�^���Iu����0c�դ�c'n0�WV]V�)��{,8v�ݵ�-��D�ma�P~����H|K��F����qn�iX�%`��8��BX2�<��&��D�x�T�UawF�%`�e<uz�x�]_���WV]Ɠ'\�
��W(�a�a���HT3t���.m	�n��Q{[��;���2:ĭ?����v'O[v�s�����&�����ח݇_I��!16�Kں�{"xK�&#��-�'��CM0	�l�F�p� i�>cu��-F��^�q��/[���Fb��[(�m������g�x�6�/�6aK���xҏ�'kx��d&;�D3��o%�̕�֤����y]��?X�¨n<�Wv�>~Ԕ���u߉~�^�~I%ol\�{ljL.��{�#�y+Ζ�!U^	ج���p�N�V?��+[�T�*U�-��թ-[��N�*���0
�lSRg��I�;t:&ۍD�xG���]wc`K�%Q��O4�3V�,��-;���V��턕����,\��s.�B�i�;�ے`�����7�|nw�pK���x��®����^	Xu��v��N,<��`���.k;L����[V]�������8�H���x�-��owgۡlMV]��oy\
aaw�/[��U�.�x��1s=�MV]�{9^ů8_>ܩ���U�q�N�p���7A_郷1��1Pr��,�I�-�񋻹�+������lVRfl���E�l�w��EI��a_�pd���[��� 5Ɔ�V���v�n	ئ���p=����̇ܚlW�dlX$��'������*�����'���s���TRal�'i��@v)i0�V�ҳ�#�-	6��6' D�|�V%`�e|���߶�,#�I�f#5�ƹ�0�_LV]���PA4�o    v�$[V]�'Tj|8�,��.�+�.�����!-D�z�-�.��&�'�O�ſ��%`�e|2A~�5���yK�N#5�ƹ�Ow�tK�e���8�K�~f�`�C��^\6��k$�.��~qِ/�N��l6��b�1�G=P��0�x�!Iq����I��Ǟw��j�3���?m	Xx���њ,����5	Xx���?b�|Ow��%`��~ge->ܰ����z%`��hLӞ��;�=9��J�.#u���d�.�lI��H��D�����{���>AI���
�������5	ج�:[�m��U��npn	آ�6	ۢ�y��~��x�햀�J\#*��U��=�J�6#-�F�V�����u���<9�a#ޱ�^��e[v�s�	�v���n	XuY���7�C�A�=׼[V]V~��ȏ�a�XU�/�o��~J�T�񒊤�ҟ���$`�e�� V.ؙ�K@�ct{[~��f��گ-[�TYW����|���Hd�:c�J��>��J���xU	?b�h�z`��H��ѹ����k$;�De�I��7���-;��6np��P�Lvi06�dR��K_[l3R�-q�✹;����V{i�|nw��%`�e�6�����܇ܪ��X�Jj��s��L�I�-[��74k.�yMV]ֹl{�?YEwuV ����{�*�=B�%`�c<o���)�;d���1^]D���ܱ�	@.�TFn������S{Ѽ^�X��jޕ�]7��X�����M��/6W�54����$`��&cu���Z8�q� .�18�oO}��߶��l��a���gf�{�zK�6#e��&�����U�ѵh��&��Nwf�%`���s��m}��p۽^�%`��*c�L���ض%`�j���uinG��}�jKDWV����+�aPc��H\��z;б��P������z��s;�����[�)3�ƭ.����[��1w�S�0e�|�I 7cu�X�w�K wc��㔤��Btg2t���m����� ���+����| F�JMw�-�~I����0�s��nI�s�g��w��r#����!Ǝ8���I��5��[q��bR�yxK�������J��W3	���
sK\����qW^	���*����哻{�[�?$�l)�l�/�;����A���f�]��k��!-�^L�����Ö ~ܖ��9��(i�Z�`�&��r��׿h���2�ݜ�������oK�>N�\uK���ާ���%p�.�g�k�U	��i��^�&��_����
;mHߏ��	|w�jK��_�`�8��4��T	��ƭ�`!�ݺ���%`�&�]
U4
��w]lK ��bp��gv�d��_k�ܣ��V$^��M鷅�$��mӿ�%`�C��e�[j�տ^�%`�Cj��54�B�%�pM�>(�Π�8�?�U�-�Rfl	���C�-��g�������xX�C02���܂��G�n+����#�&&�����-}t��XT��B�������$����7�K���m���pzXT�)�'6������)1�]�;�;�`�C�{̉�d�{*wK���٭�8����N1�p{X�ڲ��"�8U�lH����vx�tK ���;��#�V��6f[v>���~7��'��zP��ak&e_�%�-	6oRelԦ�<�������A5�S���|�%`�C����XF��zb�G���Oe۲�u�a>�;�j��#̪$jn��-��W�h�*i1��������מ\���'��U	�񠸂EZ�02߅���e.����V�$p�e.���{�ٕN��6�"��r�/��DmX�#�`� N�����R��2�F�$p�F������c�kBm�'븲u���c�ڙ;G�Y���-�I��M���^F�ݺ���-��7����*C�#������,���.�����;m/t�AZ��>��%p�itس����Ě�ixn�`��c�=�S�,��*l^4|�����g�"��i16.^<.�>�%p�m�ȑ�x�V�c[�>��ؠn��޽��+���d�:N��v��]�z%`�&�_l{����(o����E�`i�o�6�^	X�=	�Aeh�+֓w��5��)�>�8����`�CJ��qv+��K�$p��
sK�a���N��J gcU���H=�{��� .�j&?H��{������0��_���`� n���KEk8���^	�n�*�
�����,U��"��.��G�/~�3Tv>�ߖ7����Am�"0	Xx����s��f�`����ď`�i�M���+����r���go`�J�f#1�\���=+��04zBI���@䕀�Fblt=DҎ4�g�^	�f$�F�$�V�o�����Fblt�iWrߠ~%`����ƵV���'�
�S9����
3W7��+�M��0��xH�ץ�UI�zPd�e<<fr�!m���7�I�����v�yp�I�����t�8��#-� �[/��-�1vD�u��zJd�c�K�}���W�=��ذd���}׭ ڍ��\sp
�!T���+;���DZ��x��Q ��f|H�+�G�e��Ш�"��jޡ�W�4R��M����C	���k06:↴��ǖ�5w���l��dr��I����mt�iW�_	X���BXq�MX��$`�_�묅�:c����p_	�����	�o�h��mc��:�o��r)ی�m����z�pن��Kڂ���5	Xu?�1kt�iq��UI��H���B(�Vo蕀U��sza����;����2�2�KϒVF���A|%`�e|�y�/m -���]f��2~ic���N)���l3Rc�%�2���̽��2��,?�
I;k9���F����V>��j�J������/=KZ��� ���%�i%)����>�}(�G��g�E��V%`��8�3t̂�
��0�h1G8�K8f׼��W���:�靤���l5c�]8�m��� ڌ�\
ARL���I�v#U��}n_�ݏ}%`��:c�Z�@/˽��J���x�}��_�?��d�J����#tXFL���|%�&#����AH�Rr[�-���As�31I�{�Ε���1~\s�q�v�f ��8
sFOw �Zn�WV=F��G؋e�X�Ŵ-یD֝�"���VڻL�J�v#1�Roe�ↀ~%`�e�������S�b�+;�Ĺ��[\����x%`�e���C�U�~�5I�z��v���8`�Mu�ӶlR�޺��L7�kMn��%`��a�����oL�)36�	��?u�J�V#5�F���}��h�l3�$l���J��l7�"l��HD:I_���+;�T�[l㺳�-;�4�ކ��;v��2�KS�Wp����$�b�ɹ�45�7��+k.���K�;���Y�<�8���qN�{����5�-����y`�ռ��D7�p�+���r�����W���H'y�J&����H��E��
��8��q��r�'y[v��x�
qN�w�}+���x�j�O� �_�7w^I��!Q�W�2�/�2�+����$�q)٥a����H��Q�-x��=Y�J�#QK[F�Pp�}�����B�4�#�-.�zV���H��Q/��)�zA9_	XuXi�;��#��n	��g���*X�8ɻ{�J���x]?b�޽�5��2Rb�%��V�e�$��UPI;q�"��U��*���wְ%`�e�s���G"x}U�unm{8嗴�W/�+[��	6���~�5	Xu/��x]~d��~lK���x��9N�c5�Ђ�����8+��HZ��{eK����z�m����x�ï	&����I�?b�Li5�$���Tׄ��}V M�)��p�T~�|l���+���y'N��c'1��-F��&N�VF����-[��:a[4)-2�O�%l	ئ�ߧ��G��6�{h����FZ�g8��c�B0	�a$.�q)��܃ү�yl2v^�2�q�[�<���F�v �Է�Β`�C�ܮ8���Ww����ޤ� ����ꩻ!�_	XuYJ�M���N=*���    ��m�l��՗�y��U�Q�r�.�χ^�$`�c4Py��X�ȸ�[V=6����v��ɋб@�a#34\�E0�4�q���U�.�xS����gR��:lp=C -�x�ڃ-	v�360#�R�n	Xu��z�g$-\V �����ǭd1n��얀-J��MeF���]����,�*綆u��ĺ?��pXj��~ m��)n	X8,u�����OxO���ǉ�;�!����^	Xx,M�ƛC�V�W�
�K9\��aҭNwڴ%�.%-��
��U�U������Þ�$��0��N�|���Jj���t��Ζ�-JZ����Q�;�,<��#����H��b~�`�MI\���1���tK��c�ۯ�*JZ����$`��
c���c����L��C�J��F3���疶�2�bh\�#���o�S��8���ґ=�rT U�X�"J�m�C0	X��
�[^V>�{8kK���*�qscT}h�PP Uw��y���)5w�bK����0�ʗv�o	Xu�`q$(��iL�]&��-���������,���.�>�댕�Uv�U�,���Yʸ�������ْ`�����vvU}��,���{�mý�@�Ύ�P���} ���lQRa쥙Y2tO�l	ت���pT�pO_eK�6%5Ɔ�����;���]I��a��pO"�,;����{J��u��p��F|�м紻{KdK����`�-�8��lI�YI�7�z�	I��{@�c��A|vY��Y�s�[V=Fg�ˈ7�q�ۿ��1�݌����`O���[V=ָ�����q_kz%`�c���G������z�sn�c��!�N�5	X����h���uZ���Fꄽ����a=
�����%V���״��P����1/�W��?a�%`�c<Ż�"mX�v�����"-�[��ҧ�e�EI���#��7L��;����_�+3^Tm�#{/.lP8�����}<I�gs��l	X8���D���zx(����������G��a���H���V�(��o	Xx��Ɨ��x�4��s��$ت��{��\�Jڢ�؜%`��� 쌦��i���ؖ��F���^�kv\b�wo�,<����#�J��GQy%`�c;ʘb��7T��^P$pP�ɀ6��ե2Ͻ[�E�^�G�qZ�)m	ܡ���k~哻W���T�d�[�����P �����D��+�;����ݍ�-	�=����C���5	ܤ�B�Pʥ|+>�_&����\�/�/�z��zP���6�ޣ;4����+LW�V�6��qO�~�1���ƥ�a�ĝ����Ѱ �m��^�W�������q���E?q����$p��8��R����l������qW�������[kֱ2�7��U���?�H.^��Ə[W�ֹ����j����mp9�nꜸ�}�k+�����{�'��4���[W�Fۼ��cO\������mp�9n}��uٝOm	\u��Vgܾ���=��(���&�y�fcj.0�g��ؼ�2�p�u|%�Cq{3o��L}�+�[W}6����&���*��>����/�m�� Ҥ����y
zs׭���W%p�i�k�z���~ک%`�h�� g���]�t2�I�vCU����aа�����-�;5�;/�Ѳ���%p�j������]��q����]�i���[�����-	w*�&��q��?
�IA��q�x]}���-��U��n�.c�C)�nQTg�tё�*�[E�C�q�&��NE��MQ��9�e+
��n	ܮ(.��;�Z��%��NU��0T&���;[u�n	�i���p�;~$��tK����=(��w���F�%�.Ev[��-�s��U���e�&�壻'x�����^�Ǐ����]�%p��q���S~壻W��������f\|�s{P�m<qM�֚���`oK��*���SAI<��](���6��zk͊�l��gn	\u[�֬�jYMb)�LW��S�t�
Jb���k�I��)���~k}k��V ��n�\���U��Z��U��T0��w���ݓ�[W����]&W�nzM��U��T0��/p��=��%p�o�}1n�ۤ/p��[W�6�|ǭ��Yܗ�_	\���z6o�;W����[W�6�����]_<�H���#��o\��%�-}p*�����Z�2U�?������m�˨}����͆�Q�z/��2�w��.��l[�9���K>��Ƽ%p��s�z��B��J�6E5�ƾ��8�赓[�+j2���?VchwȯJ��o|�S~�������SQ����&.��/�=
�KA\������S�l!|p�	��%�Uqb��=�%p�4>��7�|n����͊��.�?.���st�j1Pcj��̟�0*~=0	\�Y�zP��P;	\�o����$����I���:~ܸ+��	^	\�Y�{M#��׍�J��x<��Ϳ83ꮽl	\uZ��V��$�a�L�����|k<����_����6�b��Z���pV@U��h:�����=��%p�m<�E�Ÿ�������P����V��vV@U���G����đ���\��z��7�1���}o�tMW��c�<���Ř>P@���}��T���U	�e���[nq���&}p�QQ���ے�͕��H���:��k�h����YW��3�|ٮA�%���k��5ްɗD�.w�mK��x�&_F��G�SpK��&��	2qs��I���7A�����N�%p�m<�����!�$������W����=�
���mq�n�;�8��&}p�VP�?Ïpd"��#|K�&E�>S�ʳ��w6�!�-��E=|I�r@�C�f��[�uoT\Ƨ�/f���-�[՘{i�V�S�g	ܦ�����_���;[�+j0�Z���}V@��
�*�uV�fsm��SQ���l���.�n�>���-q+)B�t����pE-�ƥ+�n��WW�F��Z�5�{A꨻G�%p�m�ˡ��A2��l	\u�PK�r3��@W��&sW�6I�GO�
��5:������¥u5}K��x<].���3f[��ɖ�U��l��F.q��y�W3	\u��6r�p/haȈ}�%p��qW��E��¤6C��CY�ܦ���_a��O-#	\q�s̸��|�����H6+)36_�2��{�$`��
c�ۿ���)I�V%-Ʈ#�V%`���]����ālWRel��	������PRg�d^V�.c��)s!�^{8���~��]JJ��������n�(�km��ڌ#����z,s�͗Z�q��OSC��̵6_>Xn���tI���
0Z�����<�E��H�������晤�F��˶\<�����IV=V�c��1\��;f"	X�Xa��X�O+���LV=FO�o�Ԅ"�<�J���*��~�ViM��� ��eF��)�"�o��MFʄ-�|�ۖ$�����X����H��3v�ؖV�{^�$`��&c㚀��߭	��U�U�C�q�6��/��1	�n$.�7��+�ʿ��Hv)v�+�ͿǳHvi16.[�UP�Xc���1�C҄G\��o�J��Z��U Mơ:��*����I�f#1��N�#�
V%`����i#�]>���$[�D���b^z���$`���/�_�3C�^�"��:����a2��*Hv��[�3H��w�Wt���>⒝2��� I�.#q�^l����H��B0H��;R\�p����v��MF��5.�����[���F�~��"��2t�{��$`�c��q���ր�5	�j$�ƈ[\����D��H��q��Խ��,@��H\���fMoU�$`���&��Q?i,��U�M����~J}<`Uv�
a���A�O��x��-}pC�H���54��!u ��DM���ieB�w��$`����Ɵ'��5�-�.[��V8��5��vK�V#Q��.e�zr�� 	�f�����v����+I�v#�V8uJ�Ү�Ky$�.[<uZ�O���n�%`�g�ǰ����ݠ�&l	�e��������߇�H�`�H    ���'Î��@�%`��aSԡ#�g/��l6Ral4dN�^-�I�#U��5A�@���7I�V%e�	9nok)ΩW��mF���s;ZI�lWR�ܖ��q��3�$;��,�H�ٝ�b$k.+\��#�L����y���~���>�d&}�扑�z�CfI[�;�%`�c�Kv]��!TM k[\�,G������$k[l�7�S>��z��ylq�N�6�݉ã j[�z]z�;����0�H��֮�<J�� :��z�����0��U��G��>W֍���Iv�16�m�����l��@�q��M9�Wƶ���>
��8����viI��fK�������3��i�l1Re�%���k��z�w��G\��&�|K�6#qhQ#ie��hI���50�_�2�p�][�����ƕ+#Ї��l	X�W�����e$x��&k���¡r���嶲[l7�dl���8�R�}ߚ�yl16lg%��'n�%`�c���I���Z� Z�C�6� �8w���D��1� L�Ƶ�����G��H���܎�u�.��z��cŏV��sK����~DcDD�v�ǚ�4�K�˶���o	�e���Knk/U�$��8�5d\�����l2�bl������ �+\J����|�I�#��J���_�t���F�viex���֯�:�7^�Í;�6���Y��26�+v���-����oJ�4�ߣT$�����IZ������U���������v���$�i$�m�XA*�p�2��:���e��gqbe�l6Ral����q�@V=�x��F4kD���/���Fʌ����K([��!��8k~��*�v�4��%;��yB�$`�c�[�v1��xv(��U�u6C��$m��P&��T�b2^�+�$���&c/� ���x�$`�c��)?.������ I�f#qn/�:�>
@��:����Z2puWe����s����.���-�-ی��/H�U��W�H��6�������-����J�<�=�-;�D�`�h�'ik��k ��4�$-z����)`��pn�K��t������H����p�>��U؏m�G�s�G�'4�t-X�����-[��%;�v�`5��gӶl3��c�uV�asϦm	�n$���ʹ�^��U U�q�)nd�����6[v)36��lNX�_�e���K���Uݒ`�C�����L���ܖ�UM�fx(�`1����l6Rgl�[�F��7D���}��0I;fs��l	Xu��>l�뉒v�|([��mFj��ڃ�����i�-ۍ�BE|��. o	X��f��JZ)���pH�<�-�g����L ��3��%�p�_�*��(��sFu@����%l	X���:nZ՟�Rw�����7�f8�G@ί�G���S��U�}�O+o	Xs����ϕ�%��y����O��u�A��Y�PnK����`]l�������6X &����%`�]����Is���Hv)36�	2V�-	�<��ب��?��<�� ��C]ͺT/Ăr��,�OLA�`e��NC�lQRa�z}�5���J��+W�}p���h3N#�I����Җ��Fb����ݬ&	X8�߬�9����8�
�S9��ҥ��Y��<�%`��c�Is��xo���I��)36�`]�@�%�-��D,������D��:��s�%���i�.��U��`��%mF��@V�[�9��?�����3I���xK0�[��A'ݭ�-ۍ�MB����}�-;�4���h�$`�e|�1�[�G��c-[V]�[���ö<��mI��H��a�����H���ۄ���H�ۄ?
���ˡ�$;�:HV=��c9\����{$�$`��
c�񁤕Y�;����B���.xm	X��9�#��(��-k[\+.������kK���B�~IZ}'��U����\r�~!l���|nI��!Q�oK��_u}@�a�9������z�`&����\��'����U��n	���r��+[��K�b�6Gq'"[V=V�%\MlX���A�l7�dl�ۮ�f ��]�\���+��PLv�2�RxXԛ�o	�e��ظ��̤��)�{���K�<��-�.�\o�ގ��;P���HTo�ގ�F�����^Z�!�������Fꌽ�V���1JH��R����$~��v� �_�L���m�JZ��~#n��HTo[��0a%�Lv�ڄx���H��O(n	Xu�ˏhN&i+"�-��2c�Q�.9�ek��H��q�J홇��I�f#qٮ�MXx��[��-FJ��r�e���;^���H��灘3V�)w�qK�6#�'�ᜬ�pvqm	�n$j��=����˽۶%`�e��/?�M�����{@�qAíI��u=�n	�e$jz�I�p���nI��!U�ƹM���I�&#qn{�7H�Y��@�%`���o��#��a�iK�#���K�~E0	X�X�fq\jm��~M0	X���Z;¹y�)�宫=
���3��Y��b��qMv�Jv���%�L���4Rbl\��iD�%`���z�7�X�>�V���H����W���qK����G�%�0��f$`�����b���t׿��zl�h1>��m}���I����x���?Y�OH�6#�'�9�����;����Hd�yqY�r�ᓩ�0�?ظl�ѽ��%`�e����G $-�%�?�I�.#�yg8PB����em��F�{)�Or���2�+�׍��� �Of�pٳ�cX�bq��ooM�)6�X��&�Lʖ��Fbl�`1D�&}�������-|�h7N'h��*���}�kK�#q^/]&����$`��8����Rw$��T{�5��po�lI��!���<�3&���ږ�MF��<��w��m	X��w-)<��0u_pK�#e�FsI�#�^��%`��c�B�_��ԣ|4z8�� t"��7��n��ШrIR��%`���r��eD���s���0އ.�W����k��2��ϕ�SJ0�[��8��E��e,�����5��E�oo#�F��9�q!��GI��	�\dK���h�X�'q%���=��%`�a��6<�1~�榏5	X�X�B���+N^�%`�e�s�O����TƖ�5�n��Y��m+�7i���lp�N�I���cI�\6�C�M�-}�8��v��g��>������S�`�Xq���t�F����:��%�|�C�c��H���܊�N����2~�Y~DU�V���Zݖ�mF�����va�#���F��[����� :�C�Wg�.��斀�F*���u�& ���ON�:0�a�iK�mF�>7�/b �f[ۚl2ׁ7�T$k�*��q�Jc���͖�5.�p��4s=�V%`�_��6|t�|�Uy�̖�5��%>�3q�}���m	X��gr�l-ik�'�J���ׄ��EDѕݲ���0�ss�9JZi���[�\Ɲ�xƊ����-	�?$n��>q?���5�$`�e���p7o"��t�+���lrw3#�IZ1���l	Xs�d��˕�G���{$vK����p���!�����[�I��=X���R����lHX�y�a3�����hx@�c����Zۉ�Z̮Sg=�!���K>��ϖ�U���%>�4䯚�"ʖ>x�^I�v=���������-��D����)i�C��-}4�H�v�K�U�����U�%>�$i�p{�G�ܵ^����ݵ�-}4f���z�����"O-�I���xX�����,헬I����$U���r�`&}4\Hl�z�m���٘�2Rcl�ۆWG}3�$�i$�n�X������-��l��  �h�"�U�U^A����ۯ��/=�Q*{���E�O���H��.�������U������ع=+�v��)>�%I囸�[v�2�RqX	X�X�9n�b$�Xᖀ]F*��ۯ���L�`cWI��.f���ዙ�z�Ѷvi�~l��8`UV=Əٔ����kO- �  ��'WJ�|������kK������2�0-(��[��06���i��T��q%U�ƅ ӂ���[V]6������E\n��-;�4U0�E��tK�����K��' .���y�-}0oVmk���I+��]����2~n�ćG$-&�^��%`�e|x��/c���Q9��-F�z{qY��=ٖ�U��)�p���K{-ͣ ���%�^/I��`&��+���c�:XL@�qh��.��g$	Xu�b�p�~��痀*���@W�����ro�m� �F"ŗ�%m�3����/���Һ�m�[V�ŗ�K�@�ʷv/~n	X��7(+�-���?`�%`�_��t�b�*�ܡlM{&8��I��[���Fʌ����a@$;�4Ɠ��͉j�� :�3�·��OC�귳&�U��]SCD�f�$���A��ݷlRR�܆�-/��������H���=GI;���䖀-J�O��-�bvwo�,<Vy��K���$�l3�$��ң�~Cc��1~���w%-�@E��1^V}�:ض�{8~K���Jf�o��~qK���x��?[̧^��^W�xT^�������t�2����~j|{L��v��Ԙl6Rc�%�8G���$`�e��Q�k^�gJ+������y���YI�Fw���������I�D��CnUV]Ɠ��/�<�"w�4���H��;H�W݇[���������P�����2U�~��P�F�&}��(iqn/�l�C�'����'�5��`?q"�6ᕀU�����!���N��@�q�d�wɐ�b}?��U��d5|Di��ۭ ��G��j�����J���&ׂ]DBڕG?�J�#�@)0KZ���&�50�pJ��2��$`��c��g��	ҡ�$�f$�d�V'~}+�,�t^l/� m�[Cx%`��e;½GI�� ���W�(�26:Y���	ت$�ب��H;���n�f�F�hk(!�$��]I\��f餼�n	ء��ذdh���^	�i$.��QD�I����KI�|��sDZ��^��Wl7�dlt i�L���+�&��a��I>����J���x�A~����m�J���06���#�e�
��0~�_~\�*M�_iUTָ������)�WV�{"#|2i���"�
��/��?����T��F�+��j��]9���]� �[|O{�O������7I��H\ =�vEZ̳�aK���:me�G�m){K��ћB⁧��`Gr��z%`�[#16Z���x��{�镀Uw�&���{�n��%`�_��@�1���]I|%`�_<�3��CZ<��[&���Gx�iGr�{%`�a�q1⡲���D �.��X�>�c�s([�>XG3�$��w�OG���H��t�#/�r�+�.�u{:Ņ *�2�+[�4�ĵ�/+��p�L@x��q��![�)�ڄFDZ���+ەT[�wf����H��ѕ)����[~%`��:�6
���V�`��H�ɢSH��@���WJ���iBә�S�lR�dltPi�rW�^	X�l�Z�|��=c��8t�&[��|���g�������J���x-|��� ��QũlUV]���3^IJX�r�x%`�eܗ�[S���x����l|�M��z�sb���]�{%��g����/�z9���4)���F~����6��(m��hC~��8`�a�gK�&�c� ��E��薀�JJ�}7\|�����J�%eƖ6#�k [�ğ�7����(��[�)�3vğ,��ƾx%`��c/��U.����P����QR�
f��Ο���K��dK���hS@~�v��_I��H���@��JV�}�WV]F���c,���?�I���hn&?..˥6w%tK����qqY�F�YT=6����S�E���G7X�àO��{�ʨ�]���pX�6��+��C{`�CI��9n������TRel�`�,��e�KI��0���˸�-	6��w��Mxr(��MJ*��q!,K��&��ą6�Gp�M^	X8���b��V�J�����UI����$���:����� Ɔ�����x%`�e����W������(��Ǹ_��P�E�U%`�c�f'���c�ֽ��@��&����Q�x���$آ���.X@uG[���L~\�-y1v�hVœ8@q�ͯX&w�瓞"?`Gw����UI����u�[>�p�j=s��\��wʷlWRb�!�	ء���K�P ������!=�7��nХ���[`-�U�>xRI\ =���}�w+����i�� �Sq�:��zkq��K^� ��T_��~Ə�]'�N�0	X��ߤ���;�L@ ۔�{)W��ܑ�� ڕ�z��K%~��
�C9���Aƚszϊ��SI���]+�ֻw�������Y�YJ8�E ��O���� ��),q��@��}������J�}B?.�Ŝ��[���J��&��If��'��p���i%m_��f�,�Ƕg��Pe�&�ek�MI�O��z�`�7T�+��i��J�1D�[�A�-;�D�1tl���;J�@��y�W��-�'^	Xxlp�5ҥ��^�?�I�VRfl80��Y2��Ɩ�MJj��/�[�.�lV�_#_r���E0	آ$�m�44UF��LqK�V%M��
AF ~EPЦ���R����.������G�43-�L�o�Lv(��Q�IRš��W�CC��=Ky��:�V U��v�pL1����;���藶7��疀U����K�긘���$`�a�,9��:v��6�$`�a�,9��uƊ7͌I�V#5K������5	X����0.�0P��ܚ�zlr!�z�!N:43&�M�p�7�K�ћ;e��SI��an����-�Mx�64K��{��;�T��M��[�[6)�!��$m�ջJ�J��e��,���6%-6��lK�#u�^r�ܹ�	@V�P{��*!/�yU�Q m�)�����ݽ�%`�Ń�w���|��Ʊ%`��]�*�R�KvV �ʡ&F�~Q&I��P�+��T{+��`��x�r�]c�
��X�+w-�W���0p����Gc��ą���\��=��(�����^J���&����n*3��f<p��!�*}�=A����׿~�P;@�U�*��k�[W<��~��S�ם�6,DO�)�WWl�:���w��@W|&5�wHt�������-}����|�T���      �   �  x�������?s�B/`b�3�C�	�DK�(�@R
�O�S�Nj�8I�^�����6��v_a�F=$�4k���������9���_�M�O�"N�<�d���������>�wק�va��;����Ǿ�7�o��M@1���т�X<�:$����H�$hWk�d+�.y0�c����&8"3b���ϦNZ���(b��H�f/�4ϊ�E�f��_E���NB"୉�g�����H?��+��^���f����H��� {wg�]���a��/�_ط�����WN\��	�@�n�vg0{�39
1a��v����GA�?�Pq5#��|�iZiק�>xe�7Q
���>]ػ�����	�J�������v�6&_�E��~�u�#⊄^B�FX[�`onJ?+�1#!2d�����"�?:��Q��5��aao_�?N����FL8�0H�� ��u �*��7�e�8�&�������"0!��$*��?��s�U�����͊D�+����r���.�ɏ���� !"��e�'�6���ܭ ����QS�"e_�`u$������b��4�}VT��<Ę)�(���H�`��<�J"G�$D�{0k��a)Ŕ����(�b�d���&��UZ���I�R��A��39�Q-zQ6%�uV���W?�^�9�nl'!�ȵ]�T�i����8�D/!�H�*-ǭ?�x�D$���NBԑoU}<dŌ'�Tڃ�$DU_��ٔiUŗ�n�GF`��*���G�� >='�!?+S�Xs�\^�%D���\�eq>�K`^�L�[����n��2+�:��9�	�֘�o ?@'����/�|���}a�-���W'�A�JW��%c,j��Lγ��:�����o�n�߿�/�й_��N�`J*W��b�Y��.�x��B͇$�x#F���]��K�����u��c�}y}r�z����/�)��>:h2T��e|/!�X�l˸��K��M��rFBL4�T9oµJB�H����v]+���ym_|z�|�q�9�Ѥ%�$�T ��ɔ�*�Ӣ�*w��n�B�I@�$�t �]y�!=:^�(;S�3X�8���J2�u��)'��6�K����i�'i0��ͣ瘟"x|�#	A��%�
Sg��	N(���HB�6[Q��\IB�4�F�HB�5�US���6�-����eRU�&���k=�#	qѰ��)Rh�u��0q�'��HB\6�W����0�k�M�]v�1)W"9=ƍ$����{n{%���\��K�� 8y�ٙ����08dP��[+J\��KR�{h�v'�w9D��� e"�tb/!�@�v����^L��HB�����c�.���)�?���0���NB�@�����Eӑh$!��V&�)��*�>�$��˘�d2n�$$�'F�7����ʔ{A���1w����1ɋ�������)�z�vF���.���so���p�fyl]p>vq���_H1qW��%gXh5#y����#�;:;	�
�~��p%�M� ��D�2�;٩i�[��ۅ`�c��B�KH�#O��D��0�q�݌�$	 �IG�%���J�}�VB���<0��|�֌~��HN�r��^B��/�2>4	�4!��ɰ	�+fz	��
�v\H�q!m���p��R�*f/!)@7B�ő�u9p���1e��W�T�[mda�,��
�z�pE��`�,���d�pL=��6)�~0!�q�IHa®�&�
�fzzbI�&8�Ņ�Ϗۺ�L.��S!$���HBph*8w���B�"uEH/!�@���TqɗC�i>�W%�"�y��-G	%�M��d�5?J����ԝ�`x�?8��?��f��[�������`�߿�����ÿ[8S���]�;�TM��E����|U�?��V��?5�>s�/�����^���;�S�����}�����la�����S�!�}FBJ�+m��z�o����,��m}xs�5�������_ñ���s����$�Y��/���	      �   =  x�%�Yn�0ľՇؒ��%�?ǐ��F�6�b������6~�u�����k_����������m������.�ߧ���m�{��8/Ư�ڿw6^���:�w7^���b����u��Y�c�1~�C���z��w��ib���������f�������s|���,W�G��7v�g���!�r���=�7k:z��Y����8���/�V�Ņ{�t��|��Ϸ�����}�O�<��l�y��`��6�7O���ۦy�iӼ��i��m��F��-n�y��5o�6�[�M��ʼŵ2os���\+�6�޼͵7os���\{�6�޼͵7o���۷m��Ӷy��k��m�wF�����yg�m���3��w��ݧ��ێy��c��w�v̻��.��y�Gϼ��.o�{��ގ�~���]���=��<�fA<�OeWU*ܲ<�n]���0O�[����)��1���CE��:A�ҟ�]��Ak���e2Z��&�ҟ�9b6bZT�"G�� G���[-��]�4`WAl�U�fc��Ҋ��-'Di�.�f{9!�c�H{��2�ٝ��db#�sB���BldwN�J�]�}�^[�͹�-���]�͢���:g<��V���i�م��.�f���lpy'{�;9�1[��"G��Yw�#f�1[�Ȋ�RV6H/+[�Ȋm��Ķ}nb���-rdŶ��c���-rd�Fe+���-r���=��fn,�5�Чt}Jwم�7�������N�]���Bl'6�mv!��6��N�v�Dl�N�v�D�:=7��Al�b�3��� �����	b�7�S�<A��'6W�'6�'6��'6��'6�nv!�xb��f҉'6�nv!�76���f��ت�U�c��ol���;����76��c��=6��c��=6��c��=6��c��=6��c��=6�>b��#6�>b��fb��w����>��}�e�}�e�}�e�}�e��w��9��s��͹D��\rAl�{ ��`� 6�م���3'��t�Aln)Dl�*Dln,�{�<A7W7���	b#[��fb#����t��Aldb#�م��.Ķ�������]�m�F���>م�
+誀�@��.�F��Η��]�����db#�م��.�Fv!6�?���A'���{|]���k�+��5�ݲ� 6��]w� 6���]���Bld�ܐ]�sC�h��.t�c��ؾ�]��^���x+�SJ��s�}'���������.�F�d�l��.���'��]���tld�����	b#{��w�]_�B�Nv!6����]م��.��w��'�j~���.�F�h��.�Fv!��}����}����}'{r��;م���;م��.�F�$a��� 6�W���]���Bl�:�����s�[���zйl�˾�3�:s��3'6���y�Μ7�m=Ald����Bldb#�م~�ZAl+6�+6�+6�;6�;6�;6�;6�;6�;6�;6�;6�;6�;6�'6�d/p�db#{�(�w8_�U��R���
�*`��w �ً{�ށ�Bld����.�F�� 6���]���Bld���k����]�}|vU�AW�tU���t��B:Av!� ��5�]�nم~j~�م؜��s�+�tśAW�t��Al�S"6�)�5�	�����yJt�;���{�;���{�;���{�;�؆kPl�k�6Aנt���A3����A;�t���.�Fv!6�E����!���_م��+������'���B��'��lѽم�fl�fl�fl�fl�fl�fl�fl�Vl������w �م�����������c�      �      x��mw[�u?����+����g�g��I������?I��i(B"L� �K��d+v�?;q�G9nz׺���$ڴ$R_�
�$w�=� 88 HJ��IU��p�̞ٿ�O��X<My�hu���nm�__X(��K�������z�v�B���>���j���Z��\��9l�Ժ��fm��|�����߻���R��������݂[�{�������������.d��uxh����Yo]�;x�Z}{9��W�[]���g�]��fm;o��E���>���M������s,M�Z�
K�s�z�����,�;�����$xF�ӻ���۩���6Pe�������s�Y�-<a��?�Iw~P�}�{���݄g�#q��
� jV�[��.~�������v�p��;C/��U�9�U�����_�U�L;�;�����:������oύ�Y�|�������}t0��%sh��J��)�jVafA
EsXk6�b���4��j�-��'c߿��0�;0����@�Q�\2���7V�V���3��g�t���?�J�]��=\C�{�ѐ���'·K�5R��|0�(eJUx��<G�/�.f�C��7'�3b�d�O�	��_�;8|��`��0}��β
�O=���f��ƙ$��bTx��x���E��j�ʿ���U-,7\�.�aJV�X�F�7�Y��-�g����Gn��i�5���><��|��{��i�م�3���=���|vAM�}'��:<#Z| ;��@S��6�j��)8�JʪR�J!#|�;.��n�n�J��� �@���y��(�
�4.�Ij�5 !|��:��x��
���鲢�"*�ޅ1���/��K���q^�(ipZr�˝b���#]lsq����g?��O~��OK�5�==8pe$H��.H���ֲ����L����u�o���8.� �ڌ�� L������:h<.�kꨁ/����ƭ҄)x�3>� YT�H��k�z�p����}ǏǍZ������sz
vp��OK�˥f<<I�S�"��#Iwk��F��N������z�l��qf��e,ef�-��5�o�ۮ�֗hK*�y���E�ލ|���X���%�Fqށ8�*�*�q���U�.o�
�������V�pM�{{��W�m�/Ի?�~��-+�V�����H� ��Zm�<k��r�3�����'��w{{sn�߅4o��������%�E�:ݭ��c��qz� �b��{ߏI^�|���JZ��t��,�E��д���Y�q�kE�8hS.(��Û��!U�����lW@�\]迃sP�_�� �����̮7N��y#,t2q���o�9T�Yv�f�;<9ã������K�[����y"���V`����Z�ѭoeC�}p��1����h�໑�s�M�U)�����	)��ӭ��^n@7����/KӓYx32!��M{�uD��9��ߢ-e�
�ޅ5v��܍�$��`�w{_V���'��;a�	�Z�uEI�U/@5�k
�OGǉ,x�ʇ�+�d��%)�,�MΤRe��l.A��C\�7���~�t���Ă��pmj�5eA*0�ЀkY���HLC���9`�S=�< ��"	�6,��Yap�X����͵l��V�E��G4��a�KѡR E#��&,';�@�h� �7M9�@�֐&T��F1ev������e�!�dܦ��B$)|�DE+ ,����zm��me�*n�K��ϝ�f��`���2z:P�B��tN(X9v�)/��h�킖�xdz�d:�<&�g~\�p��u���K�p�He&]�~�l�V6/ܾ��%�2�x$b��߹����V!Zr��4��-6 ߞ�g2���@F�b�%�@�KmX��K�k�%O���I{�iɝ�@�[�9����*ܼ�B�����忯�˛����7�4���f��Ƨ������EL{�� �����3��w�}\���]�����N��  ����T!M�u��_����A��z�J����w�G�co�E?��#����oF� ��R%]���{z��f��`���y�)'�$�(1�{�&�އp�Q���6�M��]�v�|��N���D�\
Z�NeHB�,q��+F.h)��R#��뇪BO5�|O����"�R,��x	�:	[w��"@�b�b���`�����&�!�,-��M��xǉߨ��- m|�-�����e����~��O$(OR������۾[О����T_�5�����17]������z��{�,���ׄa2���YE�,3�U,hN���;kKV��V1҃;׳2�|
Xv���7���?�U��%���Fdc�]*th��Eo�J������7�j��{����Y���(fx��=b�����>�H�k��_Y,�[�DX&e��!�|Z�f!�!�����*����3j��Eɩdpz����"�"5VW\� ��kn�Z�!�ǡ��ʪ3�8���0��y��v��C�&M���1�Lŉf\a���v���ƅ�&7z�I�U�''�A��[n%��N
�P~D���S@n��!7�Cqp�8��(���x�dJa�.� a�M�����n̬��Q���#��)_����?��d��i�'Ѧ����έ��zsm�jU���Ծ�H�8B���j��9��b�5��!�	KW0Xt]yqi��	{i-[�ù�|l��tW+.rB���{�d7�o �X?Fj�%� U�4��"z��6ذ|�:^�t��O~��/~�˒12����,h'0HA~�t�J� �i/m5k+�����x��c-���
@��/
B�;ǐ�9xi͑��$SB4�8Ze"�fZ �m�Ѭm�0o�M���u|Cv�IQ�(Ô���l�����!�M&$pnXjh�ި����qC�N�1��g�8������S2��X#m�1� pAv����-7/�./��<1tk>}�!`�~Ğ�ŀCP:�=������b͵�a�<��͇�|�L�*+�YԩM�'K?N4��&���޽��&��� >�~0�]`�B������˭�21Hj\�@;��#�G.�\�Y���{"<��1R�B0d�@ta �p��m�����:�I���-[����s�NC���N:�*�� �j��vv�]�t�.���.�o�
~?���Oe�Q�/pdV��(������w�WL#� ��#?~*N�s{�'7��yT��s�M�����bi8�#���	��U��sD�7�����}��ꑀ��~;����#N'��G�B<0'/�;#���1�_�w�!��Ww���D��ڻ�Կz���Rn	� �y�d����g���q����Me��yZ�S;�S��i�V��N�Tz��u�h��N���Y�ɎN�=(�<������!�y>������h���>>
"��=M�/�p:֥b>z�d�q�N�0߬]�l������ۛ��6j��B�|4�@?䣺�-�8�E�we6����'_�?۰mExɍ��c�;x�+��F/���۽����7q�����L���@����P��ϥ�@�'Y}�[o��:�<>�ϒ}&RE.��"�E;�.�w�~��v�d�7�!e���?h�_��k
1���t��v	�H���ìa�K��\�Ҥ۹��t��ܮ��Tcv)[����->:r-e���.��,�5�������偠U��D��ӱ��R
"��"�f�r�ڪ4�Q�-,Gˁ��ޚ���1C�NfI����	 �<m����@	5��:(�j]���%)� S/��w�K�+��C�7OqқO� _��y�&w������ >�N޺�Lr!��啡<�!�9������e��A:@���# � J@4�����Uo�ۗ��Z���ԇn�O4���3�,��M9�J�E��^�S	����-b���~:���B�0y�G�q��<!-���q��,'R��'/�?����-��x�����)
�e�ȬV�,B@;e,�N�ӎ�=j���"��y��`_	A�pn1p�+�i7���\o5��-}�щPO���`��ػ^��)�/;��N    �u.�sk�d�`Ѳd}@��f7�ʖd1wE��j%��)�ؑ)��OZT��B�bXE׫���UZ���>�T\�%�����)ȿ�I�kĂeI��դ~����}�����=�'Sƣ�rĔ�Ժ8K=1����|!3no��*:�ʀ�
��X��iŔBKLc)X�7|�;7E�G�9�N@](ɬsΊP�"�����E�ɥ�z�ߨ��:JNNX*8��o`M���ȳ��Q(�[�h�:������q��I_<Z�ۻ���⧿���+^4��O)zG����E|����c��S��_��&q�����@�x���0�!�og���_~9�{ ̯_�n�yD-�q��/�̖�"*C�)Ҿ�4[*Ym�@��7�F���ȍ��(v�L	E���x�jAQ�H����;�{����80hå
�f��\U�M�&�خ]��J�S\�:*|MT��[4�):3�:!D���0���4t�t뫭l�v���u���;�|�d('w��(�D�5�p�1ȑ��]��j}�rmy�ۨ/�7k+�d!r�H��sѨ�G/�ٚ���ij���d��ɍ33��**J��$��TQ���U�B`�Vi	b�>������r�0���U˰�̫�[��U�qz�'��vW�6R2�L�w;�9��щ_���*M�6d%�,�Vx�Ւ�(E�Qk�6h��W�8���6�/�Bx�{s!����)I�cɵ��ď�y���Jֲv�l,5W�"�S��^ω@�����B�F		�6�u�G���.*x M��Z�����W7q�R��~T6Z�R��5���d��uɅZ�U�T�נqzG�7��%���̐�>�L8�'�W��ӽ�Z��p�Ӷ���M��	öL	r�$M�3�ĝ�a���\q}z��'��U^2z���ã׆� �����5Z��f�E1���K���?*z$�S�6H����	@��Y�H�P\�����W6���3f���`��(�`����'�<�Q��9����r�x�4"���b	4�p��ݵL��Y���r�n���v�<mH�#�Z�WEW'^����`��"$��JZ'��z�r��s�קmؿ�~�K��	C�<U�[	<]ጸ[�d��ݪ����a5��s��{���[(��&uu�T��-�
f����+�ǤGڰd9��.��	|�ۧmށ�%>�G�I}����IᬖR)H�1� �(!��\�Q8��FR�bcTr	S\պY�8�u���� �U^W�Ě�?u<�ô�2 d$��\ʚ+���ũ��H��5p�j;�3Q%Z��";2�:,�!@��0Ѹ�Y�To��|Z�A��Q���F����C~T�/	���q�Q	�@�\� rJZ�4/�W�<!$�޲�KR�:L�hyH�s��Q�N"��I�b�]ۨ�aW��Ro5H�<t�Ql�S��n�_+�_Ѕ�1�E�wO���'U"�uJ���IR���d@��5��!
�S�K�`��<j�&+�:m(��TЇ8O���	z�`t��;`jAN3�&�[9N��i��EѧI�sV���<~V��� Qs38@���S��8�ZYE��� ���ZI�U�PVB56a��h���4B��׻��Q��HS8_���ܛ?Ş�X_�{3!�F(�p)�:�J�km��y��\_0��$c��de�����.�X�mH��J�5���ƙ���"����#��	 ���[��н���[2<��	����if3N���	�
Z�����^�b����]�G�S�.��K��<~�{rQy*�mL`�y�\
�R���ؤ��!����	���[�$�I���'�}����0��t��e��3������n���1κ�iY. ����p�/t�][�-� �,mmw�.����Eq&�Oğ�>��N�������#n�˔���j~.�k ŭ1�F��oO�<��T'A�G·�_�M*C�k�OxF%��qI�E�(�Ӡ�D&��R�
�z�i�tj���9��� ����}�(���'����+#V>�X�����:��;�j
'�֔�ڄl�2�N	�*=�@{��Զ1pc)5i���?d�?|;�i{"�<��adT��l�yz�<wU��#g9����E֛����@,2`�Q�ޞ?�p��vJ`K�������e%7�)I�aIm9kՑ�K����&S����d��05��rD�;6��T���üwE}i����� ,>��{�������3�JU�A����o��z��&|��'��j����4Y��	�΄иNL��A�=��v�Rc��jԗ:�ݵ>s���%8�M>�%�(�E��4��
h�J�Y�`x��0Ƌf`��<����_A+q�݉�
�T�j&B�&�M��XW(Ehd����l��][Z� ��r;��Q������F�O�ØX�0���#G�>	\�PJ��&�1#Rʱ��[����9��4�80.��j}m+k��Ac>���'�z����((>n>:e�J�7$F�T�$��_:/���Owҏ��'�ҩ`t��'���jǭ�LHţ'���ģ��"�W�}�T���A�� ������>�!'����T�g�V�uZV&�bLXP�k�WZ�����W��QD�"�ӅKQD=�K�U��0L2p��3�af&/���~$�1b^�+<��pF�t�_WY�f�$d�#0�����)���N� ����N ��i	���P�f�&Z�e`Gz�Rh\�u���/����A-�Z���|*�=bS����~����	�����;�5�u�r�X��7��)q	cq��`��*e�9S�"���x����j�l֚-���]�\Xm��)��oDGF��[�&�ֻ��R�N�XɳJ�S�����\!�$5�Z8 !8|串���N���ˍ����z3l-5(�R��O"S]�<%hḞ xi�ߍ�լU���t�Yg䢵��|5Ռ�1�� �̯ר>Sң�Ew�M�f"x�%F�Ԋ
_��bH���[c��2������UǪ�Qz�A
���C�+!�O�&,�Tc+l����9B�GUEmF����PB��BY��P�	_T$�Ҥ�����Q7]��5N�r�W72Y��w�j\�]0�������)�k���X:1OmI�s�0*@.�֦
��]�RQ�f�R� �u(=&�>�}��� ��QY�C�>`�F��1��i-��Y�7Ƙ7Ot���l���Av����w���*C�1O7�k�P-�h�3"��@3+�Qh��qX��A/���br,�{7���J�;=_���#
z�A���.��LK��ß��_(��a܅R�#��S�<����f�q�ޡ�族������;�@����V�Y2<7����Fr���d�޼ؠ�ᯎ�<_s���e�i|�T���yZ??�u9_�%TF�t����
&T܂�*Yn4}�G�8��d[.��+�v�� ��N�;q�.I��.�6a��9 ��2��%�K۵�J�ߨ:�A�a��!�eS��I��JN	����Amӓ(�,���S8�SaI�J`��.5�k����>Ԝ�?^��f$ȸ�^���D+J°�����.����_��7Z�ٿ�_^;!ko$t�� X�~�ܦrT�Ҏ������s�ȱ�PC���?��&?�P���!X@%�y�B[`Y��e�V��,_�/G[�>G�
z#w^����ZЛ�[���"����~	���IJ��A�IÌF"m������R�ȍG�tS	���⋵	�h�Ҧ6���3�l�	�a���|�p��m���G�P�i֪�Uq.C�`�X�M�̯(C+��m�,]�c�p����<���5��G-~=�<�q�W�G���'Pܥ����x�Y{E%�?;O <�Q�ݤ~;����-���������C�[2�9��!no���^>�'����ۼ��X�v�4G��qt,�:`]��; "�Y8��[d�#���7U
,��+bv�"�5�^3���#(�l��&���T�?	��b�醥	H�6��S���2��)ACa��)#__[.0.�Q)���]�a�:Q�;���
T�    ��~ڻ�{��n���y	���<$���,�E�{b�H��[1�L�Q�����*(��EҪ���Ѹ��lS�p�Q哯{���b�������ȚI�x��6LW�s.Yϖ�
�#7v둺�&l��%4b������[d��P�(�|�z�h/�'�ʻ�c��q��5��=旻�H��s��]���1�T�KKm�u�R,E���06������Eo�j�|�3h��*T?&M�M%l�f�����V�`ތ3�XgХڄtj�@Ns+��62�K�Y�B���<�wO�t��f�;���Ƀ	�<e�'?M�z��:�iU��O�"�ø�$����'.]�NQ�T�'N�KR�S����������	��:F��������=��p��0�i
����~���\��l��<<E����*L/H!i�j�fV�^?sq��Ծ����+�����.���ϋ����y�]�f������t���[�����S����-2��#�ޅ��C0��LD�������@��W���Ы�U�4����&�y�q�U*���]P�z��;���f���)N�Դg��e��E,���Z����B���ng�����y�ɘ��6�����b[#�0��1�Y�y��~�[9��IA3�M�g���]t�����ݨ�>�Y�b�����i���]0��r%*f��c:��3��8�ᮟ�p��>�o ;�����"��a��!ъG�Dc]^ln��<�������?���� t0 ��"�\-0�h���lex	�'bR�i�	|+���#�7O�_��x�$L��i.�H�*��P����m0�i�bu�PC��� <h�8VXO��m�u����˟��~���qjXg��%�TB��B���Q�O��	��x��[#߶>���:{�)���|��E ިR!�m�_�Mݣ�z7)s�����ƞߤ�q���9��3��gRi3���`��Y ��8a�]4f�Y	m!�����ᢒ���N�r��bR��P=Kt*�|�U?A寞�u2�T�Q�q��}�rGk�}(�2�(�
�l঩� ���~�/�Zs`��_��c��߆���E<'�6�Lh�7a��3S�R��'����Orİ� �<gg����8��Đ8ܣO�O�p�:�������9p��Mt��O��_���u>b}���J6��٩�}ƾ��P4�v��O��eG�t*y�\,L��\�]4�C��P�a�'�p˹sc�6��P�:5����.��!Kf�aTX�p�h-+nA�4�nO�A+�����W���f��V�)i�c��}�<�b�Rsc�ೃ;��\������_����{��>E���듨���L���H��x6$�|�&��Z{@j�w<(5r0��q΂��� z�Y�`�ڑjذO�)�	Q�DK,y�&��r�TE��j�n�q!kf��l��X�\�Qa����{�r����.���6���wځ�S_��������Q�[�8O���A���M=��L��4�{��ߢ(�ǆ^�}�WI8x�����ê��_��'�^�&���zw���B�].jPuڜ��lnld��_� �4�pz!���5?�]���WKfg�k�)�%Z�$3��Zم�V�=����q%=]+�3���7��$i�&,$#(E<�#;��6��N֪5�Rq?���`%}2H<��@)[G 窰��:�,$�g	��B�]��/-7��t��Òy�O燭,%rW�^�#�f�VR,:8�t�L�����_�U} �
�A��%`��TW�8��2�s���Z�hnv�5�ڧ3�����]2|�5,�i8S�*���<Y�m������7?>)��s"��w!+���>�<�k���a�ad��qm{�"9w��6��
DW����_@d!R�TER*����z��]��o=D�3��OIG�������Տ�ˉ�*��c&T� �d-��H����*+�zVD����M��Q݃��������s����O!z�[F�;�>!�����f>B�ɬ���P�Ou��b	������A�"հJA���\o�yP8h=\�tn��Oİ��L�0n�]�����>�.�=��y�Ro�.�G=�pD�Ҥ�j{(G}CS��>�E�r��,��2�]:�3�'��������?i.�d2dr��X�����m+˛�l+�p��7��r�7��u(�����d� ��?�l�Ӻ�؂V~k��t����͛c�θ�βĐ���m�����]�C�g<���#�߀���ޗe�v���2�u��(A��%�(�-��n?R�,�C]�0fgӰƬ�����.�z���ʆ�<�q�r�Lc\�[�|Y}�ǿ,�/�ZkV�J���u���P0�Gn����e�t���ցw|����>'grl���I 05��/��3 �gXX�zpxv����@�"�k�uM�[�7��8�|ʋ��;�\1��4�:g���˹�炞�X��c�� �y-�g���V�8n���1��Ii�N��!>��5� +&m��锉�f�z4^���V���xS�8����u�@P)b��H����Qc#r��)B������7���Mz��n�M>�,�r��M�8�,�-��]�/%�<QsL��XD� R��Q�4�u���رD�� p�n/��ޗ@�2��T*�A��D)l�=�����!��ȍ'�INR��}��>MF��%tV�i�3��r]�f�jO�l�9F�;�! ��
y:P��t�Ӽ���+��*���o9px�y���iO5Y|�03*�́ ���M0�k�-��LsPk�4:���s"�-��ȟF��>�cѰ�T4b�1��s�n+�/s���k+��j�K�7cJ�/)�ѫ��d�.oY�VCt�[��R���R�Rm�1з����0���`;6,l�%��"���O_&�;�e0�U$R�
�B�GEa�\ndj<���4D~ㅘ�x��ʺ	� � �*�.����,�<<=��WCG�H��/��J�8�/���F��b�-�߻��P�z�y��&C�����mɐyj��.E�Y�a�[�鹟�n���C��c�@�k&�s#�g0�|�ʩ��ɶ��Ly
4�2�V��vV���Ƒ5ҹ=\ڳ���%̩�<��t����@7&��b���؉��}����R�1N;c5�X� s����N�B� ��h?,�?l[��1���o�G3%A��K����76U�V�^��G�֛[�5��*�iG?ǝ�G�����`Ƹ+3�wQ�S<6t�k
�H�;f�=��X��Ü�7�;��tg�T�=Ć�I��02�� ����b݂��эv��f�R�<=Ԅ�;�d�����b��!��z"eIƸ���8_�����=�o��tL��r�ہ�� 3�p�ɗ��C�!g�M�V08<��1)*4*�7k�\yw���\�S��)��k狚�,�� |���_����G��R����v`�ߩ.@��YfpLU��{��^��
�#�fD�3\2�1
b���[3�[�;_L��	/-}�'o�Veѷ�H�ʪN|�So��r������"�Ǣ�CH5��e����뢤��6����z_��b�5Ye��Lq]�H�|Wټ|�98}�[�v�O���`�(h���p-��r¨�3 <{CQm��X�FjY��IR��̦�s���vr���<=��Ƣς��0�`K�.hS�_���1��G��,�x��Y�?�X�S��Q!�"4q�?�#M��=w���PQ�cxe߇��9�eqC%�g�`�H͂�Lx�ja*0*��c�6�h��w�rn����կQA��?/������[���s�˽эvm ������xPZe�`W��^7U-z���V�q��k�Ex�C�"\R=o�Ġd�[�-7]P�Գ�yz��tӻWB ����\Jg^D�b԰NH�류E�������\B)�	�45H`3	�y:[n^�]^��7c���>��G��ܚ��qBO��=�     �E[�����b
6�i�a�B+���cp��N�������ߴS�Z��`�D�U.�<������UeŢ2�:�L�OQ8��t�&���޽j�����j�]�n����������$� �*�V�
T�Ⱥd#�ZZi�ֲVF���#9���LN?���$;$��������.i:��DZ8�8:@�&)3vD.�.�u�����*>���'��lʡ}:�̀�SkqB�ػF�R�ؕdF�Q0vf%|cW8vǒ��ʊ�iꯎ"���>8.����kЙ	#C&��Fƥ ݰ����ٱM���y������ܿ��q�k�=�sg�6HtyI�Y
���(�G<9�h��P�!���#'�N@X7)7<�2��NSt0�d�Me�(y�a�2c�}"��P2�pn�a��8\DQ&�2Q��0x`p�H�	:�ᡐ0b�0(U���#��NQ��{'��Y�@ôR(
*�@����E�~��}"ʞ�,xfPb�4E1G�G�us��q�T��g�|�R�ݧ�^Wzw�-�HX���<�Īԥ����o7k�:G�_>� ��9�� ��nW���`�r"��i�CJ`�Yp"��8a����	�uT�`��2�Ŕ��-0;��]�`�t b~���9&��p��1�A�c<�F��#�
D��Ci'�\r�B��T��F!
2@�hƏz_d����'��q��Y�Ʌ�h���O�FY'�:
O~I���
|c���R�� �2� ��5.����� l����#�u*d�V	�֡2����Q'
:QЉx�0���J9ac�<�"�R��L��z{�ѺDQ���q
�SD�:G��T���\/fH���~N�^��IN��9����ю庈i�>�K+��G��NH�SZ+�c�Ԥ
�X��<Z�������-�i��C@(4W���p0����Nd�G��a�<ܠ(J	v���i#��#f�X��qG��D�'
=O3"[�1̦,�eJ%��Ԙ
)�a<�e��鏀�oP����k���4|N���|��I���y<�Ş(�D0<�`xl��re�9������(�D�'����q��W�ˍqB�u�Má��)�t�eJ�{��g/�V���˭�j�c`�}�J3p���NH�w|��W/`�.q�;�;�R��
����ڤS[�^��Tk�o��?��{g���#��zTv������[��|���I��ϥi����AF��M%D��1�jm�h��Ӹ�[�uB�kH)�f �rA ��h��vv�]�t�.���B��U���OF@q*��b1���D��� ��ȯ��6�P���S���0�����y�w�9J`O���GT�zwxg�U�
�&�1��p��[=RLy����������aG��_�f���	-Ʀ5 ��WO�,��߫�[>���	�`{A������4@����C>�q�>26�	��iUO���m�E2�����|�{�{�C��%���n҂+jxë��p^��|�L$p���U��� h	����l��imז6�ۛ��h��|��2�:�,��#E�3#��mȉ:Kak���U�ՠ�#P� ����s�Ȣ�c��������,���v'�JX����?F�V ������O�~��'���/�G��xs��:��&d9�U�0*��S�N9���z 0>��Y���nmo/-�\^��� ��'G���0���#ßi��
X��h�^��_���οA��}��`���<�:ϟ�|0d�迚�Sp&-;���Rcl�#�!X۪�'� ~td�K��W�5��"�91qMEP��AaƘ���l�AxpB1Va�<�$�/mv����~= Se�?�:*]��c�������93r�7A���77<�AϽ�3���p7��t�z�O��5�+����D�d(�0�Qh�����<M�1��fΗxyd#@n
<^|B��5�r�5���U:�*8�X�����L�S��ƦJX�A<Ðgֲv7���<y�	㙻t��jI�0��|�Fb%W%<EL!�,˖�UR���(�E�{��?��>��QL��NA���,�߿�����9�Sn����xPJ��N�R��,�з"'FN��8�f]�������r5k��u*�
�B�H����%���եK��v��muֲK��z���he��N�NL��|��C܄�o��W�ue6�rrp�n!=d"�	�/��P $��t+O�}��?�A��,Ø�pF�Y�-,�gd4���5�&�4�����\���nϷ$���*��o�x���gYG��*xD����N�]S��|�f��_/$U�U�@,�J�$�<� >j��2�?x'��<0r�B`�~�C���P(��x)�*-�Eg�Z��
Ǣ����t�g2:F�#J���W�O�7���x/4�_��m�c/vاfQ�36X
U'�a3+�[
˓k�[���lp�7��q�#�i�����NjӚ
�I��ػbBp��B^�W����c[�
�'�eN��?�-S��3��e���h�S��+
�|��{��s�H����O6ẩ��t`$��C��*S~I��5"vY�*a�����W�� ��ޡ����3G��-0�a������vۻ�8�ٖ�N�0�: ��>@:�>^��q��Yp��f+S�B6r��&+�̜vf;�3�R7�9Ý�?��9��q���ٜ��|�sa]��3>eY��o=�m{�Jm��9���j!a�Bb�mӗ��Cx=�=vt:���S�
\�F{��M���A����'Ժ_���l:�>���Qo�������F���F�J7��Gp���ة��hxawW-���{�����W�������	i���/]t�i�NBǍc�2�pm�S�(r6rv��֛u�,P����-�	/G�C^�'�
Yq���#9!�;1���!v`��r���#+-C��C�Tm搞�]C����i6�� �In!���C��!әT��9Z���L� �/���X�
k��lS�o6��T�	z��2Q}������-8�L�?b���	�Rސ?̋s��O{�'��ql�*�����3�a�I����u�;�wE|����'e�}���w}�6��>h��Dh�I��`҉PRc\�f���N^�ڍNv�Y_�5���;����L��fM��z��Q�C��W��P>� �ޗ�	���v�O{�҇2����SsRx��{�Rle��5l,8b��d����0"!!�ɔI
,ַ���&S:�`8��Y��G��]��r�ĕoH���}_�܈ԅ��i�i��m�4�k˛�յF�B����'�q�d�M�0s���'�ND��u������ٛ-�JAW� 8�+QqubR�mXŵFr<8�9�a�J@��hK`E;�^Q��(Q����>&[K�.q	�]� 'H\R+ ��ǁڵn�5˛#<Fx���D��/�L)Wz�eШ�Ua�Q�V
@F_Y�g��h��Ș7#2Fd����1��P���%�l��F`�T�9u����0a*Ԍ(�����=�2UsD�Ll���"6=�D���%�ee�$�+�� �(QA	�kܭm6k����][��@W�}��LƁy0�m>2��f��{I�z�����&0�\����:1\Ja��}�v��W���kIʩ{����wo��19s��]�(�o�~^����r��4E��p7�K�p�G�OK�M3k��#�)�6)��I����J���gױ�n��ȭ��.H8!Se�c�_�����k5�z�Ji�p�0Y�/ח۵���4���v�B�	+����v̨9}�u�y��W�=��%�,��'���Ƨ��>]d����2CR�H�퓉��'��(���c���O7t�f#����*��Gy\	����Qe�#m8ޥ�Jp�X�H�V��M�u�AY���\�p�[��ϨO%�uV�T�k�T�v�⟡���b�^�t���l�Ա[s�{��Ɇy�˙K:�	ޱ5�:���DZ��������e�Y�m�B'V��V���3+G�.r��    �Ș�p��LCCnֺ��������E%�gL�`�%�HK�g��Qؤ���j�Nw�A�n�:|E�Yw0;>��b��\	
�O8�)!Ӥ[k�52R����7~�滈����/`�^���pR��/`�
�/i�<��Z��j�I�7h<
����)�ӿ֣�䰋a��3?�:/�ړ��8-g	��� ~ �. e�uj+�O�A�A��=ڰhW}@���#�� ����4�m!H�d��4�Z��`-QA'�Y{�H�y��S:�A"6���U��vH���h@���{%i�M���6�%J�^K�Qnri��l�����9�<��F�<�
Z2�X�
�dGI�T�����hQ�z~yږ���p�x�Q��I����A��Ѻ�hmn�?��>m#~~����lx*�S�l
[!YѐEҬm���A�T�?��T��&���4do�I*�Kq�I V*iշ��f��B��Z�m�_�����焁�!��;�1��ڃְQo_�_辜�������q�� !���|�.��^ř?���W�U��I4�Ɗ�ln���Sue���	h��5Z����i����=��Xt48r�b#˃#�*a`��:U��|]���2ֿV�aA�I�/t�P����k��.)����ݵx�>�`)�25!�6����\�k�,�Z� .t�N۬��zV�U��I#w�
m6Q�99��VI����קw��w��]Pރ��dV�'�6�f�����i��L^H�O~���Tj�&��Ia���ḶI���VH��W�m��wa��CK9f��Es�ŜjP���X0Ռ�ܤ�r��U[���z�C������a�j��ɸ��,U��ߗ��qm�l�R��4]F��^�nye��}
��_chaTy	-�q�l�.I��iA�#�K�[����SG��U��N�}?��.�v(���r0��Ǉ�9�0���@z�Nx7{���T�50�[h���<�{%F��^\"Rm��p��d-kg��V���	5Oǰ��Y�1_ǭ܆3���Ee��О�)���N�hӤy�4b�s��'��ie�%���z���7C�a��� ���][.QZ�8���I���Qo^&��_��x���j��B�}p�F8�`�$�Z�\�����o�4N�0{_���*9Vw��Z6b�\��`��Y1I�V%���v��u*�z���OA�ȫ�w��OY��8WA�#x�e,�)p�������K�z����
K�/��PW	�J>�/5��%f:X�:��y��-�!^��h;�>�cA���|�]���w��I���ٙ-������ej�����ä<��b4ʑ��E���z�&U��P@���Χߣ��Wz7:֍��ob\���{t��q`����c�~.E�\Rwy��� %�ș	���-t��11����s#bEĊ�u��C`r�1�H��+%�	DZ`Y-8�"�� �3�:�"\E��p5�nL+�%� V�Kt�I�
'K���0�a��S��_况�"І��fezofM�kfC�# CǙ��А��n��j�����*B��Zs���-g+�,��y��"RE��HB�B��m��|���-��}̛x��'X��>���S��l���M�
�c�c��Xҩm�\�tq|�k�{t  �V�ZOh���ʓ��]�q:d�gI�:��Z������$#�U�0`�v�����~��6/���ȋ?:a�%���a �q�	�
�#)���V{��.�/�ta��,T�ßD�0a�i���3h��C���;���պ���W�`�m1 fɄ#�^<r�ρ�.�S�T�J	�D�{�.�7[�lk{}i#C�z��^�����
�r*�MZ\"#DF�<[	k�ww6�#u�6���ń�o�I��GP���_�M)��E�d
>Aؤ�L�Y�\�5'�f��(�ET��QmfTￆR!(�GE6cT�"�S��Q�?O�v�r���AS]F�Z�tk�Ϊ?��� �&�����f���\4�LP^�ٙ-_xD҈��#�u�z��� !`�=�Ӫ?��YȞ�Ͽ���';������ܧ����Q�-:Vx�7Ȗ�C~N %sN�8��_I�����}��S�w���Y</�wK0 [k�m/+�UDѧE#�E ;
�}>�Rv�`���n��(�"��8vq$�W��p�K��� �XXz)ՀX��'[��eJ_@�"^E��x57^������1�	J	Ф,�)h�GT��V��j-PJ��@���쬶�k�K�����:��J�;�7����Twz��*W�������C��8;����~��~����_�z�׿���)�ţ9��6�mDۇ��7(-)�R�Qo�B^�mLJ�{�:���s���}�F�r�A�k,� �k�ݛ�5���6�;�Y�w���2Q���!�,�\:%�ᱞ��e|��QE�nܞBp��ޡtIo���)�v���@��w��@��DeT[�K:��E�^k�_���E��FĊ�u6�S��N���3�J*�=R�nbɋt����� Șrº�U�K��r1!^�p���s�l��+�C-_/i��)BS���M_�2wG�!���Շ�TX�,�"�Jq�Z���b���%<�N��qC�T�"P���H3|����q�ԱI�cyj �r��)��j}m+k�dKT�d�V�@�� ���ڵ��/��Q@H�:��[�� ���:S<��j���������Vk{ui��ܤ� ?���zD��
��
�u	��@A�м�q��k�>���л���*b��x�Jԛ�VI
�M���w�޵����n"��}�,�A��hi��X��]-C!��GF8.V�>hˑ(���uj�D�(�D��@�t]�Ë?���.�@*�w��	�7<ISf�
E\��pe+kb��r�^�.�e�^D��2e���"~}���C�[�oJ��D�B��v���Pd�`�<�t�]_�ۍ��Z�} ��(�PD��Bg
��`��B�;�]���ݧ$`�N%�ą�iH��	c.E�&�H��l��jlԬ�[�" E :K De�yC�70��)��y�B�-�p�%*ܐO]Ȳd�1	WD��^���^�S/c"!��dx"������By�Z�z�Wp���'O���㼏��:��dW;Kd*M03O㖀3�p����5�е�h]�`C�"�Dԉ�s6P'7�%{���ϼ���<[�����`CI�0<^�&�M��6��ˀ�3��l�6����	�l]ng��6�/�#�Dx���t��_z����ۻ�{���5x6�'�|�R_���:���G1Fݣ"~��� E2�ٿV�LʤR��6UT��P`�L��%&�6���Vq�)"SD��L�"��S_�2y�J�#]m?O'���1wP�N7�K`L3fe�: O���0�(YR[۪���l��Fv��v��g�"�M���cc�wi7���o�!�2�RB�P��*k�C���Gɣ.!*BT��0D�K�nLBy��W����U��c���"��2�Ij�c ��IU�X�"`=��?�Hb�HhͫO��"eTPJxdN8Q�4�L.�Z�5����hu��͵n��ֽ�0�Q���#$�Z��UJ�v%Ǫ�4Pİ��
ZQ�!�o� �ΙP��H�RӸY�┪,�<�UD��Vg�f	���4�d[$���qJĹ���٥v�b�QDU݊��'BO��"�ꚯ���3�7��aK��q�`h$�3�F�)M���^jlQ�6��l�#E�8q�rp�cF�B�p����C�{�<Gޮ����L��%��5�����Z�iiyX}S�u��Q���H�ǐ�ǚK�"~E�:~����cq�#�f�Ӓ�"�D��S����@S7�_b�Dį�_�"~͏_���K��Ame��E��4�ht	�$�Wш��+"��E�tBB�EL6�
�WJ�y�ZD�p����d�6u���H�O�y��ުu�����Zc�<s�v4sE��`�t�����}�y1)7.���q������J>��9� S��ЙB�&m�@S�*Nؔ����vD��F�    "�]F�ؔ�F�
��C֭���@��W�d�~)۪mזV�v��?8~/"QD��DO7}Ls����n�s�5X>. 
����|�B�������n�����{M�����oN�E�J�Ra]�1���pG��J%۵u@�&@�F{���lz�fĳ�g�"���V ��ۓ�?�� V˛e��mr����6�j�
:k&�r-���uV띮?`s�f��m�"������W1z
�7-���d¤f���Q�I��'=�u����Yڮ���9��G���/ތ�wq��J{o���>t��N��&�G<���9�	O��J��T�A��z�#�Z��}�F?�x�.�]Ļ��E{�Q��o��xg��2t��N;��9�ie*M.nv��fk{{i�֪����-�[��n_S��7��|2(��]eX��(Z*�+(���Y��h5s���ӎ��"E$�Ht6��S�S�]�6
I�w'gc��!�����<�!�E��lD����O6t+�QD��Fg��h��P�[(�2u&:!�Z����j_�}us%{���n�[�l{�:��"BE�:Kտ��t��U�8LˇR(r�GCZ�
�堸��K����j��f���v�u� ��Э�P�"B�%����_������N�!��2������Z�֭�Z|"�D�9c�s�r�]���\�R"*í���k�/��L��z�f�����j"�D�9P�l�iߒ��{��r!��i�����W�������d�G$ijx02]&Vi��(xS�d���m�חR��K�C�o�o����6��E1��ΤE����$͑a-�Z���?�L�^^�_q0{	�q������n^�[���1�� �U��>��'���Ĕ���E�D�g����G!�%E~j�47�1�2�"z�c�"TF��P��1A�'����A�Ĳ��0�{�=xߎ��79#�l�Y ��p�ҟ��k�������u��u�����"VF�};�X�"V΍��ի�W�������g�t%��kw�<��;�������W�������G:���`BG�����\i�LSI*a�H�b��5&�z���#G(>�P\`1ZN��c׃�a,��<d;Ŭ��r�ȲWvN
��BɳU,)ȥ``��#���3J��<�=QՏ����_��2n�p��ȩB�`	r M��FФ�ec�#�FЌ�A3��ɀ�#(e�D0шJ8�� h��h��r֪�<.Y_�e�FT�#�F�=��[e�K.w�+�Rx�  8Ws�{`u�d	�V�)a��@P��Zh:;��W� � k�Ȋq�d#�F�� �T��#�|U*-��d����4h���'Q�0N�F�@D��h��m�!���SvR�I`'Sf,����<�vfڙ�v�"�E�{�h��FkY�p5`�v!��LZ �h`�حx�2�f��3�C�`Dس����<[ �:��	��3߇E��?�	���/�+혶a׎VZq���fY�-�@���ɝN�%|����Xq|��sѐ���>��sw�7:\aʫ�B��F'��4�u����>G�]kZ���A�H�_|P}�y��)b߽ż]��Q&b:�8���	�2�1)�1#�"5�):ۇ���g�����Qk���!�|��!uc�}���J���v��}��{Չ�>�Rq��o�z��Z\`;��O�ަe����&��d7 +�A�8�DND-�7`��5<�������}�k�d6l�1�)��6
l'���m�;f�1�w̸cy�|��a���Ra�Z��z�G#����y�oǍ4n�q#�i�H����`_4l.Ն�2-9��!�n�2�2����=0�gt<u焭�L�r}i̡ SW�\,��ޥ���m�Z|�p{h_�]��m�*���>�X@`e\��r�GS�f�S��.t����*0d",���� L�S):�#�(�+/5Z>i�xX�A��o��g֗>���o�j�����:�Ѭ0x�B���8~��9L�����w�X�ɹ�nֺ���60����V�9=���I�+��$H���#-u6�m*�<ԎQJ1J)F)E�L �QJC-D��� �<#�E�Vg�H��)�H�V*���E��v��j\������#DG���h��ޡ3O��ߡ�H*�.,V�s-�DI����]�>��E=�e�r�L(}��ܢVj�sNx.<���Y��X˶����و�}賈��#�G|���wX�d�J�~77�Q��}��q ���ӿ6�E�(g�|���<�D��$@� �W��Z�ƅz����lt[�È?�Q���#�G��Mr0���BW�����jqZl�UG���:`�  Еq�0 t�D`ҡP�Vmi��ٮ]��>�a{q+�8q��y`��n.�ċߣj�A�v)�I���Z
��W�N�!�k^�
9���|�"�E�;a���o{MߋzcPX�q\0,�9c,C����$B���J���T1�TL9ul��!�p$*�W��XN*4Sm��B����J��p�CG�tb�t)�p���ͳIq�,B\��q�$����o�ߠ[����w��zh(D������Gu,L@�$����s��dU�Qow�V��ڮ/u� u�lk��qp�g' ������`����O	~A�+���|�s W����҄��a�t&�I4���c����?!���a�R��&aB�BV�����$��%�#�E��1�ʕRk�p
�XӒc�L�K�I�&J`MDX��a-�ډ��h���le��6�� �I�,@��d�N�ܮ��l-�O �(,��j��gΞ8�����+(��!�M9�Rs #`\Ҫu�HM�K�z���xC�ự�Nğ�?g>#~�N�[��[{$J]�L*�L>W�2��̉�I;�(����Ҥ��Jmi�va��]X�݌x�,��ǳws-���y��H���ϰ<����&�5	|`�LR�I<�hgk���F��@��P#��ؽx�+�A���j-"�]�(��)�t��x�	t*��a(�J9P@q�N$˵�F��9�*�}d������߃�א�0�Cο��˶~m���p�Zdx
*w2�v۵�^)�#�G��L�8����9K��������]���C��}*Jp�_�C�b.�L��hl�
\�C��#.D\��pZq�>��qz���U
���籗��o�5� LjU�(�MR&��P���dȬ��Z4XFt���t�ӟ�j�.Y�$V�C.@D^�⁝I.ך�����*�uI	ݏ8q&������Ƣ�|��\��,V�AF�	��V+� ��u6A|��Q�A�"=%�K �1�\X�3D����e��u������܌��'��� �?�Ѓ����y̝�e�N�p�H���Jm t(	p�&k�z���uW�Wɚ3z'�M��7gn�{�c/�EѸ��5_j�q�j�-����Q6<��Z�n�뫃|>�n-�a6������w#�D؉�sz`�����;���\��%��<o���':� �@��_�:�#	�Nc���(�X���i��b�Z(�p SI���mնkK��(El���tc�'�a���4�DA�(d���(R�^����*��B�2Vh�d���V�v=�Ԯ]l4
#�ЭP�"@E��Pެz�>}��cH���87\�M�:��	JK �	����8�e�J�"(��R������@H[��"���q��F:!�tj�^��@�" E �@7�|�%�#R�tXO��2�*B�d�I�ie[�;�ح�H�""�AD����#��n#�)6a�t� {a�L�j��Jg�Jf4ɿ6z'"OD��<gy�S�n�� ��-\h��e�3�D�
�M��Or(N����%���^B��/�܈�a'���������E�t	�H!�0��r���ut�Eԉ�Q'�:G�s�01}�3�V0���9tfC��l�D���@�"=�<�Q�@�#C����[i �(Z1u�������C�V7    #E�t�p~�J�� �NS�Cnv��]> Q&��Vq����9�1r��N��71������.��Tn9����!���<�9��D'�z='��ZG8��~�TP�	~�/�
E�~��gg{#`q#(?X��_�G�{Cn����C�����&U%��X�К����5l!�)��P�l��_Zk,m-me+�>��Ѝ�_��"�q���œ�_@�M�/�2I�V��<w����&�2�X]��8����x���a˽5�(�����e�-#nq�x���w>��z����G#�S��k�.��v�)욛��bius%{����wm�m#Y�����`��ê"���yڇ��`1;d[�Ֆ�@�3�<M.��n�;q:�$�N� �.�N�����@��=���K�dK���̠MRYU���s�v�Z��A���1�)�	�	�	�	�ɧA'�����ܛ�v#����<���@��]���`���0{1����W��N횃g>a�a�a�a�a��T8���M�%�F���-Z)�C���f�Ѭo��;D!D+�g�(��p�~��	�	�	�	��G��#�r�Q��=��Y}F��xM�x1�2������qs+1:�#,ʫ)�Ƅǉ����������gA7=����!}��c�x��ɚ@5�-%������0�0�0�0�0�, �����wo�B(cg?��VA��@����ۨm�47ڵ��S�;c�`�`�`�`�X@�xB��,Q�.��<�0A�*�]�@�1��;Kt��J�|�Y�\�C�4�4�4�4�4�4v��_��صI$��\���|��r��c%E��Z��.E�WZՍ�Vm��1D!�יI�I�I�I�I�I^�L��]"$>�ҷ��?�S#�2h���v)����[kM��=b�`�`�`�`�X@�x���~�_�!!���D��"�F�w���i��c�Ϙ$�$�$�$�$�$�F;�ߤ����X/Q���G��|� t��
e�u��F�mp�c�
�
�
�
�������9��	���q�0�"�8C�����RY۬5:�9.�&	&	&	&	&�$�x���C�*�"��.;2E�2A�}R{��P���9�������n�sx,�/�4���m�5D �Q���'c�^��A;�w�լ���5fffff�d�&굍�*Q?�<-���c%�n��D��>i��Z�v��Vg�Y���2s0s0s0s0s, s<�D��K��Џ���7~A�����1�BC����zs�^n�����6�p����1���V��]h�;�wy���w$a D*�Pe�)�]�]�j5����'�����������7��k�-a��D��Y�m�_G���/��H��!�ҡ@[��)�]kֱkd�ʎ�I�I�I�I�I�I�يZRd�
��wXn��F����*��]��Z������������̱���{7��M�;�7t�}#^V1e���[��7���w¼�������������{��c���s;��Pje$Pe���[�ZkԪe�qE�l:�xHK��/z�R����,�)�-����X�lո9;%)}�ش3w���a��t>?��)]H��	�j��0� ��=�{�lOz����h��*�qI vqC��`O9@I?����� R��2�����rZ �e`� 4~D!%o�w�U�����ئ���!0d�b�b�b�*B��ўB��!�}�b)yw�͈��؛��}B��Tp�lZ�1V�H�\��(�(,�1n2n2n.n�i%<#c���D�P2 �\�@���H�H�H5;����g�	#�6� lq�UW��Kx���������t^��J�F��(�
%<J8�����f�T�� �"��[u5
�= `�� d	�q�q�q��&̻����YH��ٛV�J��8�P �J���P�w�Y�c�b�b��!T�S�FG��,<!�j@6
I8$�������g��qؽ9���|-d���0@�5�QS���X�X�X5S������H�.g�𤌂(l���P�57*��P�Z�y�Y�5������+�r�0�~===���o)3��$�{��zJ�}�ir%اSf*�> �R��S������R��,6y�"V�Ʊ�]�@�GP�hf��ށ'��_ħ�0'���|�A���7ڸ� ����D�a���Fs�j��ѩ�!��1�c������S`"�쀚����ث�xxz�a}�j�Oi)
e��V��Z��1 y�F9F9F9F�iP�Zp)��
B��~a(�E��Q�SW+�!��s�(�(�(ƨi0�
R����+�SJ@'
��~ϴ�^�n������wIA;��R�^�����4�`h'���<e,�rn�,@O�Q��?
vc���V�]����x� �	7�f^X��G8 '�=c㩱��P26����?���[�>U�|���}�X����!�!�9�/P����Slɛ<̌���^E�������xke!�W�m�Wv̘ɘɘɘ����Ȗ��،�����jǗ��/�4�A�٩�5�}`����]\�[9@K?4n���P� -E�j�5*��j{��Z2x>\���b�+ج`Z�����½I#Ӟ�~u��v�?)�m?y��\Ǳ�z~�!����ȻV�Z�jW�7�]��y�у�c���_��l�.H�:�A
#�r΅� 6��Uu����n��^`Y�ъъ��h�_�yh�A-s�5q ��(�U�jsm�Q�(�շ+�R��Fe{���9�c��`4c4c4+r��ڦ��!ܧ���7���w��;a�x����X��ɢ � rT�[K��X�]��mU��jy�]ߺR+��Nkk��lQ�E�wN����i�p���J�Ɂ�C���m�8��O�9�|�1�&�8�ɤ�8������,q>�z�Ĺ4�0�Z�f���=J=�����~���s脾����8gtmF�1%�|��9�-Gګ���5��Qf�nWP�ި|D�W�����u,���ܐ�c���9p/�鷀��4�5"����?�I�Ȉ u	x�J��|�ܩ6���_c����Z�=�,i�Jn�ʞ�!V��ʀ��Fb� �\�л^��; �U����$����@�@Ž{�p�p�p�I���T
ۅ����`Q�>�@���]Ifғ��a��u��[k^9�֩X8)��q}:k�=��ؖøĸĸ�0���m����0*�|�U�0*4�g�	G�k�wZ���x��p:$�o��Awnt211}:`�[��{yxcb�YDyZ�� o(�7
�k��k�ʵNs��R�1.�N�ժu����Vy�r��h��q$0##��F����6�+��^�y� ۍ1+&�M����wD��;��\�Qʄ��pd�I@�r�Z�Q�f\�W6)S?;��F��,|�XM����?�����l&�Et�/���%R>_�Y,E�;ibX���a��d�����)�+�W����۰¾�{�-�XH��y����a	�K�	��0��z����ЋqS�Z^ǯ��	 �,��@� P������Os@��1.{^䅑$s�^����"q�����-"��K'���Ǵa������w�<H��_Yfq��k�R7�>e'o�~�%�1�watR��P�~�������Oj����@e�� ����X�P_e��u{�ŭ6WZ��f�Q�S�..��]NN��������$��Ǩ�-�[8�0��6~8�ĥ��R�k+vo��/���Dk�2ʊ�A�@���}���0���*Y{���[Q�Q��P㘪��'x,-���?�S㷽�2n�Dcf ��:(�,�O3��V�r�ӪV6�	ؿ2������	�6���DO�%Q3tG}���w8�i���K��w�ӏ�=ˉC	m^�}g_U�E�{�L�m"� ����܆�c�?,��C7�/Q��^��4�=k߇�W�@���C-m�`d<>gW������o,x:I�u�Dv������0�����9�>�ox�h֧�o���_��������i�h��Ί� �
  �"�A>�dZ3��j�;�*�&��;�Y�	c�{l�gck2g�ɼ� q-(�0P�e��<��R�(+�&B���RiQ�gv<T�%^�ơ��S��Ej��~�JL�=-'6�9�f�'�S!l|�}:��%%�@�ټ�R*9ݲR�����%��v���9�G&p��<�M�ڴ������V+���j�4z�(�b��p�ŀ�M����X�}-������}%}�l�=!�0ˁ��2�Vj�j��l�kr'�O�>�俠�k�+���܈���4�bNc������3���'t
B��v1�c.L�,���i��=��|�W�SR�q�E8�G2�@�R%ABZ��Z�;٣餣��pT�U�x�#�4�C6?�j`RF'�>��4�>��ۚ�	���G���Z��yss�R��T�\��nQ����K�dr<U�2��婊=���5��ZR����Z�#�����2�P|7�@u�o�%��#�`�C:��/�yq�YT�|���^78a�Z�^j�;�U(�$}@w'�j�o�������B2�/�s�b�nj�a	F��Y?�3��34Ꞝ����3,����ſUW6����R4n�K��
��=*E0��%�p���:�t�ۓ��_Y]mn��M<��p�����B�����r%-�]��\8Q�Z墼=�:����nG��i��{�Z��)� �7�vև��GJ(��$��U�Z[��CN3 �PT�r�t+t�!�y�-}�@1�6-|2�6P&0.�c�2�!�W "��b��٪]qv���O5Z(��@��sa:!��<fB�Bg�h�i���%P�|����v���������f�(�����G�-����C!�S �J	�W��o��V��X!��=<�d���:]D����t��)�Y�hK�?M�$;���_�����w9sMk��(TKX��`�77����Z���y����j$�C�o?ZtZ]o����o��֤��Ƶ�pN���/4as�N���B��sm��k3m��&�阽���8��9{S�欛�tsl� 1��_C#�^l��ܲCM|����44�n3�yn�N����K ��� ��+�˕�Jc#��|:�g��)ar�O>	Pκ'dN���Ph���b�D��u�c� ���2��x�ϒg�����! {�ǒէ����O_N�����X�;����aJ�J��P��8&��H�h�a9��վ\kT��A��:-�<N��	�P*�f��E��K>��u �׈�jm�b-n�����ox�Ԕ�P4�ͮ<<+N�.��وو��b�Xc��b����`% �<^2ʈ��K�R��K�>Ѣ�R!�>v]2���~�8м��Bv����>�%Nǔ�7��L@L@�}���~L~ D@�̳�1�󖼣��P(W-l��(1zHɣ�i�.���A�IOO�9/k��D���!s#Xt�s�f�E��<y�|?��gۊ#�]x��*4&87������K��잇���^v��O��͍{�4�S���`4��i�nf:f�τ��L�<F;M�Y����B����x9)=�W��ݩ4�*�Ny��^m�q�x6��y��O�s�t���V���
����Ly̻6w�T�.�G)^`}u�{��G��.��Y��A����>��p��kϓ�S4��6Y7d)��,��Ѱ쫘�q���A
�Bz z���C}��Y��1�x������LL�@8-u�F)WY��3"��%e�X�Wg�=����獤���V�dg&����#a(/a�7>��8ܰ�	�<�;\�a��CJe<��ƍzf�!|�d(]�Ɠ:0J�)
4��Pͫ�Ɛw-=?=�- �MPRc~с�<2G��P�i2�}�?:����M�l�<)'P�+z�$/�������N�� �ʄ�Ld`
�D)9Vb����^*2�"�i�Xx��'rp��a��jSS´��}�o�>4����d�S�	B�ٙ�x*��Df�I�&e�ڵJgPS�_9q��Lp�j�7��i�2�@,�qO1(t���2q�+*ڳ���~'6��4����LL�	�=�
�t�����~V$(}Ů�\ �8����\�jG���˽�8>q��3���]|��Ɍʌ:�L�7V�Ī�6��IB5.��Nio��o|whE��_�6�X�ʇ[�NUH�+�ػr�=P\�i�ś>5jc�a��L�)4��MZN���GN1�(w�}c��M�my��v��5d��t�Y�l��g�7�I����#���n[S��~h�ݝ���]E��sD)����0 }D�P���J��J��1s����q���84��%�%>�x���v3����~����Q�����E�k��QZbh��B��ݯ2�]9'��
�w�8A����zl�֨K��0F!b~*ƙ�g{ �2���-��wf+=,D~Zq?�Λb1 "�=��{��_+�����}W\�D	#A\�0���V�����N�B� ��C��.�g�3'܍��ur�nCk�bIK������9�U��;���c@�xRu�D��Ҩ�0���^���z~�"�_���ѱ�C�$����=L~,nG���հo縅|a��p�Ҕ��],	b�_� �^,Q�0%:�ޢ��p�����(ѢŉE��� >HE�,G�����支�؍�<��C�'YB�ڧ�Y�f91�|@������(u������o��TF�U���'r�?�������?�      �     x��VMO�@=ǿb/(R�vb�X��S+�rj*d�Z$��8�( ��R�%�RZ(p�*E��B�f�QgbLp����P������7o�mVIUͅ�M��3��HG��"�Sh�h�\C���"��>�^�,/���G�G$߱u��|��W�_������'��A�!�����s�0�mV�K8��}ck�n��?�R��3�0au���
���ȵ��F��_pM�f�ؿ�sa[AE�.,,�^�1
g|5h�-�0�S�既v�rl�O2nz'�����Eb�-�"a��3	�;}$?E�V��5����]���I�@Wl��d���dp�m9UK�,߫Q��m��cH�H��kZ�[Cdk�~���¿P��Niڬܝ���@�L���[F?k�W;����7��`߯���������e�UsWJE�G��N��!놢e
Y}L��$5eqn��T�ǂ�Q�}� )���ֹ��ok��иg����v~7����0@�pN�r�m�qK����c��q��y2���? ٸ��߹�1NgǛ!9�B�1��'�8Df]�̘t���M����H�ۑ�nšf���D��r��깥���.�;���Q�	Z,޲MӔ�!)��1�&�쇶�Nǫp��"&O���\����8Zr��Mu�P~��y9�K�r)߭Y����~�jj����ɉ��$�c�?Qυ����kp�K0	<���%�}t�=�6����\�P5
U��(4��E��D��jq�G�w=�U
jT�H���u�9      �   O  x�՘O��F�ׯO�W��߮j�� f�L����`;�;�q�!��:R��1�I�l4o�x_I������&<]]]]_��w������c������{���_��!���>�ڤׂ�.3{�?�|��[�>ޜ~{s?�������w����ۇ����ˬ<>4~Ě�2R|픮/�_N��������S�ڧ�!��@�̳�a�g������������Gt����A�Nx@_$o����VqF�LL�P7���y׽е��̮�C��V\f%5f�DG���N+Y/K�F��e=$��H≏Fn9��[���yV�
��
Θ��
6#E�c��p�u^V�<Щ�>[��T�J�i[�{I�}�ÉwXھVa��FI��$mK��!_�y�I�:7���
Mv4�:��
y�@3����8p�;�]|/'2V�"{�PcQMm\S�簘&?f�}5�(�)��g$��!BM�`�
y]�����T�B��bC��&.��Ǻ:A8��%7�t�n@F��qA��p�������,��OW�(9�{Mx���;�����ً�M�\��qbo�m��h�J��Ev�B��Ӏ����5��'Zr6-�;�lh�c����xVf����b����>��+ӛ{��iF����m���[-�m�6�7�ڦS�({�R�RL11�5���6���1��ܬ��*��L���f%F)	��/�]G���U��X��ӹ�I��K�p���b�m��pr)�CH��X���n�
@1O��ݙh���[��S.ڻ�d�6�8��h������������xA�%�l��K��gUޮ����<�����}ֵ���ن$#�t�SJ�P:      �   Y   x�5���0�?�T�@�t�9J["^gقPb�([¡�<t,���bv�^����8|�C���P��l���1�aGCVJ�KD�&q     