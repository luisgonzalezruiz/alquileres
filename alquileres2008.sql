PGDMP     	                    {         
   alquileres    14.8    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16824 
   alquileres    DATABASE     }   CREATE DATABASE alquileres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE alquileres;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    16825 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    cat_codigo integer NOT NULL,
    cat_descripcion character varying(250),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.categorias;
       public         heap    postgres    false    5            �            1259    16828    categorias_cat_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_cat_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categorias_cat_codigo_seq;
       public          postgres    false    209    5            �           0    0    categorias_cat_codigo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categorias_cat_codigo_seq OWNED BY public.categorias.cat_codigo;
          public          postgres    false    210            �            1259    16829    failed_jobs    TABLE       CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(191) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    5            �            1259    16835    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    211    5            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    212            �            1259    16836    indicador_iva    TABLE     �   CREATE TABLE public.indicador_iva (
    iva_codigo character varying(10) NOT NULL,
    iva_descripcion character varying(100) NOT NULL,
    iva_tasa numeric(7,3) NOT NULL,
    cuenta_venta character varying(20),
    cuenta_compra character varying(20)
);
 !   DROP TABLE public.indicador_iva;
       public         heap    postgres    false    5            �            1259    16839    lineas    TABLE     u   CREATE TABLE public.lineas (
    lin_codigo integer NOT NULL,
    lin_descripcion character varying(250) NOT NULL
);
    DROP TABLE public.lineas;
       public         heap    postgres    false    5            �            1259    16842    lineas_lin_codigo_seq    SEQUENCE     ~   CREATE SEQUENCE public.lineas_lin_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.lineas_lin_codigo_seq;
       public          postgres    false    5    214            �           0    0    lineas_lin_codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.lineas_lin_codigo_seq OWNED BY public.lineas.lin_codigo;
          public          postgres    false    215            �            1259    16843    marcas    TABLE     u   CREATE TABLE public.marcas (
    mar_codigo integer NOT NULL,
    mar_descripcion character varying(250) NOT NULL
);
    DROP TABLE public.marcas;
       public         heap    postgres    false    5            �            1259    16846    marcas_mar_codigo_seq    SEQUENCE     ~   CREATE SEQUENCE public.marcas_mar_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.marcas_mar_codigo_seq;
       public          postgres    false    216    5            �           0    0    marcas_mar_codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.marcas_mar_codigo_seq OWNED BY public.marcas.mar_codigo;
          public          postgres    false    217            �            1259    16847 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    5            �            1259    16850    migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    218    5            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    219            �            1259    16851    modelos    TABLE     �   CREATE TABLE public.modelos (
    mod_codigo integer NOT NULL,
    mar_codigo integer,
    mod_descripcion character varying(250)
);
    DROP TABLE public.modelos;
       public         heap    postgres    false    5            �            1259    16854    modelos_mod_codigo_seq    SEQUENCE        CREATE SEQUENCE public.modelos_mod_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.modelos_mod_codigo_seq;
       public          postgres    false    5    220            �           0    0    modelos_mod_codigo_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.modelos_mod_codigo_seq OWNED BY public.modelos.mod_codigo;
          public          postgres    false    221            �            1259    16855    oauth_access_tokens    TABLE     d  CREATE TABLE public.oauth_access_tokens (
    id character varying(100) NOT NULL,
    user_id bigint,
    client_id bigint NOT NULL,
    name character varying(191),
    scopes text,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone
);
 '   DROP TABLE public.oauth_access_tokens;
       public         heap    postgres    false    5            �            1259    16860    oauth_auth_codes    TABLE     �   CREATE TABLE public.oauth_auth_codes (
    id character varying(100) NOT NULL,
    user_id bigint NOT NULL,
    client_id bigint NOT NULL,
    scopes text,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 $   DROP TABLE public.oauth_auth_codes;
       public         heap    postgres    false    5            �            1259    16865    oauth_clients    TABLE     �  CREATE TABLE public.oauth_clients (
    id bigint NOT NULL,
    user_id bigint,
    name character varying(191) NOT NULL,
    secret character varying(100),
    provider character varying(191),
    redirect text NOT NULL,
    personal_access_client boolean NOT NULL,
    password_client boolean NOT NULL,
    revoked boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.oauth_clients;
       public         heap    postgres    false    5            �            1259    16870    oauth_clients_id_seq    SEQUENCE     }   CREATE SEQUENCE public.oauth_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.oauth_clients_id_seq;
       public          postgres    false    5    224            �           0    0    oauth_clients_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.oauth_clients_id_seq OWNED BY public.oauth_clients.id;
          public          postgres    false    225            �            1259    16871    oauth_personal_access_clients    TABLE     �   CREATE TABLE public.oauth_personal_access_clients (
    id bigint NOT NULL,
    client_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 1   DROP TABLE public.oauth_personal_access_clients;
       public         heap    postgres    false    5            �            1259    16874 $   oauth_personal_access_clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oauth_personal_access_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.oauth_personal_access_clients_id_seq;
       public          postgres    false    5    226            �           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.oauth_personal_access_clients_id_seq OWNED BY public.oauth_personal_access_clients.id;
          public          postgres    false    227            �            1259    16875    oauth_refresh_tokens    TABLE     �   CREATE TABLE public.oauth_refresh_tokens (
    id character varying(100) NOT NULL,
    access_token_id character varying(100) NOT NULL,
    revoked boolean NOT NULL,
    expires_at timestamp(0) without time zone
);
 (   DROP TABLE public.oauth_refresh_tokens;
       public         heap    postgres    false    5            �            1259    16878    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false    5            �            1259    16881    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(191) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(191) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false    5            �            1259    16886    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    230    5            �           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    231            �            1259    16887 	   productos    TABLE     �  CREATE TABLE public.productos (
    pro_codigo integer NOT NULL,
    rub_codigo integer,
    cat_codigo integer,
    mar_codigo integer,
    mod_codigo integer,
    lin_codigo integer,
    uni_codigo integer,
    pro_codigo_local character varying(50) NOT NULL,
    pro_codigo_barra character varying(250),
    pro_descripcion_local character varying(500) NOT NULL,
    pro_descripcion_origen character varying(500),
    pro_presentacion character varying(50),
    pro_costo_ml numeric(20,4),
    pro_costo_me numeric(20,4),
    pro_activo character(1),
    pro_inventario character(1),
    pro_compras character(1),
    pro_ventas character(1),
    pro_activo_fijo character(1),
    pro_tipo character(2),
    pro_componente character(1),
    pro_obs1 character varying(500),
    pro_obs2 character varying(500),
    pro_referencia character varying(100),
    iva_compra character varying(10),
    iva_venta character varying(10),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT ckc_pro_tipo_producto CHECK (((pro_tipo IS NULL) OR (pro_tipo = ANY (ARRAY['MP'::bpchar, 'IN'::bpchar, 'PT'::bpchar, 'RE'::bpchar]))))
);
    DROP TABLE public.productos;
       public         heap    postgres    false    5            �            1259    16893    productos_pro_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_pro_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.productos_pro_codigo_seq;
       public          postgres    false    5    232            �           0    0    productos_pro_codigo_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.productos_pro_codigo_seq OWNED BY public.productos.pro_codigo;
          public          postgres    false    233            �            1259    16894    rubros    TABLE     u   CREATE TABLE public.rubros (
    rub_codigo integer NOT NULL,
    rub_descripcion character varying(250) NOT NULL
);
    DROP TABLE public.rubros;
       public         heap    postgres    false    5            �            1259    16897    rubros_rub_codigo_seq    SEQUENCE     ~   CREATE SEQUENCE public.rubros_rub_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rubros_rub_codigo_seq;
       public          postgres    false    234    5            �           0    0    rubros_rub_codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rubros_rub_codigo_seq OWNED BY public.rubros.rub_codigo;
          public          postgres    false    235            �            1259    16898    unidades    TABLE     w   CREATE TABLE public.unidades (
    uni_codigo integer NOT NULL,
    uni_descripcion character varying(250) NOT NULL
);
    DROP TABLE public.unidades;
       public         heap    postgres    false    5            �            1259    16901    unidades_uni_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.unidades_uni_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.unidades_uni_codigo_seq;
       public          postgres    false    5    236            �           0    0    unidades_uni_codigo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.unidades_uni_codigo_seq OWNED BY public.unidades.uni_codigo;
          public          postgres    false    237            �            1259    16902    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(191) NOT NULL,
    last_name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    16907    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    5    238            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    239            �           2604    16908    categorias cat_codigo    DEFAULT     ~   ALTER TABLE ONLY public.categorias ALTER COLUMN cat_codigo SET DEFAULT nextval('public.categorias_cat_codigo_seq'::regclass);
 D   ALTER TABLE public.categorias ALTER COLUMN cat_codigo DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16909    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16910    lineas lin_codigo    DEFAULT     v   ALTER TABLE ONLY public.lineas ALTER COLUMN lin_codigo SET DEFAULT nextval('public.lineas_lin_codigo_seq'::regclass);
 @   ALTER TABLE public.lineas ALTER COLUMN lin_codigo DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16911    marcas mar_codigo    DEFAULT     v   ALTER TABLE ONLY public.marcas ALTER COLUMN mar_codigo SET DEFAULT nextval('public.marcas_mar_codigo_seq'::regclass);
 @   ALTER TABLE public.marcas ALTER COLUMN mar_codigo DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16912    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16913    modelos mod_codigo    DEFAULT     x   ALTER TABLE ONLY public.modelos ALTER COLUMN mod_codigo SET DEFAULT nextval('public.modelos_mod_codigo_seq'::regclass);
 A   ALTER TABLE public.modelos ALTER COLUMN mod_codigo DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16914    oauth_clients id    DEFAULT     t   ALTER TABLE ONLY public.oauth_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_clients_id_seq'::regclass);
 ?   ALTER TABLE public.oauth_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16915     oauth_personal_access_clients id    DEFAULT     �   ALTER TABLE ONLY public.oauth_personal_access_clients ALTER COLUMN id SET DEFAULT nextval('public.oauth_personal_access_clients_id_seq'::regclass);
 O   ALTER TABLE public.oauth_personal_access_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16916    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16917    productos pro_codigo    DEFAULT     |   ALTER TABLE ONLY public.productos ALTER COLUMN pro_codigo SET DEFAULT nextval('public.productos_pro_codigo_seq'::regclass);
 C   ALTER TABLE public.productos ALTER COLUMN pro_codigo DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16918    rubros rub_codigo    DEFAULT     v   ALTER TABLE ONLY public.rubros ALTER COLUMN rub_codigo SET DEFAULT nextval('public.rubros_rub_codigo_seq'::regclass);
 @   ALTER TABLE public.rubros ALTER COLUMN rub_codigo DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16919    unidades uni_codigo    DEFAULT     z   ALTER TABLE ONLY public.unidades ALTER COLUMN uni_codigo SET DEFAULT nextval('public.unidades_uni_codigo_seq'::regclass);
 B   ALTER TABLE public.unidades ALTER COLUMN uni_codigo DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16920    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            {          0    16825 
   categorias 
   TABLE DATA           Y   COPY public.categorias (cat_codigo, cat_descripcion, created_at, updated_at) FROM stdin;
    public          postgres    false    209   ��       }          0    16829    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    211   +�                 0    16836    indicador_iva 
   TABLE DATA           k   COPY public.indicador_iva (iva_codigo, iva_descripcion, iva_tasa, cuenta_venta, cuenta_compra) FROM stdin;
    public          postgres    false    213   H�       �          0    16839    lineas 
   TABLE DATA           =   COPY public.lineas (lin_codigo, lin_descripcion) FROM stdin;
    public          postgres    false    214   e�       �          0    16843    marcas 
   TABLE DATA           =   COPY public.marcas (mar_codigo, mar_descripcion) FROM stdin;
    public          postgres    false    216   ��       �          0    16847 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    218   ��       �          0    16851    modelos 
   TABLE DATA           J   COPY public.modelos (mod_codigo, mar_codigo, mod_descripcion) FROM stdin;
    public          postgres    false    220   a�       �          0    16855    oauth_access_tokens 
   TABLE DATA           �   COPY public.oauth_access_tokens (id, user_id, client_id, name, scopes, revoked, created_at, updated_at, expires_at) FROM stdin;
    public          postgres    false    222   ~�       �          0    16860    oauth_auth_codes 
   TABLE DATA           _   COPY public.oauth_auth_codes (id, user_id, client_id, scopes, revoked, expires_at) FROM stdin;
    public          postgres    false    223   ;�       �          0    16865    oauth_clients 
   TABLE DATA           �   COPY public.oauth_clients (id, user_id, name, secret, provider, redirect, personal_access_client, password_client, revoked, created_at, updated_at) FROM stdin;
    public          postgres    false    224   X�       �          0    16871    oauth_personal_access_clients 
   TABLE DATA           ^   COPY public.oauth_personal_access_clients (id, client_id, created_at, updated_at) FROM stdin;
    public          postgres    false    226   3�       �          0    16875    oauth_refresh_tokens 
   TABLE DATA           X   COPY public.oauth_refresh_tokens (id, access_token_id, revoked, expires_at) FROM stdin;
    public          postgres    false    228   j�       �          0    16878    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    229   ��       �          0    16881    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
    public          postgres    false    230   ��       �          0    16887 	   productos 
   TABLE DATA           �  COPY public.productos (pro_codigo, rub_codigo, cat_codigo, mar_codigo, mod_codigo, lin_codigo, uni_codigo, pro_codigo_local, pro_codigo_barra, pro_descripcion_local, pro_descripcion_origen, pro_presentacion, pro_costo_ml, pro_costo_me, pro_activo, pro_inventario, pro_compras, pro_ventas, pro_activo_fijo, pro_tipo, pro_componente, pro_obs1, pro_obs2, pro_referencia, iva_compra, iva_venta, created_at, updated_at) FROM stdin;
    public          postgres    false    232   ��       �          0    16894    rubros 
   TABLE DATA           =   COPY public.rubros (rub_codigo, rub_descripcion) FROM stdin;
    public          postgres    false    234   ާ       �          0    16898    unidades 
   TABLE DATA           ?   COPY public.unidades (uni_codigo, uni_descripcion) FROM stdin;
    public          postgres    false    236   �       �          0    16902    users 
   TABLE DATA           �   COPY public.users (id, first_name, last_name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    238   6�       �           0    0    categorias_cat_codigo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.categorias_cat_codigo_seq', 9, true);
          public          postgres    false    210            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    212            �           0    0    lineas_lin_codigo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.lineas_lin_codigo_seq', 1, false);
          public          postgres    false    215            �           0    0    marcas_mar_codigo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.marcas_mar_codigo_seq', 1, false);
          public          postgres    false    217            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    219            �           0    0    modelos_mod_codigo_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.modelos_mod_codigo_seq', 1, false);
          public          postgres    false    221            �           0    0    oauth_clients_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.oauth_clients_id_seq', 2, true);
          public          postgres    false    225            �           0    0 $   oauth_personal_access_clients_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.oauth_personal_access_clients_id_seq', 1, true);
          public          postgres    false    227            �           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    231            �           0    0    productos_pro_codigo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.productos_pro_codigo_seq', 1, false);
          public          postgres    false    233            �           0    0    rubros_rub_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rubros_rub_codigo_seq', 2, true);
          public          postgres    false    235            �           0    0    unidades_uni_codigo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.unidades_uni_codigo_seq', 1, false);
          public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    239            �           2606    16922    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    211            �           2606    16924 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    211            �           2606    16926    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    218            �           2606    16928 ,   oauth_access_tokens oauth_access_tokens_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.oauth_access_tokens DROP CONSTRAINT oauth_access_tokens_pkey;
       public            postgres    false    222            �           2606    16930 &   oauth_auth_codes oauth_auth_codes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth_auth_codes
    ADD CONSTRAINT oauth_auth_codes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth_auth_codes DROP CONSTRAINT oauth_auth_codes_pkey;
       public            postgres    false    223            �           2606    16932     oauth_clients oauth_clients_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.oauth_clients DROP CONSTRAINT oauth_clients_pkey;
       public            postgres    false    224            �           2606    16934 @   oauth_personal_access_clients oauth_personal_access_clients_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.oauth_personal_access_clients
    ADD CONSTRAINT oauth_personal_access_clients_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.oauth_personal_access_clients DROP CONSTRAINT oauth_personal_access_clients_pkey;
       public            postgres    false    226            �           2606    16936 .   oauth_refresh_tokens oauth_refresh_tokens_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.oauth_refresh_tokens
    ADD CONSTRAINT oauth_refresh_tokens_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.oauth_refresh_tokens DROP CONSTRAINT oauth_refresh_tokens_pkey;
       public            postgres    false    228            �           2606    16938 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    230            �           2606    16940 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    230            �           2606    16942    categorias pk_categorias 
   CONSTRAINT     ^   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT pk_categorias PRIMARY KEY (cat_codigo);
 B   ALTER TABLE ONLY public.categorias DROP CONSTRAINT pk_categorias;
       public            postgres    false    209            �           2606    16944    indicador_iva pk_indicador_iva 
   CONSTRAINT     d   ALTER TABLE ONLY public.indicador_iva
    ADD CONSTRAINT pk_indicador_iva PRIMARY KEY (iva_codigo);
 H   ALTER TABLE ONLY public.indicador_iva DROP CONSTRAINT pk_indicador_iva;
       public            postgres    false    213            �           2606    16946    lineas pk_lineas 
   CONSTRAINT     V   ALTER TABLE ONLY public.lineas
    ADD CONSTRAINT pk_lineas PRIMARY KEY (lin_codigo);
 :   ALTER TABLE ONLY public.lineas DROP CONSTRAINT pk_lineas;
       public            postgres    false    214            �           2606    16948    marcas pk_marcas 
   CONSTRAINT     V   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT pk_marcas PRIMARY KEY (mar_codigo);
 :   ALTER TABLE ONLY public.marcas DROP CONSTRAINT pk_marcas;
       public            postgres    false    216            �           2606    16950    modelos pk_modelos 
   CONSTRAINT     X   ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT pk_modelos PRIMARY KEY (mod_codigo);
 <   ALTER TABLE ONLY public.modelos DROP CONSTRAINT pk_modelos;
       public            postgres    false    220            �           2606    16952    productos pk_productos 
   CONSTRAINT     \   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_productos PRIMARY KEY (pro_codigo);
 @   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_productos;
       public            postgres    false    232            �           2606    16954    rubros pk_rubros 
   CONSTRAINT     V   ALTER TABLE ONLY public.rubros
    ADD CONSTRAINT pk_rubros PRIMARY KEY (rub_codigo);
 :   ALTER TABLE ONLY public.rubros DROP CONSTRAINT pk_rubros;
       public            postgres    false    234            �           2606    16956    unidades pk_unidades 
   CONSTRAINT     Z   ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT pk_unidades PRIMARY KEY (uni_codigo);
 >   ALTER TABLE ONLY public.unidades DROP CONSTRAINT pk_unidades;
       public            postgres    false    236            �           2606    16958    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    238            �           2606    16960    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    238            �           1259    16961 !   oauth_access_tokens_user_id_index    INDEX     d   CREATE INDEX oauth_access_tokens_user_id_index ON public.oauth_access_tokens USING btree (user_id);
 5   DROP INDEX public.oauth_access_tokens_user_id_index;
       public            postgres    false    222            �           1259    16962    oauth_auth_codes_user_id_index    INDEX     ^   CREATE INDEX oauth_auth_codes_user_id_index ON public.oauth_auth_codes USING btree (user_id);
 2   DROP INDEX public.oauth_auth_codes_user_id_index;
       public            postgres    false    223            �           1259    16963    oauth_clients_user_id_index    INDEX     X   CREATE INDEX oauth_clients_user_id_index ON public.oauth_clients USING btree (user_id);
 /   DROP INDEX public.oauth_clients_user_id_index;
       public            postgres    false    224            �           1259    16964 *   oauth_refresh_tokens_access_token_id_index    INDEX     v   CREATE INDEX oauth_refresh_tokens_access_token_id_index ON public.oauth_refresh_tokens USING btree (access_token_id);
 >   DROP INDEX public.oauth_refresh_tokens_access_token_id_index;
       public            postgres    false    228            �           1259    16965    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    229            �           1259    16966 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    230    230            �           2606    16967 #   modelos fk_modelos_reference_marcas    FK CONSTRAINT     �   ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT fk_modelos_reference_marcas FOREIGN KEY (mar_codigo) REFERENCES public.marcas(mar_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.modelos DROP CONSTRAINT fk_modelos_reference_marcas;
       public          postgres    false    216    220    3270            �           2606    16972 (   productos fk_producto_reference_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_categori FOREIGN KEY (cat_codigo) REFERENCES public.categorias(cat_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_categori;
       public          postgres    false    3260    232    209            �           2606    16977 &   productos fk_producto_reference_lineas    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_lineas FOREIGN KEY (lin_codigo) REFERENCES public.lineas(lin_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_lineas;
       public          postgres    false    214    232    3268            �           2606    16982 &   productos fk_producto_reference_marcas    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_marcas FOREIGN KEY (mar_codigo) REFERENCES public.marcas(mar_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_marcas;
       public          postgres    false    232    3270    216            �           2606    16987 '   productos fk_producto_reference_modelos    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_modelos FOREIGN KEY (mod_codigo) REFERENCES public.modelos(mod_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_modelos;
       public          postgres    false    232    3274    220            �           2606    16992 &   productos fk_producto_reference_rubros    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_rubros FOREIGN KEY (rub_codigo) REFERENCES public.rubros(rub_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_rubros;
       public          postgres    false    3298    232    234            �           2606    16997 (   productos fk_producto_reference_unidades    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_reference_unidades FOREIGN KEY (uni_codigo) REFERENCES public.unidades(uni_codigo) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_reference_unidades;
       public          postgres    false    232    3300    236            {   �   x�m�1�0E���@Q��4�F%`����I-�ȒӉ�U�B$/�=�o���Yx�'�9V��s`ՉDh&���J��BYS�z��Sq�?x���͝1�M��%�/��B�V۪�m���t^w�jr\���-��t����V{�r� �3�G�      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �   �   x�e�Q� �g9��NﲤA�э�̮?��������	`zP�G�Z^+F��%�M:�5v��M�HZ�Ჳ6������x��6�0<3J�y���fM��Y�Bws���)���7ӳ M
��4�J}5��b�h�M�8�E�o3����ǝ�l��O�h�!�ɘ|      �      x������ � �      �   �  x��VK��F\�N��ߪ,�|/����O�����ao��� ����J"ZS�pk�d�p�c5�ܕ�R�I6�Y��.}m�K��!���4�`|�������y������?������B"�,�������v��ڧ��CW�ٸY��ý/��!*����N�<Tit�=���i�Oz���ħ�3Lo�!\h-m��S���]��4氎'���ïZ���|�s���\m3�࢝��̵=XNn'�3Lo�1Ki��9��ѩQi4��̲l����H�u����h)�Jo,i�1
��}q{��~R�$}p�&��3�n؁"�]=�!5�c�V�V�2��M�C��0�_�Wu�Qp��K��W�S�3�nؑi6�t��с�$���{����(��M��@����HA!���M�,}E���:5N�g�ݰz�K�MR��&�9&��8CD��u���)u� S1J��6.c�UG{E�?�2>%�avÎ�c�etƟ�YaB(� �1[�1#��6I�h�Ym�k'-X]�������v���dŜ�
kr'*���mt)-����_�{��uW�]y��ja[�/s��7-N-�0�a�"��J��_
#���+t��f0�(h0t��l2��j:�CVk����{\]O�g�ݰc���E�����R�XQ�fݓ�d�^*�_2L�l8ĦZZ2��}���zz��Y_1�a�f�w�Y�r���N̶c�|a�F�'|8 �Na_u���v�4�n�����g�ݰÙ�������b��b���U�\QL���Fл׀[�)k�n�P���
�{\a���vx��Lձ��0,���
�F~1�U��M7Bʶ��m�<&�����P���J�[���_�bv�Cy���T�k����sY5�a����R�*{�6b�>�"`!����������r�&a%�3�n<kw�$Pݰ��um�F�j]}
��E�D!�T�-�����{bA��u��C��c�bv�D9l�s-�e]a

��"�`��~��5������DfV��~E�W��=DO%��f7��a�"���~eDR����Z�}��A�	��&�@�����U��&��&W�R}��;�b �S'�q��K�5V
���\�&k�o�o�PIa�i�!Lҍ����E���n�ݰ�������#%�      �      x������ � �      �   �   x���ˎ�0�uy������e��4	��=n*��P��b���L��8svgq�F�)I�]�h^��hT��t��A2]#7`�C���v��N�nk��ǹ7sc	m�ϿSbJBU�"A"�!@�A�ơ����Oa�E�#�F4��xk��.
2���p�r�/+��M�dM������"r��;� �Gz��;�s��Sy      �   '   x�3�4�4202�54�5�P04�25�21�&����� ٣�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   +   x�3��M-JNLI-�L,�2�tO,.�/VK,��/����� ��
�      �      x������ � �      �   �   x�3��)�,�t�ϫJ�I�����s3s���s9c�8U�*UT�����K#r-sK�ҝB݋�K����SJ=-\����C+��#3rJ+#�s|�*JA����t�t�,M�L-�LL��q��qqq |�(     