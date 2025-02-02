PGDMP                         y            dbgestionturnos    11.10    11.10 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17010    dbgestionturnos    DATABASE     �   CREATE DATABASE dbgestionturnos WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE dbgestionturnos;
             postgres    false            �            1259    17333    admin_turnos_cancha    TABLE     �   CREATE TABLE public.admin_turnos_cancha (
    id integer NOT NULL,
    tipo character varying(50) NOT NULL,
    numero integer NOT NULL
);
 '   DROP TABLE public.admin_turnos_cancha;
       public      	   adrianapp    false            �            1259    17331    admin_turnos_cancha_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_turnos_cancha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.admin_turnos_cancha_id_seq;
       public    	   adrianapp    false    220            �           0    0    admin_turnos_cancha_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.admin_turnos_cancha_id_seq OWNED BY public.admin_turnos_cancha.id;
            public    	   adrianapp    false    219            �            1259    17436    admin_turnos_horario    TABLE     r   CREATE TABLE public.admin_turnos_horario (
    id integer NOT NULL,
    "time" time without time zone NOT NULL
);
 (   DROP TABLE public.admin_turnos_horario;
       public      	   adrianapp    false            �            1259    17434    admin_turnos_horario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_turnos_horario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.admin_turnos_horario_id_seq;
       public    	   adrianapp    false    222            �           0    0    admin_turnos_horario_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.admin_turnos_horario_id_seq OWNED BY public.admin_turnos_horario.id;
            public    	   adrianapp    false    221            �            1259    17308    admin_turnos_turno    TABLE     �   CREATE TABLE public.admin_turnos_turno (
    id integer NOT NULL,
    date date NOT NULL,
    status character varying(32) NOT NULL,
    usuario_id integer NOT NULL,
    cancha_id integer NOT NULL,
    time_id integer
);
 &   DROP TABLE public.admin_turnos_turno;
       public      	   adrianapp    false            �            1259    17306    admin_turnos_turno_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_turnos_turno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.admin_turnos_turno_id_seq;
       public    	   adrianapp    false    218            �           0    0    admin_turnos_turno_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.admin_turnos_turno_id_seq OWNED BY public.admin_turnos_turno.id;
            public    	   adrianapp    false    217            �            1259    17194    autenticacion_perfil    TABLE     �   CREATE TABLE public.autenticacion_perfil (
    id integer NOT NULL,
    role character varying(50) NOT NULL,
    usuario_id integer NOT NULL
);
 (   DROP TABLE public.autenticacion_perfil;
       public      	   adrianapp    false            �            1259    17192    autenticacion_perfil_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autenticacion_perfil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.autenticacion_perfil_id_seq;
       public    	   adrianapp    false    216            �           0    0    autenticacion_perfil_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.autenticacion_perfil_id_seq OWNED BY public.autenticacion_perfil.id;
            public    	   adrianapp    false    215            �            1259    17042 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public      	   adrianapp    false            �            1259    17040    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public    	   adrianapp    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public    	   adrianapp    false    202            �            1259    17052    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public      	   adrianapp    false            �            1259    17050    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public    	   adrianapp    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public    	   adrianapp    false    204            �            1259    17034    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public      	   adrianapp    false            �            1259    17032    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public    	   adrianapp    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public    	   adrianapp    false    200            �            1259    17060 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public      	   adrianapp    false            �            1259    17070    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public      	   adrianapp    false            �            1259    17068    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public    	   adrianapp    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public    	   adrianapp    false    208            �            1259    17058    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public    	   adrianapp    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public    	   adrianapp    false    206            �            1259    17078    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public      	   adrianapp    false            �            1259    17076 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public    	   adrianapp    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public    	   adrianapp    false    210            �            1259    17138    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public      	   adrianapp    false            �            1259    17136    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public    	   adrianapp    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public    	   adrianapp    false    212            �            1259    17024    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public      	   adrianapp    false            �            1259    17022    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public    	   adrianapp    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public    	   adrianapp    false    198            �            1259    17013    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public      	   adrianapp    false            �            1259    17011    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public    	   adrianapp    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public    	   adrianapp    false    196            �            1259    17177    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public      	   adrianapp    false            �
           2604    17336    admin_turnos_cancha id    DEFAULT     �   ALTER TABLE ONLY public.admin_turnos_cancha ALTER COLUMN id SET DEFAULT nextval('public.admin_turnos_cancha_id_seq'::regclass);
 E   ALTER TABLE public.admin_turnos_cancha ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    219    220    220            �
           2604    17439    admin_turnos_horario id    DEFAULT     �   ALTER TABLE ONLY public.admin_turnos_horario ALTER COLUMN id SET DEFAULT nextval('public.admin_turnos_horario_id_seq'::regclass);
 F   ALTER TABLE public.admin_turnos_horario ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    221    222    222            �
           2604    17311    admin_turnos_turno id    DEFAULT     ~   ALTER TABLE ONLY public.admin_turnos_turno ALTER COLUMN id SET DEFAULT nextval('public.admin_turnos_turno_id_seq'::regclass);
 D   ALTER TABLE public.admin_turnos_turno ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    218    217    218            �
           2604    17197    autenticacion_perfil id    DEFAULT     �   ALTER TABLE ONLY public.autenticacion_perfil ALTER COLUMN id SET DEFAULT nextval('public.autenticacion_perfil_id_seq'::regclass);
 F   ALTER TABLE public.autenticacion_perfil ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    216    215    216            �
           2604    17045    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    202    203    203            �
           2604    17055    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    204    205    205            �
           2604    17037    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    200    201    201            �
           2604    17063    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    206    207    207            �
           2604    17073    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    208    209    209            �
           2604    17081    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    210    211    211            �
           2604    17141    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    213    212    213            �
           2604    17027    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    198    199    199            �
           2604    17016    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public    	   adrianapp    false    196    197    197            �          0    17333    admin_turnos_cancha 
   TABLE DATA               ?   COPY public.admin_turnos_cancha (id, tipo, numero) FROM stdin;
    public    	   adrianapp    false    220   l�       �          0    17436    admin_turnos_horario 
   TABLE DATA               :   COPY public.admin_turnos_horario (id, "time") FROM stdin;
    public    	   adrianapp    false    222   ��       �          0    17308    admin_turnos_turno 
   TABLE DATA               ^   COPY public.admin_turnos_turno (id, date, status, usuario_id, cancha_id, time_id) FROM stdin;
    public    	   adrianapp    false    218   ݳ       �          0    17194    autenticacion_perfil 
   TABLE DATA               D   COPY public.autenticacion_perfil (id, role, usuario_id) FROM stdin;
    public    	   adrianapp    false    216   G�       �          0    17042 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public    	   adrianapp    false    203   d�       �          0    17052    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public    	   adrianapp    false    205   ��       �          0    17034    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public    	   adrianapp    false    201   ��       �          0    17060 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public    	   adrianapp    false    207   ��       �          0    17070    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public    	   adrianapp    false    209   6�       �          0    17078    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public    	   adrianapp    false    211   S�       �          0    17138    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public    	   adrianapp    false    213   p�       �          0    17024    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public    	   adrianapp    false    199   ��       �          0    17013    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public    	   adrianapp    false    197   :�       �          0    17177    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public    	   adrianapp    false    214   >�       �           0    0    admin_turnos_cancha_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_turnos_cancha_id_seq', 3, true);
            public    	   adrianapp    false    219            �           0    0    admin_turnos_horario_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.admin_turnos_horario_id_seq', 8, true);
            public    	   adrianapp    false    221            �           0    0    admin_turnos_turno_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_turnos_turno_id_seq', 27, true);
            public    	   adrianapp    false    217            �           0    0    autenticacion_perfil_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.autenticacion_perfil_id_seq', 17, true);
            public    	   adrianapp    false    215            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public    	   adrianapp    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public    	   adrianapp    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
            public    	   adrianapp    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public    	   adrianapp    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 43, true);
            public    	   adrianapp    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public    	   adrianapp    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 51, true);
            public    	   adrianapp    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
            public    	   adrianapp    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 89, true);
            public    	   adrianapp    false    196                       2606    17338 ,   admin_turnos_cancha admin_turnos_cancha_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.admin_turnos_cancha
    ADD CONSTRAINT admin_turnos_cancha_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.admin_turnos_cancha DROP CONSTRAINT admin_turnos_cancha_pkey;
       public      	   adrianapp    false    220                       2606    17441 .   admin_turnos_horario admin_turnos_horario_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.admin_turnos_horario
    ADD CONSTRAINT admin_turnos_horario_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.admin_turnos_horario DROP CONSTRAINT admin_turnos_horario_pkey;
       public      	   adrianapp    false    222                       2606    17313 *   admin_turnos_turno admin_turnos_turno_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.admin_turnos_turno
    ADD CONSTRAINT admin_turnos_turno_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.admin_turnos_turno DROP CONSTRAINT admin_turnos_turno_pkey;
       public      	   adrianapp    false    218                       2606    17199 .   autenticacion_perfil autenticacion_perfil_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.autenticacion_perfil
    ADD CONSTRAINT autenticacion_perfil_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.autenticacion_perfil DROP CONSTRAINT autenticacion_perfil_pkey;
       public      	   adrianapp    false    216                       2606    17201 8   autenticacion_perfil autenticacion_perfil_usuario_id_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.autenticacion_perfil
    ADD CONSTRAINT autenticacion_perfil_usuario_id_key UNIQUE (usuario_id);
 b   ALTER TABLE ONLY public.autenticacion_perfil DROP CONSTRAINT autenticacion_perfil_usuario_id_key;
       public      	   adrianapp    false    216            �
           2606    17329    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public      	   adrianapp    false    203            �
           2606    17094 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public      	   adrianapp    false    205    205            �
           2606    17057 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public      	   adrianapp    false    205            �
           2606    17047    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public      	   adrianapp    false    203            �
           2606    17085 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public      	   adrianapp    false    201    201            �
           2606    17039 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public      	   adrianapp    false    201            �
           2606    17323 '   auth_user auth_user_email_1c89df09_uniq 
   CONSTRAINT     c   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_email_1c89df09_uniq UNIQUE (email);
 Q   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_email_1c89df09_uniq;
       public      	   adrianapp    false    207            �
           2606    17075 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public      	   adrianapp    false    209            �
           2606    17109 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public      	   adrianapp    false    209    209            �
           2606    17065    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public      	   adrianapp    false    207                       2606    17083 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public      	   adrianapp    false    211                       2606    17123 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public      	   adrianapp    false    211    211            �
           2606    17326     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public      	   adrianapp    false    207                       2606    17147 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public      	   adrianapp    false    213            �
           2606    17031 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public      	   adrianapp    false    199    199            �
           2606    17029 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public      	   adrianapp    false    199            �
           2606    17021 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public      	   adrianapp    false    197                       2606    17184 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public      	   adrianapp    false    214                       1259    17345 %   admin_turnos_turno_cancha_id_f0724639    INDEX     i   CREATE INDEX admin_turnos_turno_cancha_id_f0724639 ON public.admin_turnos_turno USING btree (cancha_id);
 9   DROP INDEX public.admin_turnos_turno_cancha_id_f0724639;
       public      	   adrianapp    false    218                       1259    17442 #   admin_turnos_turno_time_id_95f708c3    INDEX     e   CREATE INDEX admin_turnos_turno_time_id_95f708c3 ON public.admin_turnos_turno USING btree (time_id);
 7   DROP INDEX public.admin_turnos_turno_time_id_95f708c3;
       public      	   adrianapp    false    218                       1259    17319 &   admin_turnos_turno_usuario_id_be803d0c    INDEX     k   CREATE INDEX admin_turnos_turno_usuario_id_be803d0c ON public.admin_turnos_turno USING btree (usuario_id);
 :   DROP INDEX public.admin_turnos_turno_usuario_id_be803d0c;
       public      	   adrianapp    false    218            �
           1259    17330    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public      	   adrianapp    false    203            �
           1259    17105 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public      	   adrianapp    false    205            �
           1259    17106 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public      	   adrianapp    false    205            �
           1259    17091 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public      	   adrianapp    false    201            �
           1259    17324    auth_user_email_1c89df09_like    INDEX     h   CREATE INDEX auth_user_email_1c89df09_like ON public.auth_user USING btree (email varchar_pattern_ops);
 1   DROP INDEX public.auth_user_email_1c89df09_like;
       public      	   adrianapp    false    207            �
           1259    17121 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public      	   adrianapp    false    209            �
           1259    17120 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public      	   adrianapp    false    209            �
           1259    17135 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public      	   adrianapp    false    211                       1259    17134 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public      	   adrianapp    false    211            �
           1259    17327     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public      	   adrianapp    false    207                       1259    17158 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public      	   adrianapp    false    213                       1259    17159 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public      	   adrianapp    false    213            	           1259    17186 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public      	   adrianapp    false    214                       1259    17185 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public      	   adrianapp    false    214            %           2606    17340 R   admin_turnos_turno admin_turnos_turno_cancha_id_f0724639_fk_admin_turnos_cancha_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_turnos_turno
    ADD CONSTRAINT admin_turnos_turno_cancha_id_f0724639_fk_admin_turnos_cancha_id FOREIGN KEY (cancha_id) REFERENCES public.admin_turnos_cancha(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.admin_turnos_turno DROP CONSTRAINT admin_turnos_turno_cancha_id_f0724639_fk_admin_turnos_cancha_id;
       public    	   adrianapp    false    218    220    2839            &           2606    17443 Q   admin_turnos_turno admin_turnos_turno_time_id_95f708c3_fk_admin_turnos_horario_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_turnos_turno
    ADD CONSTRAINT admin_turnos_turno_time_id_95f708c3_fk_admin_turnos_horario_id FOREIGN KEY (time_id) REFERENCES public.admin_turnos_horario(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.admin_turnos_turno DROP CONSTRAINT admin_turnos_turno_time_id_95f708c3_fk_admin_turnos_horario_id;
       public    	   adrianapp    false    218    2841    222            $           2606    17314 I   admin_turnos_turno admin_turnos_turno_usuario_id_be803d0c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_turnos_turno
    ADD CONSTRAINT admin_turnos_turno_usuario_id_be803d0c_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.admin_turnos_turno DROP CONSTRAINT admin_turnos_turno_usuario_id_be803d0c_fk_auth_user_id;
       public    	   adrianapp    false    218    207    2805            #           2606    17202 M   autenticacion_perfil autenticacion_perfil_usuario_id_6a46def6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.autenticacion_perfil
    ADD CONSTRAINT autenticacion_perfil_usuario_id_6a46def6_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.autenticacion_perfil DROP CONSTRAINT autenticacion_perfil_usuario_id_6a46def6_fk_auth_user_id;
       public    	   adrianapp    false    216    207    2805                       2606    17100 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public    	   adrianapp    false    2789    201    205                       2606    17095 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public    	   adrianapp    false    205    203    2794                       2606    17086 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public    	   adrianapp    false    2784    201    199                       2606    17115 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public    	   adrianapp    false    209    2794    203                       2606    17110 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public    	   adrianapp    false    2805    209    207                        2606    17129 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public    	   adrianapp    false    201    211    2789                       2606    17124 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public    	   adrianapp    false    207    211    2805            !           2606    17148 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public    	   adrianapp    false    2784    213    199            "           2606    17153 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public    	   adrianapp    false    2805    213    207            �      x�3�L+-I��Q0�4�2Bp��b���� ��i      �   3   x�3�44�20 ".NC3(Ӕ���4�4��2�9��LN#C(3F��� ���      �   Z   x�}�1
�0D�z�.Jv�I�.���	��J�����g&꒸����8�����J5�2��_.�L)p2��\{.s��Zt[��
�y�9      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�e�Kn�0E��*��"����}���F��R;p��}e�J$�Q,� <�/��s?n��ys�.�0.�q&��♎�!��я���tŠ'��a�`�b�%�k�
[/��[�?��}�FӐ_ؽ�S �{�~���`���Hr\W,/���O��l�V��:��8�� iX%d��/�{�MK�u��*�'`'�@��7��:��i���6��-��j���(E*B��W��O�͖5+�t��=���'a�l���<����
&��Y�������gY�m���p�r�x q� 9���]{���,��VK�^0�\�]	��"�Qk���RTi�8��o�;�f�7͝J���܉4{N�7qw��硷^�E4��J+���[�NT�-�8���9�ҷ�#>�V1��8*��@�D���:5OUN^���l\����d[>F�ʂR�c*/*(Af�z���,�a2Ηqģ�m� C!��s'FC\���he^������Y      �   �  x�u��n�@��k�\�.�0}lK�B3�� !h��q�&O��DZ�K����:��סP�7���������q�LZCUW��4md�[���ۆ�����k;�cc�ޞ,�[ͅ���/8<E��C|�XR�U�J�B�{H$G"�Pɷ#)͍�����N�� Nr{c ��E0���>�w"�(QY5�F��L����pU�!~zAY�]����od4�7���[͒��k�kVċyĎ_�qq�!@���_�In�D�t�.�-���_���s R5�DS~�����e��;�ݮ)'�e<ݖ"^�w��֠�&dwJ�O^��f�l���L'�����/�+���0�7�Đ��{�+��ܢ��F�U�(R�8�z[�Q{S�}$��>�	=%^���*��񛾚M{3��͎�fFa٨���E'�ғ:DSιU�R�Y۰��}��.�?*��CoD�Ul�5� #X�g0��Sz�N�ҵ�g�qmF�*�y��
k�zH_��g:���9ʔ�o�xU�HĿjc��4ȍP�ڷ�����ա��A�.ۂo�1o��es���<ڿ;�$΂��e��^��=�o=��ăb�NS�f1���HT�4(�`
ʧ�qƯ�{?�7�_����0v�P�j����.]      �      x������ � �      �      x������ � �      �     x����n�0���S��O��ر�ݺ���
��-���>Z	jG��n#���G�#����j��,�Y}1���y<@v�>��ӑ�}Y������o׹yY?<�O�_��v������;g��T)��!��2%H����f�=�P�C9z頋5��g�fg���$.J���g<�R��{�!h�P:�r\3w���;'%�RԮP	8��b����^L!�I-p1�ɡԀ��w�I��C]K|ѫ/���Ԫ�h�`&�A�,R��0�"F��1xU*sAc?�,^1�sP�b��L,������	UM�Zc���3lʩ,w��`ME��5��j��}DP.W�r�5�!yV�b~����2FO�)�L�>B	�%�z�$��X��]��O1}�^�:�H���t�,�+�=~�=5�������8.H��*2�"��E�L3�������rC��s��&�K"8��9�ij���d�|�{z�fk��U�؞bϔHJ�Ҥ��_�j��*r��      �   �   x�e�I
�0E��aJ�t�K�Ǎ�e${���q(4�J��?��L&}̲`�� ��L������%�iE���\cyI^�^@}K������E"+�������YWM��&���6g����,�g���n��.T��{�D|�A[|      �   �  x���ݎ� F��S�����rB,Ӛ�x'ӷ?��I551�ȷ�Y~ dU�>�>���ƊBM�7��m����'NN\|��Z	����;Ri�9�+{�~GF��9"�#���4i���:��L�{>o0��<C��H
[���泵S_}S'�0���0X`&N��{�i�dV&�E6�l����_Lo;��B�J,{bE?�F��B׌㼟`:�mZ�_ҪUe
Yf���;k��u�i�c���_��aϘ���C\��@,�da�gFk�8��佟�uш�k�)�n�$��Ԅb8�7����D�G��ms�ч1�ǅ����8��Fo�)4�*�fT��\��~Q��$�e(�AQrG]���}N��s��`���dș!���S%7�p�;�J�)<��	{��`>����rG��Ӄ&���i��.��S�+-�l�5B�
�t)0�i�H/��R����^+()]ڮ�ˍ��}}��t.�_ 8v"�\ij��8��z��      �   !  x�ՖɎ��@�]OQ/@��f0;B��H�R�<'f��O����zgyc�|�|r��d��?�|��\���x�ٜ%J�__�~�䧍6f�a�Զ��G�8B��bc�\k�~�]c�!�	����qRJ�.���7�c��ufv"���t[��\Q�?�g�Yj��[�;���PU��QE�s�ƶ4�T��1� ��p6Գw(3���yN�q��G�7��`)�)^8.3R��n�]I����:H7���
L�Y<L.�U��/А4E3� 
-@�� ��,�ǘ԰�Kߏ�<i
�iI�􁗗$���f�i51���.ѩH��أ[+���T��)Q�<6���-;�����E�'��x;|w��Hi��:%�}m��aa�!s�=��pY�ޅ����ɪ�Ol����S.?�
�&O�i�-ZG�qԋP�c,n��ɛ���vU8�x��1�y�,=3�2=w�9�L"Ty6ͮ��ߔޔ�@��_���oJ��y��H����W��EP�#Ç�JI�G�w��O�1�=Noz�bv�cO��)�@��p{%H�a���~F@P���<��~���9��rd�ЧS��5)�!����.�[m��7%")g�Q�T�B�a(���ɥ8���S}X��#�A�g>�r��ex7z}{
�k&� �v4����{�^g������>_uh���k]�F<I�n�vR~*��|��j�1��ɨW�f�=s�P�Ynu�o�Z߹U'T��!ۅ�D��^�QOBM���T�2q�j�$p�����ܸ�� �"��'�g�����s�<�����s�՗�"ޯ�r���U�ݸ��AZ]�s72�i?�j���Q�Wϴ���gI�g0����}x�����ĸχ6�s�?!�g�!^ZL�&/B��e�zQ ������A"җ����~�;x�!�5M�)q�~��g㫷��̓5�l�ak��|ka;��p�Y���c�Q]>�\��J�!@C.�g�<����E�ѓ��I��8��̹���Y�1��J �\������mq��|F(�1��p!�c0���H`�o��o1y����ICń��?O��C������P����v���c��t
N`kI��_Vz�i�E*���/�(q����	3_��ǥ8�SP���j����]G�^6�]����$q�\Х�^��*�ԞN�}��
q�w�(��$"8�{.q�V	�=zG� ����)M9?x����ba�m�-�h_i�����ѫP��U�õZ���Fכh%�&=u�����2���/J��^"?�^`��ҿ]������O�     