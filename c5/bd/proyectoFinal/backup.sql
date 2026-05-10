--
-- PostgreSQL database dump
--

\restrict xqZg7f8FGLTPvY1eCYEtWjPtWlscoH9FiyHnNfrFXsqVwlSqhjmbhgeTJb6hJ9z

-- Dumped from database version 18.3 (Debian 18.3-1.pgdg12+1)
-- Dumped by pg_dump version 18.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(50) NOT NULL
);


ALTER TABLE public.categoria OWNER TO grupo;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_categoria_seq OWNER TO grupo;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(100) NOT NULL,
    dni_ruc_cliente character varying(11),
    telefono_cliente character varying(15)
);


ALTER TABLE public.cliente OWNER TO grupo;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO grupo;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: compra_insumo; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.compra_insumo (
    id_compra_insumo integer NOT NULL,
    fecha_compra_insumo date DEFAULT CURRENT_DATE,
    id_insumo integer,
    id_proveedor integer,
    cantidad_insumo numeric(10,2),
    costo_insumo numeric(10,2)
);


ALTER TABLE public.compra_insumo OWNER TO grupo;

--
-- Name: compra_insumo_id_compra_insumo_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.compra_insumo_id_compra_insumo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.compra_insumo_id_compra_insumo_seq OWNER TO grupo;

--
-- Name: compra_insumo_id_compra_insumo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.compra_insumo_id_compra_insumo_seq OWNED BY public.compra_insumo.id_compra_insumo;


--
-- Name: comprobante; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.comprobante (
    id_comprobante integer NOT NULL,
    tipo_comprobante character varying(20),
    fecha_emision timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id_pedido integer,
    id_cliente integer
);


ALTER TABLE public.comprobante OWNER TO grupo;

--
-- Name: comprobante_id_comprobante_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.comprobante_id_comprobante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comprobante_id_comprobante_seq OWNER TO grupo;

--
-- Name: comprobante_id_comprobante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.comprobante_id_comprobante_seq OWNED BY public.comprobante.id_comprobante;


--
-- Name: detalle_pedido; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.detalle_pedido (
    id_detalle integer NOT NULL,
    id_pedido integer,
    id_producto integer,
    cantidad integer NOT NULL,
    subtotal numeric(10,2)
);


ALTER TABLE public.detalle_pedido OWNER TO grupo;

--
-- Name: detalle_pedido_id_detalle_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.detalle_pedido_id_detalle_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_pedido_id_detalle_seq OWNER TO grupo;

--
-- Name: detalle_pedido_id_detalle_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.detalle_pedido_id_detalle_seq OWNED BY public.detalle_pedido.id_detalle;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre_empleado character varying(50) NOT NULL,
    apellido_empleado character varying(50) NOT NULL,
    cargo character varying(30),
    sueldo numeric(10,2),
    celular_empleado character varying(15)
);


ALTER TABLE public.empleado OWNER TO grupo;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO grupo;

--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- Name: insumo; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.insumo (
    id_insumo integer NOT NULL,
    nombre_insumo character varying(100) NOT NULL,
    stock_actual numeric(10,2),
    unidad_medida character varying(10)
);


ALTER TABLE public.insumo OWNER TO grupo;

--
-- Name: insumo_id_insumo_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.insumo_id_insumo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.insumo_id_insumo_seq OWNER TO grupo;

--
-- Name: insumo_id_insumo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.insumo_id_insumo_seq OWNED BY public.insumo.id_insumo;


--
-- Name: mesa; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    numero_mesa integer NOT NULL,
    capacidad_mesa integer,
    estado_mesa character varying(20) DEFAULT 'Libre'::character varying
);


ALTER TABLE public.mesa OWNER TO grupo;

--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.mesa_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mesa_id_mesa_seq OWNER TO grupo;

--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.mesa_id_mesa_seq OWNED BY public.mesa.id_mesa;


--
-- Name: pedido; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    fecha_pedido date DEFAULT CURRENT_DATE,
    hora_pedido time without time zone DEFAULT CURRENT_TIME,
    total numeric(10,2) DEFAULT 0,
    id_mesa integer,
    id_empleado integer
);


ALTER TABLE public.pedido OWNER TO grupo;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedido_id_pedido_seq OWNER TO grupo;

--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.pedido_id_pedido_seq OWNED BY public.pedido.id_pedido;


--
-- Name: platillo; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.platillo (
    id_producto integer CONSTRAINT producto_id_producto_not_null NOT NULL,
    nombre_producto character varying(100) CONSTRAINT producto_nombre_producto_not_null NOT NULL,
    descripcion_producto text,
    precio_producto numeric(10,2) CONSTRAINT producto_precio_producto_not_null NOT NULL,
    id_categoria integer
);


ALTER TABLE public.platillo OWNER TO grupo;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_id_producto_seq OWNER TO grupo;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.platillo.id_producto;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    ruc_proveedor character varying(11) NOT NULL,
    nombre_empresa_proveedor character varying(100) NOT NULL,
    telefono_proveedor character varying(15)
);


ALTER TABLE public.proveedor OWNER TO grupo;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNER TO grupo;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;


--
-- Name: turno; Type: TABLE; Schema: public; Owner: grupo
--

CREATE TABLE public.turno (
    id_turno integer NOT NULL,
    nombre_turno character varying(20) NOT NULL,
    hora_inicio time without time zone,
    hora_fin time without time zone
);


ALTER TABLE public.turno OWNER TO grupo;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE; Schema: public; Owner: grupo
--

CREATE SEQUENCE public.turno_id_turno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.turno_id_turno_seq OWNER TO grupo;

--
-- Name: turno_id_turno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grupo
--

ALTER SEQUENCE public.turno_id_turno_seq OWNED BY public.turno.id_turno;


--
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: compra_insumo id_compra_insumo; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.compra_insumo ALTER COLUMN id_compra_insumo SET DEFAULT nextval('public.compra_insumo_id_compra_insumo_seq'::regclass);


--
-- Name: comprobante id_comprobante; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.comprobante ALTER COLUMN id_comprobante SET DEFAULT nextval('public.comprobante_id_comprobante_seq'::regclass);


--
-- Name: detalle_pedido id_detalle; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.detalle_pedido ALTER COLUMN id_detalle SET DEFAULT nextval('public.detalle_pedido_id_detalle_seq'::regclass);


--
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- Name: insumo id_insumo; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.insumo ALTER COLUMN id_insumo SET DEFAULT nextval('public.insumo_id_insumo_seq'::regclass);


--
-- Name: mesa id_mesa; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesa_id_mesa_seq'::regclass);


--
-- Name: pedido id_pedido; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.pedido ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedido_id_pedido_seq'::regclass);


--
-- Name: platillo id_producto; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.platillo ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);


--
-- Name: proveedor id_proveedor; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);


--
-- Name: turno id_turno; Type: DEFAULT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.turno ALTER COLUMN id_turno SET DEFAULT nextval('public.turno_id_turno_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.categoria (id_categoria, nombre_categoria) FROM stdin;
1	Entradas Frias
2	Entradas Calientes
3	Sopas y Cremas
4	Pastas
5	Pescados
6	Mariscos
7	Carnes
8	Aves
9	Guarniciones
10	Ensaladas
11	Pizzas
12	Hamburguesas
13	Sandwiches
14	Postres Peruanos
15	Postres Internacionales
16	Bebidas Naturales
17	Gaseosas
18	Cervezas
19	Vinos Tintos
20	Vinos Blancos
21	Cocteles
22	Cafeteria
23	Infusiones
24	Licores
25	Menu Infantil
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.cliente (id_cliente, nombre_cliente, dni_ruc_cliente, telefono_cliente) FROM stdin;
1	Carlos Mendoza	70214589	987456123
2	Maria Feijoo	45871236	954123654
3	Roberto Ruiz	10457896	963258741
4	Ana Paula	74125896	951487263
5	Pedro Castillo	45217896	958741236
6	Sistemas SAC	20457812369	0142589
7	Restaurantes Peru	20114477885	0155566
8	Luis Diaz	09874512	963254187
9	Elena Torres	12457896	954781236
10	Jorge Luna	45781263	963258741
11	Ricardo Mendoza	74581236	951487263
12	Sofia Vergara	12458963	987456123
13	Gabriel Garcia	45781296	954123654
14	Isabel Allende	74125863	963258741
15	Mario Vargas	12457863	951487263
16	Consultora UTP	20556677881	0177788
17	Patricia Barreto	45127896	958741236
18	Fernando Armas	09871236	963254187
19	Gisela Valcarcel	45123698	954781236
20	Renzo Schuller	12457836	963258741
21	Gian Piero Diaz	74581296	951487263
22	Beto Ortiz	12458936	987456123
23	Magaly Medina	45781269	954123654
24	Rodrigo Gonzalez	74125836	963258741
25	Daniela Darcourt	12457869	951487263
\.


--
-- Data for Name: compra_insumo; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.compra_insumo (id_compra_insumo, fecha_compra_insumo, id_insumo, id_proveedor, cantidad_insumo, costo_insumo) FROM stdin;
1	2026-05-10	1	1	100.00	350.00
2	2026-05-10	2	9	50.00	450.00
3	2026-05-10	3	4	30.00	420.00
4	2026-05-10	4	2	20.00	750.00
5	2026-05-10	5	3	100.00	180.00
6	2026-05-10	6	12	45.00	135.00
7	2026-05-10	7	13	15.00	95.00
8	2026-05-10	8	12	20.00	60.00
9	2026-05-10	9	5	25.00	480.00
10	2026-05-10	10	5	12.00	550.00
11	2026-05-10	11	7	60.00	210.00
12	2026-05-10	12	6	25.00	95.00
13	2026-05-10	13	6	40.00	140.00
14	2026-05-10	14	15	10.00	25.00
15	2026-05-10	15	13	8.00	40.00
16	2026-05-10	16	15	5.00	55.00
17	2026-05-10	17	20	150.00	85.00
18	2026-05-10	18	14	30.00	150.00
19	2026-05-10	19	3	20.00	90.00
20	2026-05-10	20	7	12.00	240.00
21	2026-05-10	21	8	80.00	120.00
22	2026-05-10	22	11	10.00	85.00
23	2026-05-10	23	11	48.00	50.00
24	2026-05-10	24	16	100.00	70.00
25	2026-05-10	25	10	3.00	165.00
\.


--
-- Data for Name: comprobante; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.comprobante (id_comprobante, tipo_comprobante, fecha_emision, id_pedido, id_cliente) FROM stdin;
1	Boleta	2026-05-10 09:51:30.035933	1	1
2	Factura	2026-05-10 09:51:30.035933	2	2
3	Boleta	2026-05-10 09:51:30.035933	3	3
4	Boleta	2026-05-10 09:51:30.035933	4	4
5	Factura	2026-05-10 09:51:30.035933	5	5
6	Boleta	2026-05-10 09:51:30.035933	6	6
7	Factura	2026-05-10 09:51:30.035933	7	7
8	Boleta	2026-05-10 09:51:30.035933	8	8
9	Boleta	2026-05-10 09:51:30.035933	9	9
10	Factura	2026-05-10 09:51:30.035933	10	10
11	Boleta	2026-05-10 09:51:30.035933	11	11
12	Boleta	2026-05-10 09:51:30.035933	12	12
13	Boleta	2026-05-10 09:51:30.035933	13	13
14	Factura	2026-05-10 09:51:30.035933	14	14
15	Boleta	2026-05-10 09:51:30.035933	15	15
16	Factura	2026-05-10 09:51:30.035933	16	16
17	Boleta	2026-05-10 09:51:30.035933	17	17
18	Boleta	2026-05-10 09:51:30.035933	18	18
19	Factura	2026-05-10 09:51:30.035933	19	19
20	Boleta	2026-05-10 09:51:30.035933	20	20
21	Boleta	2026-05-10 09:51:30.035933	21	21
22	Boleta	2026-05-10 09:51:30.035933	22	22
23	Boleta	2026-05-10 09:51:30.035933	23	23
24	Boleta	2026-05-10 09:51:30.035933	24	24
25	Boleta	2026-05-10 09:51:30.035933	25	25
\.


--
-- Data for Name: detalle_pedido; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.detalle_pedido (id_detalle, id_pedido, id_producto, cantidad, subtotal) FROM stdin;
1	1	1	1	38.00
2	1	16	1	15.00
3	2	4	2	70.00
4	2	17	2	10.00
5	3	7	1	65.00
6	3	19	1	25.00
7	4	12	2	44.00
8	4	18	2	18.00
9	5	6	1	42.00
10	6	2	1	28.00
11	7	5	1	45.00
12	8	8	1	30.00
13	9	11	1	38.00
14	10	15	2	30.00
15	11	21	1	18.00
16	12	7	1	65.00
17	13	13	3	45.00
18	14	14	1	12.00
19	15	22	1	10.00
20	16	1	1	38.00
21	17	2	1	28.00
22	18	4	1	35.00
23	19	7	1	65.00
24	20	24	2	30.00
25	21	5	1	45.00
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.empleado (id_empleado, nombre_empleado, apellido_empleado, cargo, sueldo, celular_empleado) FROM stdin;
1	Ana	Garcia	Mesera	1200.00	955444333
2	Luis	Torres	Cocinero	2500.00	911222333
3	Rosa	Mendoza	Mesera	1200.00	988777666
4	Carlos	Sanchez	Chef	3500.00	944555666
5	Marta	Lopez	Cajera	1500.00	922333444
6	Jorge	Ramirez	Barman	1800.00	933444555
7	Lucia	Paredes	Mesera	1200.00	966777888
8	Kevin	Huaman	Ayudante Cocina	1100.00	977888999
9	Sofia	Castro	Administradora	4000.00	999111222
10	Diego	Arenas	Seguridad	1500.00	988222333
11	Carmen	Villalta	Limpieza	1050.00	977333444
12	Raul	Zevallos	Mesero	1200.00	966444555
13	Beatriz	Flores	Repostera	2200.00	955555666
14	Andres	Caceres	Mesero	1200.00	944666777
15	Elena	Rojas	Anfitriona	1400.00	933777888
16	Miguel	Vargas	Cocinero	2500.00	922888999
17	Sonia	Bermudez	Cajera	1500.00	911999000
18	Fernando	Quispe	Ayudante Cocina	1100.00	900111222
19	Gloria	Paz	Mesera	1200.00	912345678
20	Hugo	Navarro	Mesero	1200.00	923456789
21	Ines	Guzman	Limpieza	1050.00	934567890
22	Javier	Riva	Sommelier	2800.00	945678901
23	Karla	Solis	Mesera	1200.00	956789012
24	Leonel	Messi	Invitado Especial	5000.00	967890123
25	Monica	Prado	Cocinero	2500.00	978901234
\.


--
-- Data for Name: insumo; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.insumo (id_insumo, nombre_insumo, stock_actual, unidad_medida) FROM stdin;
1	Arroz Extra	50.00	kg
2	Aceite Vegetal	20.00	lt
3	Pollo Entero	30.00	kg
4	Lomo de Res	15.00	kg
5	Papa Amarilla	40.00	kg
6	Cebolla Roja	25.00	kg
7	Aji Amarillo	10.00	kg
8	Limon Sutil	12.00	kg
9	Pescado Cabrilla	18.00	kg
10	Mariscos Mixtos	10.00	kg
11	Leche Evaporada	24.00	unidades
12	Harina sin preparar	10.00	kg
13	Azucar Blanca	20.00	kg
14	Sal Yodada	5.00	kg
15	Culantro y Perejil	3.00	kg
16	Ajo Molido	5.00	kg
17	Huevo de Gallina	120.00	unidades
18	Fideos Tallarin	15.00	kg
19	Maiz Morado	10.00	kg
20	Queso Fresco	8.00	kg
21	Pan de Hamburguesa	50.00	unidades
22	Detergente Vajilla	5.00	lt
23	Papel Higienico	48.00	unidades
24	Servilletas de Papel	100.00	unidades
25	Gas Propano 45kg	2.00	unidades
\.


--
-- Data for Name: mesa; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.mesa (id_mesa, numero_mesa, capacidad_mesa, estado_mesa) FROM stdin;
1	1	2	Ocupada
2	2	2	Libre
3	3	4	Ocupada
4	4	4	Libre
5	5	6	Libre
6	6	8	Ocupada
7	7	2	Libre
8	8	2	Ocupada
9	9	4	Libre
10	10	4	Libre
11	11	4	Ocupada
12	12	6	Libre
13	13	10	Libre
14	14	2	Libre
15	15	2	Ocupada
16	16	4	Libre
17	17	4	Libre
18	18	4	Ocupada
19	19	6	Libre
20	20	2	Libre
21	21	2	Libre
22	22	4	Libre
23	23	4	Libre
24	24	8	Libre
25	25	2	Ocupada
\.


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.pedido (id_pedido, fecha_pedido, hora_pedido, total, id_mesa, id_empleado) FROM stdin;
1	2026-05-10	08:30:00	53.00	1	1
2	2026-05-10	09:15:00	80.00	2	3
3	2026-05-10	10:00:00	90.00	3	7
4	2026-05-10	11:20:00	62.00	4	12
5	2026-05-10	12:45:00	57.00	5	14
6	2026-05-10	13:10:00	38.00	6	19
7	2026-05-10	13:30:00	67.00	7	20
8	2026-05-10	14:00:00	35.00	8	23
9	2026-05-10	14:45:00	47.00	9	1
10	2026-05-10	15:15:00	50.00	10	3
11	2026-05-10	16:00:00	56.00	11	7
12	2026-05-10	17:30:00	115.00	12	12
13	2026-05-10	18:15:00	45.00	13	14
14	2026-05-10	19:00:00	78.00	14	19
15	2026-05-10	19:45:00	32.00	15	20
16	2026-05-10	20:20:00	95.00	16	23
17	2026-05-10	21:00:00	41.00	17	1
18	2026-05-10	21:30:00	66.00	18	3
19	2026-05-10	22:10:00	88.00	19	7
20	2026-05-10	22:45:00	29.00	20	12
21	2026-05-10	23:15:00	54.00	21	14
22	2026-05-10	23:45:00	0.00	22	19
23	2026-05-10	00:15:00	0.00	23	20
24	2026-05-10	01:00:00	0.00	24	23
25	2026-05-10	02:00:00	0.00	25	1
\.


--
-- Data for Name: platillo; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.platillo (id_producto, nombre_producto, descripcion_producto, precio_producto, id_categoria) FROM stdin;
1	Tiradito al Aji Amarillo	Laminas de pescado en salsa de aji	38.00	1
2	Chicharron de Pollo	Trozos de pollo crocantes con papas	28.00	2
3	Dieta de Pollo	Sopa ligera con fideos y verduras	22.00	3
4	Fettuccine Alfredo	Pasta en salsa blanca y jamon	35.00	4
5	Corvina a la Plancha	Filete de corvina con vegetales	45.00	5
6	Arroz con Mariscos	Arroz meloso con mixtura del mar	42.00	6
7	Bife Angosto	300gr de carne a la parrilla	65.00	7
8	Milanesa de Pollo	Pollo empanizado con puré	30.00	8
9	Porcion de Camote	Camotes fritos o sancochados	10.00	9
10	Ensalada Cesar	Lechuga, crotones y pollo	25.00	10
11	Pizza Pepperoni	Salsa de tomate, queso y pepperoni	38.00	11
12	Hamburguesa Royal	Carne, huevo, queso y tocino	22.00	12
13	Butifarra	Jamon del pais con salsa criolla	15.00	13
14	Suspiro a la Limeña	Dulce tradicional con merengue	12.00	14
15	Cheesecake de Fresa	Postre de queso con mermelada	15.00	15
16	Chicha Morada Jarra	Bebida de maiz morado 1lt	15.00	16
17	Sprite 500ml	Gaseosa sabor lima-limon	5.00	17
18	Cerveza Pilsen	Botella personal 330ml	9.00	18
19	Malbec Reserva	Copa de vino tinto	25.00	19
20	Chardonnay	Copa de vino blanco joven	22.00	20
21	Chilcano de Pisco	Pisco, ginger ale y limon	18.00	21
22	Cappuccino	Cafe con leche espumosa	10.00	22
23	Te Manzanilla	Infusion relajante	5.00	23
24	Shot de Tequila	Tequila reposado con sal y limon	15.00	24
25	Nuggets con Papas	Porcion para niños	18.00	1
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.proveedor (id_proveedor, ruc_proveedor, nombre_empresa_proveedor, telefono_proveedor) FROM stdin;
1	20100132456	Distribuidora San Jose	014258796
2	20556677889	Carnes y Cortes del Sur	987456321
3	20443322110	Frutas y Verduras Central	954123654
4	20123456789	Avicola El Pollon	963258741
5	20998877665	Pesquera Mar Azul	951487263
6	20334455667	Abarrotes Don Lucho	958741236
7	20778899001	Lacteos Gloria Distribucion	016148000
8	20887766554	Panaderia La Espiga	963254187
9	20112233445	Bebidas del Peru SAC	013110000
10	20665544332	Gas Total SAC	954781236
11	20223344556	Limpieza y Desinfeccion Pro	963258741
12	20554433221	Mercado Mayorista Lima	951487263
13	20445566778	Hortalizas Orgánicas S.A.	987456123
14	20332211445	Distribuidora de Menestras	954123654
15	20997755331	Especias y Condimentos Inca	963258741
16	20886644220	Empaque y Descartables San	951487263
17	20775533119	Importadora de Vinos S.A.C.	958741236
18	20664422008	Café y Cacao del Oriente	963254187
19	20553311997	Suministros de Cocina Peru	954781236
20	20442200886	Distribuidora de Huevos Oro	963258741
21	20331199775	Articulos de Oficina UTP	951487263
22	20220088664	Mantenimiento de Equipos SA	987456123
23	20119977553	Agua Pura Vida Distribucion	954123654
24	20118866442	Cervecería Nacional S.A.A.	963258741
25	20117755331	Distribuidora El Olivar	951487263
\.


--
-- Data for Name: turno; Type: TABLE DATA; Schema: public; Owner: grupo
--

COPY public.turno (id_turno, nombre_turno, hora_inicio, hora_fin) FROM stdin;
1	Mañana	08:00:00	16:00:00
2	Tarde	12:00:00	20:00:00
3	Noche	16:00:00	00:00:00
4	Cierre/Madrugada	20:00:00	04:00:00
\.


--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 25, true);


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 25, true);


--
-- Name: compra_insumo_id_compra_insumo_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.compra_insumo_id_compra_insumo_seq', 25, true);


--
-- Name: comprobante_id_comprobante_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.comprobante_id_comprobante_seq', 25, true);


--
-- Name: detalle_pedido_id_detalle_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.detalle_pedido_id_detalle_seq', 25, true);


--
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 25, true);


--
-- Name: insumo_id_insumo_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.insumo_id_insumo_seq', 25, true);


--
-- Name: mesa_id_mesa_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.mesa_id_mesa_seq', 25, true);


--
-- Name: pedido_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.pedido_id_pedido_seq', 25, true);


--
-- Name: producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.producto_id_producto_seq', 25, true);


--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 25, true);


--
-- Name: turno_id_turno_seq; Type: SEQUENCE SET; Schema: public; Owner: grupo
--

SELECT pg_catalog.setval('public.turno_id_turno_seq', 4, true);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: cliente cliente_dni_ruc_cliente_key; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_dni_ruc_cliente_key UNIQUE (dni_ruc_cliente);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: compra_insumo compra_insumo_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.compra_insumo
    ADD CONSTRAINT compra_insumo_pkey PRIMARY KEY (id_compra_insumo);


--
-- Name: comprobante comprobante_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.comprobante
    ADD CONSTRAINT comprobante_pkey PRIMARY KEY (id_comprobante);


--
-- Name: detalle_pedido detalle_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_pkey PRIMARY KEY (id_detalle);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- Name: insumo insumo_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.insumo
    ADD CONSTRAINT insumo_pkey PRIMARY KEY (id_insumo);


--
-- Name: mesa mesa_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id_mesa);


--
-- Name: pedido pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);


--
-- Name: platillo producto_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.platillo
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);


--
-- Name: proveedor proveedor_ruc_proveedor_key; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_ruc_proveedor_key UNIQUE (ruc_proveedor);


--
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno);


--
-- Name: compra_insumo compra_insumo_id_insumo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.compra_insumo
    ADD CONSTRAINT compra_insumo_id_insumo_fkey FOREIGN KEY (id_insumo) REFERENCES public.insumo(id_insumo);


--
-- Name: compra_insumo compra_insumo_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.compra_insumo
    ADD CONSTRAINT compra_insumo_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);


--
-- Name: comprobante comprobante_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.comprobante
    ADD CONSTRAINT comprobante_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: comprobante comprobante_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.comprobante
    ADD CONSTRAINT comprobante_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedido(id_pedido);


--
-- Name: detalle_pedido detalle_pedido_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedido(id_pedido);


--
-- Name: detalle_pedido detalle_pedido_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.detalle_pedido
    ADD CONSTRAINT detalle_pedido_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.platillo(id_producto);


--
-- Name: pedido pedido_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);


--
-- Name: pedido pedido_id_mesa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);


--
-- Name: platillo producto_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grupo
--

ALTER TABLE ONLY public.platillo
    ADD CONSTRAINT producto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO grupo;


--
-- Name: TABLE pg_stat_database; Type: ACL; Schema: pg_catalog; Owner: postgres
--

GRANT SELECT ON TABLE pg_catalog.pg_stat_database TO datadog;


--
-- Name: TABLE categoria; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.categoria TO tobi;


--
-- Name: TABLE cliente; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.cliente TO tobi;


--
-- Name: TABLE compra_insumo; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.compra_insumo TO tobi;


--
-- Name: TABLE comprobante; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.comprobante TO tobi;


--
-- Name: TABLE detalle_pedido; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.detalle_pedido TO tobi;


--
-- Name: TABLE empleado; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.empleado TO tobi;


--
-- Name: TABLE insumo; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.insumo TO tobi;


--
-- Name: TABLE mesa; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.mesa TO tobi;


--
-- Name: TABLE pedido; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.pedido TO tobi;


--
-- Name: TABLE platillo; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.platillo TO tobi;


--
-- Name: TABLE proveedor; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.proveedor TO tobi;


--
-- Name: TABLE turno; Type: ACL; Schema: public; Owner: grupo
--

GRANT ALL ON TABLE public.turno TO tobi;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: axel
--

ALTER DEFAULT PRIVILEGES FOR ROLE axel IN SCHEMA public GRANT ALL ON SEQUENCES TO grupo;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: piero
--

ALTER DEFAULT PRIVILEGES FOR ROLE piero IN SCHEMA public GRANT ALL ON SEQUENCES TO grupo;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: rosa
--

ALTER DEFAULT PRIVILEGES FOR ROLE rosa IN SCHEMA public GRANT ALL ON SEQUENCES TO grupo;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: axel
--

ALTER DEFAULT PRIVILEGES FOR ROLE axel IN SCHEMA public GRANT ALL ON TABLES TO grupo;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: piero
--

ALTER DEFAULT PRIVILEGES FOR ROLE piero IN SCHEMA public GRANT ALL ON TABLES TO grupo;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: rosa
--

ALTER DEFAULT PRIVILEGES FOR ROLE rosa IN SCHEMA public GRANT ALL ON TABLES TO grupo;


--
-- PostgreSQL database dump complete
--

\unrestrict xqZg7f8FGLTPvY1eCYEtWjPtWlscoH9FiyHnNfrFXsqVwlSqhjmbhgeTJb6hJ9z

