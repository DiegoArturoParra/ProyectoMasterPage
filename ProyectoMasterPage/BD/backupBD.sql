PGDMP         +        
        x            bdMasterPages    12.2    12.2 H    `           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            a           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            b           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            c           1262    90419    bdMasterPages    DATABASE     �   CREATE DATABASE "bdMasterPages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "bdMasterPages";
                postgres    false            	            2615    107123 
   biblioteca    SCHEMA        CREATE SCHEMA biblioteca;
    DROP SCHEMA biblioteca;
                postgres    false                        2615    107114    componentespc    SCHEMA        CREATE SCHEMA componentespc;
    DROP SCHEMA componentespc;
                postgres    false                        2615    90432    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false                        2615    107066    pqr    SCHEMA        CREATE SCHEMA pqr;
    DROP SCHEMA pqr;
                postgres    false                        2615    107132    videojuegos    SCHEMA        CREATE SCHEMA videojuegos;
    DROP SCHEMA videojuegos;
                postgres    false            �            1259    90435    usuario    TABLE     �   CREATE TABLE login.usuario (
    id integer NOT NULL,
    nombreusuario character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    pass character varying(30) NOT NULL
);
    DROP TABLE login.usuario;
       login         heap    postgres    false    4            �            1259    90458    viewdatausuario    VIEW     �   CREATE VIEW login.viewdatausuario AS
 SELECT usuario.id AS id_usuario,
    usuario.nombreusuario AS nombre_usuario,
    usuario.email,
    usuario.pass AS "contraseña"
   FROM login.usuario;
 !   DROP VIEW login.viewdatausuario;
       login          postgres    false    208    208    208    208    4            �            1255    90462    f_logeo(text, text)    FUNCTION     Q  CREATE FUNCTION login.f_logeo(_email text, _pass text) RETURNS SETOF login.viewdatausuario
    LANGUAGE plpgsql
    AS $$
BEGIN 
RETURN QUERY 
SELECT 
lu.id AS id_usuario, lu.nombreUsuario AS nombre_usuario, lu.email AS Email, lu.pass AS contraseña
		FROM
			login.usuario lu
		WHERE
			lu.email = _email and lu.pass = _pass;
	END;
$$;
 6   DROP FUNCTION login.f_logeo(_email text, _pass text);
       login          postgres    false    209    4            �            1259    107126    libro    TABLE     �   CREATE TABLE biblioteca.libro (
    id_libro integer NOT NULL,
    autor character varying(100) NOT NULL,
    numeropaginas integer NOT NULL,
    nombre_libro character varying(50)
);
    DROP TABLE biblioteca.libro;
    
   biblioteca         heap    postgres    false    9            �            1259    107124    libro_id_libro_seq    SEQUENCE     �   CREATE SEQUENCE biblioteca.libro_id_libro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE biblioteca.libro_id_libro_seq;
    
   biblioteca          postgres    false    9    221            d           0    0    libro_id_libro_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE biblioteca.libro_id_libro_seq OWNED BY biblioteca.libro.id_libro;
       
   biblioteca          postgres    false    220            �            1259    107117    producto    TABLE     �   CREATE TABLE componentespc.producto (
    id_producto integer NOT NULL,
    descripcion character varying(100) NOT NULL,
    valor_producto double precision NOT NULL,
    nombre_producto character varying(30)
);
 #   DROP TABLE componentespc.producto;
       componentespc         heap    postgres    false    12            �            1259    107115    producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE componentespc.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE componentespc.producto_id_producto_seq;
       componentespc          postgres    false    219    12            e           0    0    producto_id_producto_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE componentespc.producto_id_producto_seq OWNED BY componentespc.producto.id_producto;
          componentespc          postgres    false    218            �            1259    90433    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    4    208            f           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    207            �            1259    107077    identificacion    TABLE     u   CREATE TABLE pqr.identificacion (
    id integer NOT NULL,
    tipo_identificacion character varying(30) NOT NULL
);
    DROP TABLE pqr.identificacion;
       pqr         heap    postgres    false    6            �            1259    107075    identificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE pqr.identificacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE pqr.identificacion_id_seq;
       pqr          postgres    false    213    6            g           0    0    identificacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE pqr.identificacion_id_seq OWNED BY pqr.identificacion.id;
          pqr          postgres    false    212            �            1259    107089    registropqr    TABLE     �  CREATE TABLE pqr.registropqr (
    id integer NOT NULL,
    nombre_usuario character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    telefono character varying(30) NOT NULL,
    direccion character varying(30) NOT NULL,
    identificacion character varying(30) NOT NULL,
    id_tipo_identificacion integer NOT NULL,
    id_tipo_solicitud integer NOT NULL,
    descripcion character varying(500)
);
    DROP TABLE pqr.registropqr;
       pqr         heap    postgres    false    6            �            1259    107083    registropqr_id_seq    SEQUENCE     �   CREATE SEQUENCE pqr.registropqr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE pqr.registropqr_id_seq;
       pqr          postgres    false    217    6            h           0    0    registropqr_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE pqr.registropqr_id_seq OWNED BY pqr.registropqr.id;
          pqr          postgres    false    214            �            1259    107085 &   registropqr_id_tipo_identificacion_seq    SEQUENCE     �   CREATE SEQUENCE pqr.registropqr_id_tipo_identificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE pqr.registropqr_id_tipo_identificacion_seq;
       pqr          postgres    false    6    217            i           0    0 &   registropqr_id_tipo_identificacion_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE pqr.registropqr_id_tipo_identificacion_seq OWNED BY pqr.registropqr.id_tipo_identificacion;
          pqr          postgres    false    215            �            1259    107087 !   registropqr_id_tipo_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE pqr.registropqr_id_tipo_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE pqr.registropqr_id_tipo_solicitud_seq;
       pqr          postgres    false    6    217            j           0    0 !   registropqr_id_tipo_solicitud_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE pqr.registropqr_id_tipo_solicitud_seq OWNED BY pqr.registropqr.id_tipo_solicitud;
          pqr          postgres    false    216            �            1259    107069 	   solicitud    TABLE     k   CREATE TABLE pqr.solicitud (
    id integer NOT NULL,
    tipo_solicitud character varying(30) NOT NULL
);
    DROP TABLE pqr.solicitud;
       pqr         heap    postgres    false    6            �            1259    107067    solicitud_id_seq    SEQUENCE     �   CREATE SEQUENCE pqr.solicitud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE pqr.solicitud_id_seq;
       pqr          postgres    false    211    6            k           0    0    solicitud_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pqr.solicitud_id_seq OWNED BY pqr.solicitud.id;
          pqr          postgres    false    210            �            1259    107135    juegos    TABLE     �   CREATE TABLE videojuegos.juegos (
    id_juego integer NOT NULL,
    nombre_juego character varying(50) NOT NULL,
    precio double precision NOT NULL,
    fecha_de_lanzamiento date
);
    DROP TABLE videojuegos.juegos;
       videojuegos         heap    postgres    false    11            �            1259    107133    juegos_id_juego_seq    SEQUENCE     �   CREATE SEQUENCE videojuegos.juegos_id_juego_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE videojuegos.juegos_id_juego_seq;
       videojuegos          postgres    false    223    11            l           0    0    juegos_id_juego_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE videojuegos.juegos_id_juego_seq OWNED BY videojuegos.juegos.id_juego;
          videojuegos          postgres    false    222            �
           2604    107129    libro id_libro    DEFAULT     x   ALTER TABLE ONLY biblioteca.libro ALTER COLUMN id_libro SET DEFAULT nextval('biblioteca.libro_id_libro_seq'::regclass);
 A   ALTER TABLE biblioteca.libro ALTER COLUMN id_libro DROP DEFAULT;
    
   biblioteca          postgres    false    220    221    221            �
           2604    107120    producto id_producto    DEFAULT     �   ALTER TABLE ONLY componentespc.producto ALTER COLUMN id_producto SET DEFAULT nextval('componentespc.producto_id_producto_seq'::regclass);
 J   ALTER TABLE componentespc.producto ALTER COLUMN id_producto DROP DEFAULT;
       componentespc          postgres    false    219    218    219            �
           2604    90438 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    207    208    208            �
           2604    107080    identificacion id    DEFAULT     p   ALTER TABLE ONLY pqr.identificacion ALTER COLUMN id SET DEFAULT nextval('pqr.identificacion_id_seq'::regclass);
 =   ALTER TABLE pqr.identificacion ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    213    212    213            �
           2604    107092    registropqr id    DEFAULT     j   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id SET DEFAULT nextval('pqr.registropqr_id_seq'::regclass);
 :   ALTER TABLE pqr.registropqr ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    214    217    217            �
           2604    107093 "   registropqr id_tipo_identificacion    DEFAULT     �   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id_tipo_identificacion SET DEFAULT nextval('pqr.registropqr_id_tipo_identificacion_seq'::regclass);
 N   ALTER TABLE pqr.registropqr ALTER COLUMN id_tipo_identificacion DROP DEFAULT;
       pqr          postgres    false    215    217    217            �
           2604    107094    registropqr id_tipo_solicitud    DEFAULT     �   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id_tipo_solicitud SET DEFAULT nextval('pqr.registropqr_id_tipo_solicitud_seq'::regclass);
 I   ALTER TABLE pqr.registropqr ALTER COLUMN id_tipo_solicitud DROP DEFAULT;
       pqr          postgres    false    217    216    217            �
           2604    107072    solicitud id    DEFAULT     f   ALTER TABLE ONLY pqr.solicitud ALTER COLUMN id SET DEFAULT nextval('pqr.solicitud_id_seq'::regclass);
 8   ALTER TABLE pqr.solicitud ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    211    210    211            �
           2604    107138    juegos id_juego    DEFAULT     |   ALTER TABLE ONLY videojuegos.juegos ALTER COLUMN id_juego SET DEFAULT nextval('videojuegos.juegos_id_juego_seq'::regclass);
 C   ALTER TABLE videojuegos.juegos ALTER COLUMN id_juego DROP DEFAULT;
       videojuegos          postgres    false    223    222    223            [          0    107126    libro 
   TABLE DATA           Q   COPY biblioteca.libro (id_libro, autor, numeropaginas, nombre_libro) FROM stdin;
 
   biblioteca          postgres    false    221   hR       Y          0    107117    producto 
   TABLE DATA           d   COPY componentespc.producto (id_producto, descripcion, valor_producto, nombre_producto) FROM stdin;
    componentespc          postgres    false    219   �R       O          0    90435    usuario 
   TABLE DATA           @   COPY login.usuario (id, nombreusuario, email, pass) FROM stdin;
    login          postgres    false    208   xS       S          0    107077    identificacion 
   TABLE DATA           >   COPY pqr.identificacion (id, tipo_identificacion) FROM stdin;
    pqr          postgres    false    213   	T       W          0    107089    registropqr 
   TABLE DATA           �   COPY pqr.registropqr (id, nombre_usuario, email, telefono, direccion, identificacion, id_tipo_identificacion, id_tipo_solicitud, descripcion) FROM stdin;
    pqr          postgres    false    217   YT       Q          0    107069 	   solicitud 
   TABLE DATA           4   COPY pqr.solicitud (id, tipo_solicitud) FROM stdin;
    pqr          postgres    false    211   �T       ]          0    107135    juegos 
   TABLE DATA           [   COPY videojuegos.juegos (id_juego, nombre_juego, precio, fecha_de_lanzamiento) FROM stdin;
    videojuegos          postgres    false    223   U       m           0    0    libro_id_libro_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('biblioteca.libro_id_libro_seq', 3, true);
       
   biblioteca          postgres    false    220            n           0    0    producto_id_producto_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('componentespc.producto_id_producto_seq', 4, true);
          componentespc          postgres    false    218            o           0    0    usuario_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('login.usuario_id_seq', 5, true);
          login          postgres    false    207            p           0    0    identificacion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('pqr.identificacion_id_seq', 3, true);
          pqr          postgres    false    212            q           0    0    registropqr_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('pqr.registropqr_id_seq', 2, true);
          pqr          postgres    false    214            r           0    0 &   registropqr_id_tipo_identificacion_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('pqr.registropqr_id_tipo_identificacion_seq', 1, false);
          pqr          postgres    false    215            s           0    0 !   registropqr_id_tipo_solicitud_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('pqr.registropqr_id_tipo_solicitud_seq', 1, false);
          pqr          postgres    false    216            t           0    0    solicitud_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('pqr.solicitud_id_seq', 3, true);
          pqr          postgres    false    210            u           0    0    juegos_id_juego_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('videojuegos.juegos_id_juego_seq', 4, true);
          videojuegos          postgres    false    222            �
           2606    107131    libro libro_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY biblioteca.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id_libro);
 >   ALTER TABLE ONLY biblioteca.libro DROP CONSTRAINT libro_pkey;
    
   biblioteca            postgres    false    221            �
           2606    107122    producto producto_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY componentespc.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);
 G   ALTER TABLE ONLY componentespc.producto DROP CONSTRAINT producto_pkey;
       componentespc            postgres    false    219            �
           2606    90442    usuario usuario_email_key 
   CONSTRAINT     T   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 B   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_email_key;
       login            postgres    false    208            �
           2606    90440    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    208            �
           2606    107082 "   identificacion identificacion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY pqr.identificacion
    ADD CONSTRAINT identificacion_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY pqr.identificacion DROP CONSTRAINT identificacion_pkey;
       pqr            postgres    false    213            �
           2606    107101 !   registropqr registropqr_email_key 
   CONSTRAINT     Z   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_email_key UNIQUE (email);
 H   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_email_key;
       pqr            postgres    false    217            �
           2606    107099    registropqr registropqr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_pkey;
       pqr            postgres    false    217            �
           2606    107074    solicitud solicitud_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY pqr.solicitud
    ADD CONSTRAINT solicitud_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY pqr.solicitud DROP CONSTRAINT solicitud_pkey;
       pqr            postgres    false    211            �
           2606    107140    juegos juegos_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY videojuegos.juegos
    ADD CONSTRAINT juegos_pkey PRIMARY KEY (id_juego);
 A   ALTER TABLE ONLY videojuegos.juegos DROP CONSTRAINT juegos_pkey;
       videojuegos            postgres    false    223            �
           2606    107102 3   registropqr registropqr_id_tipo_identificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_id_tipo_identificacion_fkey FOREIGN KEY (id_tipo_identificacion) REFERENCES pqr.identificacion(id);
 Z   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_id_tipo_identificacion_fkey;
       pqr          postgres    false    2754    217    213            �
           2606    107107 .   registropqr registropqr_id_tipo_solicitud_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_id_tipo_solicitud_fkey FOREIGN KEY (id_tipo_solicitud) REFERENCES pqr.solicitud(id);
 U   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_id_tipo_solicitud_fkey;
       pqr          postgres    false    217    2752    211            [   e   x�3�t*J�U.��N-�415�t):�0�4'�ˈ(�Z���������i���,N-��2�tMIO,Rp��I�S�O�410�t�QHO,�W�KM/������ {c*      Y   �   x�M�1!E�S�	��²��k��܆,HF$,1�m<������O�ѕs��by�N2;��ċ���w���k�+������3j�����9,��B�j������h�%�X,��~x<C�~��d���qJ8����1�      O   �   x�]��
�@D���H�*z��k��Kа���HV��� �^f�0C��+����4�K��S(���Ql�:�×���Ԟ�F-�0�ͻ�ܩC��j���-5y���gSoٰ��v�5�Ẅ}��?�{>�      S   @   x�3�t>�2�4'�ˈ3$�(+�$Q!%U!3%5�$3%1��� $�ZQR����Ztxm"W� �q)      W   z   x��1�0 ��y�%f�8��@����M-)��i��#�Uy)^m�M��fӿVJ�Rt��6�u���:�	2�&H��q<R
]ΑB �yHn<+6��.8�(Vg1\뒋|�{z���6%�      Q   +   x�3�JM�I���2�H-�L�<�9�˘3�45+�+F��� �=
s      ]   v   x�M�A
�0 ϻ����M0��C�xك)��@_o�
s�a��/*�>VɃjdfP�踁
�q ��A�;Ȁ'�T��J��L_��i������ʎ�I�Ғ�$���rn�x���X�     