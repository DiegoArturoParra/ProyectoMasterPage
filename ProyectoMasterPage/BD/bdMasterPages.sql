PGDMP         :         
        x            bdMasterPages    12.2    12.2 0    <           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    90419    bdMasterPages    DATABASE     �   CREATE DATABASE "bdMasterPages" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "bdMasterPages";
                postgres    false                        2615    90432    login    SCHEMA        CREATE SCHEMA login;
    DROP SCHEMA login;
                postgres    false                        2615    107066    pqr    SCHEMA        CREATE SCHEMA pqr;
    DROP SCHEMA pqr;
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
       login          postgres    false    205    205    205    205    4            �            1255    90462    f_logeo(text, text)    FUNCTION     Q  CREATE FUNCTION login.f_logeo(_email text, _pass text) RETURNS SETOF login.viewdatausuario
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
       login          postgres    false    206    4            �            1259    90433    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE login.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE login.usuario_id_seq;
       login          postgres    false    205    4            @           0    0    usuario_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE login.usuario_id_seq OWNED BY login.usuario.id;
          login          postgres    false    204            �            1259    107077    identificacion    TABLE     u   CREATE TABLE pqr.identificacion (
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
       pqr          postgres    false    210    6            A           0    0    identificacion_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE pqr.identificacion_id_seq OWNED BY pqr.identificacion.id;
          pqr          postgres    false    209            �            1259    107089    registropqr    TABLE     �  CREATE TABLE pqr.registropqr (
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
       pqr          postgres    false    214    6            B           0    0    registropqr_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE pqr.registropqr_id_seq OWNED BY pqr.registropqr.id;
          pqr          postgres    false    211            �            1259    107085 &   registropqr_id_tipo_identificacion_seq    SEQUENCE     �   CREATE SEQUENCE pqr.registropqr_id_tipo_identificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE pqr.registropqr_id_tipo_identificacion_seq;
       pqr          postgres    false    214    6            C           0    0 &   registropqr_id_tipo_identificacion_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE pqr.registropqr_id_tipo_identificacion_seq OWNED BY pqr.registropqr.id_tipo_identificacion;
          pqr          postgres    false    212            �            1259    107087 !   registropqr_id_tipo_solicitud_seq    SEQUENCE     �   CREATE SEQUENCE pqr.registropqr_id_tipo_solicitud_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE pqr.registropqr_id_tipo_solicitud_seq;
       pqr          postgres    false    214    6            D           0    0 !   registropqr_id_tipo_solicitud_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE pqr.registropqr_id_tipo_solicitud_seq OWNED BY pqr.registropqr.id_tipo_solicitud;
          pqr          postgres    false    213            �            1259    107069 	   solicitud    TABLE     k   CREATE TABLE pqr.solicitud (
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
       pqr          postgres    false    208    6            E           0    0    solicitud_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE pqr.solicitud_id_seq OWNED BY pqr.solicitud.id;
          pqr          postgres    false    207            �
           2604    90438 
   usuario id    DEFAULT     f   ALTER TABLE ONLY login.usuario ALTER COLUMN id SET DEFAULT nextval('login.usuario_id_seq'::regclass);
 8   ALTER TABLE login.usuario ALTER COLUMN id DROP DEFAULT;
       login          postgres    false    205    204    205            �
           2604    107080    identificacion id    DEFAULT     p   ALTER TABLE ONLY pqr.identificacion ALTER COLUMN id SET DEFAULT nextval('pqr.identificacion_id_seq'::regclass);
 =   ALTER TABLE pqr.identificacion ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    209    210    210            �
           2604    107092    registropqr id    DEFAULT     j   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id SET DEFAULT nextval('pqr.registropqr_id_seq'::regclass);
 :   ALTER TABLE pqr.registropqr ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    211    214    214            �
           2604    107093 "   registropqr id_tipo_identificacion    DEFAULT     �   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id_tipo_identificacion SET DEFAULT nextval('pqr.registropqr_id_tipo_identificacion_seq'::regclass);
 N   ALTER TABLE pqr.registropqr ALTER COLUMN id_tipo_identificacion DROP DEFAULT;
       pqr          postgres    false    212    214    214            �
           2604    107094    registropqr id_tipo_solicitud    DEFAULT     �   ALTER TABLE ONLY pqr.registropqr ALTER COLUMN id_tipo_solicitud SET DEFAULT nextval('pqr.registropqr_id_tipo_solicitud_seq'::regclass);
 I   ALTER TABLE pqr.registropqr ALTER COLUMN id_tipo_solicitud DROP DEFAULT;
       pqr          postgres    false    213    214    214            �
           2604    107072    solicitud id    DEFAULT     f   ALTER TABLE ONLY pqr.solicitud ALTER COLUMN id SET DEFAULT nextval('pqr.solicitud_id_seq'::regclass);
 8   ALTER TABLE pqr.solicitud ALTER COLUMN id DROP DEFAULT;
       pqr          postgres    false    208    207    208            1          0    90435    usuario 
   TABLE DATA           @   COPY login.usuario (id, nombreusuario, email, pass) FROM stdin;
    login          postgres    false    205   T7       5          0    107077    identificacion 
   TABLE DATA           >   COPY pqr.identificacion (id, tipo_identificacion) FROM stdin;
    pqr          postgres    false    210   �7       9          0    107089    registropqr 
   TABLE DATA           �   COPY pqr.registropqr (id, nombre_usuario, email, telefono, direccion, identificacion, id_tipo_identificacion, id_tipo_solicitud, descripcion) FROM stdin;
    pqr          postgres    false    214   8       3          0    107069 	   solicitud 
   TABLE DATA           4   COPY pqr.solicitud (id, tipo_solicitud) FROM stdin;
    pqr          postgres    false    208   �8       F           0    0    usuario_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('login.usuario_id_seq', 3, true);
          login          postgres    false    204            G           0    0    identificacion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('pqr.identificacion_id_seq', 3, true);
          pqr          postgres    false    209            H           0    0    registropqr_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('pqr.registropqr_id_seq', 1, true);
          pqr          postgres    false    211            I           0    0 &   registropqr_id_tipo_identificacion_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('pqr.registropqr_id_tipo_identificacion_seq', 1, false);
          pqr          postgres    false    212            J           0    0 !   registropqr_id_tipo_solicitud_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('pqr.registropqr_id_tipo_solicitud_seq', 1, false);
          pqr          postgres    false    213            K           0    0    solicitud_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('pqr.solicitud_id_seq', 3, true);
          pqr          postgres    false    207            �
           2606    90442    usuario usuario_email_key 
   CONSTRAINT     T   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 B   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_email_key;
       login            postgres    false    205            �
           2606    90440    usuario usuario_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY login.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY login.usuario DROP CONSTRAINT usuario_pkey;
       login            postgres    false    205            �
           2606    107082 "   identificacion identificacion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY pqr.identificacion
    ADD CONSTRAINT identificacion_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY pqr.identificacion DROP CONSTRAINT identificacion_pkey;
       pqr            postgres    false    210            �
           2606    107101 !   registropqr registropqr_email_key 
   CONSTRAINT     Z   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_email_key UNIQUE (email);
 H   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_email_key;
       pqr            postgres    false    214            �
           2606    107099    registropqr registropqr_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_pkey;
       pqr            postgres    false    214            �
           2606    107074    solicitud solicitud_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY pqr.solicitud
    ADD CONSTRAINT solicitud_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY pqr.solicitud DROP CONSTRAINT solicitud_pkey;
       pqr            postgres    false    208            �
           2606    107102 3   registropqr registropqr_id_tipo_identificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_id_tipo_identificacion_fkey FOREIGN KEY (id_tipo_identificacion) REFERENCES pqr.identificacion(id);
 Z   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_id_tipo_identificacion_fkey;
       pqr          postgres    false    210    214    2730            �
           2606    107107 .   registropqr registropqr_id_tipo_solicitud_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY pqr.registropqr
    ADD CONSTRAINT registropqr_id_tipo_solicitud_fkey FOREIGN KEY (id_tipo_solicitud) REFERENCES pqr.solicitud(id);
 U   ALTER TABLE ONLY pqr.registropqr DROP CONSTRAINT registropqr_id_tipo_solicitud_fkey;
       pqr          postgres    false    2728    214    208            1   ^   x�U�1�  ��1ƢG���@�F��������pG0�2+��;Y;,zD^C�4��7�h �.NR
S��F=6�8-�j�{�4m�S��7K�&6      5   @   x�3�t>�2�4'�ˈ3$�(+�$Q!%U!3%5�$3%1��� $�ZQR����Ztxm"W� �q)      9   z   x��1�0 ��y�%f�8��@����M-)��i��#�Uy)^m�M��fӿVJ�Rt��6�u���:�	2�&H��q<R
]ΑB �yHn<+6��.8�(Vg1\뒋|�{z���6%�      3   +   x�3�JM�I���2�H-�L�<�9�˘3�45+�+F��� �=
s     