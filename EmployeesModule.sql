PGDMP     $    3                 z            EmployeesModule    11.5    11.5 4    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            C           1262    20126    EmployeesModule    DATABASE     ?   CREATE DATABASE "EmployeesModule" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 !   DROP DATABASE "EmployeesModule";
             postgres    false            ?            1259    20163 	   addresses    TABLE       CREATE TABLE public.addresses (
    id integer NOT NULL,
    country character varying(45) NOT NULL,
    street character varying(90) NOT NULL,
    zip_code character varying(45) NOT NULL,
    city character varying(45) NOT NULL,
    state character varying(45) NOT NULL
);
    DROP TABLE public.addresses;
       public         postgres    false            ?            1259    20161    Addresses_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Addresses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Addresses_id_seq";
       public       postgres    false    202            D           0    0    Addresses_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Addresses_id_seq" OWNED BY public.addresses.id;
            public       postgres    false    201            ?            1259    20137    benefits    TABLE     ?   CREATE TABLE public.benefits (
    id integer NOT NULL,
    name character varying(45) NOT NULL,
    description text NOT NULL,
    availability boolean NOT NULL,
    by_law boolean NOT NULL
);
    DROP TABLE public.benefits;
       public         postgres    false            ?            1259    20135    Benefits_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Benefits_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Benefits_id_seq";
       public       postgres    false    199            E           0    0    Benefits_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Benefits_id_seq" OWNED BY public.benefits.id;
            public       postgres    false    198            ?            1259    20129 	   employees    TABLE     [  CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(45) NOT NULL,
    last_name character varying(45) NOT NULL,
    date_of_birth date NOT NULL,
    email character varying(45) NOT NULL,
    telephone_number character varying(45) NOT NULL,
    hiring_date date NOT NULL,
    work_email character varying(45) NOT NULL,
    active boolean NOT NULL,
    "position" character varying(45) NOT NULL,
    gender character varying(45) NOT NULL,
    type_of_element character varying(45) NOT NULL,
    address_id integer NOT NULL,
    unique_key character varying(45) NOT NULL
);
    DROP TABLE public.employees;
       public         postgres    false            ?            1259    20127    Employees_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Employees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employees_id_seq";
       public       postgres    false    197            F           0    0    Employees_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Employees_id_seq" OWNED BY public.employees.id;
            public       postgres    false    196            ?            1259    20281    authorities    TABLE     u   CREATE TABLE public.authorities (
    authority_id integer NOT NULL,
    authority character varying(45) NOT NULL
);
    DROP TABLE public.authorities;
       public         postgres    false            ?            1259    20279    authorities_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.authorities_id_seq;
       public       postgres    false    204            G           0    0    authorities_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.authorities_id_seq OWNED BY public.authorities.authority_id;
            public       postgres    false    203            ?            1259    20146    employee_benefits    TABLE     m   CREATE TABLE public.employee_benefits (
    employee_id integer NOT NULL,
    benefit_id integer NOT NULL
);
 %   DROP TABLE public.employee_benefits;
       public         postgres    false            ?            1259    20289    users    TABLE     ?   CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(45) NOT NULL,
    password character varying(60) NOT NULL,
    enabled boolean NOT NULL,
    employee_id integer
);
    DROP TABLE public.users;
       public         postgres    false            ?            1259    20300    users_authorities    TABLE     k   CREATE TABLE public.users_authorities (
    user_id integer NOT NULL,
    authority_id integer NOT NULL
);
 %   DROP TABLE public.users_authorities;
       public         postgres    false            ?            1259    20287    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    206            H           0    0    users_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.user_id;
            public       postgres    false    205            ?
           2604    20166    addresses id    DEFAULT     n   ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public."Addresses_id_seq"'::regclass);
 ;   ALTER TABLE public.addresses ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            ?
           2604    20284    authorities authority_id    DEFAULT     z   ALTER TABLE ONLY public.authorities ALTER COLUMN authority_id SET DEFAULT nextval('public.authorities_id_seq'::regclass);
 G   ALTER TABLE public.authorities ALTER COLUMN authority_id DROP DEFAULT;
       public       postgres    false    203    204    204            ?
           2604    20140    benefits id    DEFAULT     l   ALTER TABLE ONLY public.benefits ALTER COLUMN id SET DEFAULT nextval('public."Benefits_id_seq"'::regclass);
 :   ALTER TABLE public.benefits ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            ?
           2604    20132    employees id    DEFAULT     n   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public."Employees_id_seq"'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            ?
           2604    20292    users user_id    DEFAULT     i   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public       postgres    false    206    205    206            8          0    20163 	   addresses 
   TABLE DATA               O   COPY public.addresses (id, country, street, zip_code, city, state) FROM stdin;
    public       postgres    false    202   ~<       :          0    20281    authorities 
   TABLE DATA               >   COPY public.authorities (authority_id, authority) FROM stdin;
    public       postgres    false    204   #=       5          0    20137    benefits 
   TABLE DATA               O   COPY public.benefits (id, name, description, availability, by_law) FROM stdin;
    public       postgres    false    199   T=       6          0    20146    employee_benefits 
   TABLE DATA               D   COPY public.employee_benefits (employee_id, benefit_id) FROM stdin;
    public       postgres    false    200   >       3          0    20129 	   employees 
   TABLE DATA               ?   COPY public.employees (id, name, last_name, date_of_birth, email, telephone_number, hiring_date, work_email, active, "position", gender, type_of_element, address_id, unique_key) FROM stdin;
    public       postgres    false    197   5>       <          0    20289    users 
   TABLE DATA               R   COPY public.users (user_id, username, password, enabled, employee_id) FROM stdin;
    public       postgres    false    206   ??       =          0    20300    users_authorities 
   TABLE DATA               B   COPY public.users_authorities (user_id, authority_id) FROM stdin;
    public       postgres    false    207   =@       I           0    0    Addresses_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Addresses_id_seq"', 22, true);
            public       postgres    false    201            J           0    0    Benefits_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Benefits_id_seq"', 9, true);
            public       postgres    false    198            K           0    0    Employees_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Employees_id_seq"', 10, true);
            public       postgres    false    196            L           0    0    authorities_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.authorities_id_seq', 1, false);
            public       postgres    false    203            M           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
            public       postgres    false    205            ?
           2606    20168    addresses Addresses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT "Addresses_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.addresses DROP CONSTRAINT "Addresses_pkey";
       public         postgres    false    202            ?
           2606    20145    benefits Benefits_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.benefits
    ADD CONSTRAINT "Benefits_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.benefits DROP CONSTRAINT "Benefits_pkey";
       public         postgres    false    199            ?
           2606    20150 &   employee_benefits Employ_Benefits_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.employee_benefits
    ADD CONSTRAINT "Employ_Benefits_pkey" PRIMARY KEY (benefit_id, employee_id);
 R   ALTER TABLE ONLY public.employee_benefits DROP CONSTRAINT "Employ_Benefits_pkey";
       public         postgres    false    200    200            ?
           2606    20134    employees Employees_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.employees DROP CONSTRAINT "Employees_pkey";
       public         postgres    false    197            ?
           2606    20286    authorities authorities_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.authorities
    ADD CONSTRAINT authorities_pkey PRIMARY KEY (authority_id);
 F   ALTER TABLE ONLY public.authorities DROP CONSTRAINT authorities_pkey;
       public         postgres    false    204            ?
           2606    20316    users username_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_unique UNIQUE (username);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT username_unique;
       public         postgres    false    206            ?
           2606    20304 (   users_authorities users_authorities_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.users_authorities
    ADD CONSTRAINT users_authorities_pkey PRIMARY KEY (user_id, authority_id);
 R   ALTER TABLE ONLY public.users_authorities DROP CONSTRAINT users_authorities_pkey;
       public         postgres    false    207    207            ?
           2606    20294    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    206            ?
           2606    20317    employees address_fk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT address_fk_1 FOREIGN KEY (address_id) REFERENCES public.addresses(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT address_fk_1;
       public       postgres    false    202    2730    197            ?
           2606    20310 !   users_authorities authority_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_authorities
    ADD CONSTRAINT authority_id_fk FOREIGN KEY (authority_id) REFERENCES public.authorities(authority_id);
 K   ALTER TABLE ONLY public.users_authorities DROP CONSTRAINT authority_id_fk;
       public       postgres    false    2732    204    207            ?
           2606    20151 +   employee_benefits employees_benefits_ebfk_1    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee_benefits
    ADD CONSTRAINT employees_benefits_ebfk_1 FOREIGN KEY (employee_id) REFERENCES public.employees(id);
 U   ALTER TABLE ONLY public.employee_benefits DROP CONSTRAINT employees_benefits_ebfk_1;
       public       postgres    false    197    200    2724            ?
           2606    20156 +   employee_benefits employees_benefits_ebfk_2    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employee_benefits
    ADD CONSTRAINT employees_benefits_ebfk_2 FOREIGN KEY (benefit_id) REFERENCES public.benefits(id);
 U   ALTER TABLE ONLY public.employee_benefits DROP CONSTRAINT employees_benefits_ebfk_2;
       public       postgres    false    199    200    2726            ?
           2606    20295    users user_id_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_id_fk FOREIGN KEY (employee_id) REFERENCES public.employees(id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT user_id_fk;
       public       postgres    false    206    2724    197            ?
           2606    20305    users_authorities user_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.users_authorities
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.users_authorities DROP CONSTRAINT user_id_fk;
       public       postgres    false    207    2736    206            8   ?   x???=?0????W\p?|شKq????rIjR?F??WT?
q:۳?W@???Dh??V???V;−s\P??A??7?.U???Fo	?dh??$짙l???s?a?;}0?EVMgժ_WPX???&?xH???%??.sts?2????      :   !   x?3???q?wt????2?pB?]??b???? s??      5   ?   x?m?;?0?g?>H<F*X??۸U?4???IJ?^l}??k??K?4	뺮??`???"`?(  j7jI?wq?=~H?S[8??8??/j?XL??T??3?)"?1qC?-??C?]r:??{8B~?Hp?FHϽ?$?}?	m>??c??y_)?ގ U?      6      x???????4?2?4?24 r???=... .K      3   Q  x?͓]O?0??O??i'c?c`a?1fG?&?40?t[e^???d??Hbbsn????'?i)B???F?N??&~?8?2P????0?e?k??sX???.SfeȤI3Y?m|_?dS?I????k5?`:8???a,?\??"΀"R?R?b?}B??%?ݗ|???r?{???h?9?B!V???V???q??-??CݎB??k?|?????c{8~??? ?ٙ?xQxE?3v?Kk??L????3u?q??9hA?ŸoQ?????%?ĆI\????JV?z?Uiu???l??1R֑?l??į???҇a?_????ulʨ???|DrcB??G?      <   ?   x?=??C0  ?s??E1??[???"?(?EG?R?????N??3?h??LC?????4Y?H??)ȵ???G9=˛tR???3??VdA`&? P????3?fvwŒ?:eu????*??yۼ??U0?9??1??[o?e| ?'M.@      =      x?3?4?2?4?????? ??     