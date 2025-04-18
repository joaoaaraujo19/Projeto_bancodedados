PGDMP  6    ,                }         	   cafeteria    17.1    17.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    24578 	   cafeteria    DATABASE     �   CREATE DATABASE cafeteria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE cafeteria;
                     postgres    false            �            1259    24598    pedido_itens    TABLE     �   CREATE TABLE public.pedido_itens (
    pedido_id integer NOT NULL,
    produto_id integer NOT NULL,
    quantidade integer NOT NULL
);
     DROP TABLE public.pedido_itens;
       public         heap r       postgres    false            �            1259    24590    pedidos    TABLE     q   CREATE TABLE public.pedidos (
    id integer NOT NULL,
    cliente_nome text NOT NULL,
    data date NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap r       postgres    false            �            1259    24589    pedidos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pedidos_id_seq;
       public               postgres    false    220                       0    0    pedidos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;
          public               postgres    false    219            �            1259    24581    produtos    TABLE     �   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome text NOT NULL,
    preco numeric(10,2) NOT NULL,
    estoque integer NOT NULL
);
    DROP TABLE public.produtos;
       public         heap r       postgres    false            �            1259    24580    produtos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public               postgres    false    218                       0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public               postgres    false    217            a           2604    24593 
   pedidos id    DEFAULT     h   ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);
 9   ALTER TABLE public.pedidos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            `           2604    24584    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    24598    pedido_itens 
   TABLE DATA           I   COPY public.pedido_itens (pedido_id, produto_id, quantidade) FROM stdin;
    public               postgres    false    221   �       �          0    24590    pedidos 
   TABLE DATA           9   COPY public.pedidos (id, cliente_nome, data) FROM stdin;
    public               postgres    false    220   �       �          0    24581    produtos 
   TABLE DATA           <   COPY public.produtos (id, nome, preco, estoque) FROM stdin;
    public               postgres    false    218   S                  0    0    pedidos_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pedidos_id_seq', 3, true);
          public               postgres    false    219            	           0    0    produtos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.produtos_id_seq', 3, true);
          public               postgres    false    217            g           2606    24602    pedido_itens pedido_itens_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.pedido_itens
    ADD CONSTRAINT pedido_itens_pkey PRIMARY KEY (pedido_id, produto_id);
 H   ALTER TABLE ONLY public.pedido_itens DROP CONSTRAINT pedido_itens_pkey;
       public                 postgres    false    221    221            e           2606    24597    pedidos pedidos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public                 postgres    false    220            c           2606    24588    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public                 postgres    false    218            h           2606    24603 (   pedido_itens pedido_itens_pedido_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_itens
    ADD CONSTRAINT pedido_itens_pedido_id_fkey FOREIGN KEY (pedido_id) REFERENCES public.pedidos(id);
 R   ALTER TABLE ONLY public.pedido_itens DROP CONSTRAINT pedido_itens_pedido_id_fkey;
       public               postgres    false    221    220    4709            i           2606    24608 )   pedido_itens pedido_itens_produto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido_itens
    ADD CONSTRAINT pedido_itens_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produtos(id);
 S   ALTER TABLE ONLY public.pedido_itens DROP CONSTRAINT pedido_itens_produto_id_fkey;
       public               postgres    false    218    4707    221            �      x������ � �      �   F   x�3�t�KTH,�I�4202�50�54�2�JLKL�Qp�/.A�1�2�tJM,)ʬR���E�1����� 2�S      �   U   x�3�tNL;�R����(��8��T�������ˈ3���|��T����̬|N=SNS.cN����sj^~iQ"�H��W� �A     