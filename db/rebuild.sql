--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
--SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: embedded_forms; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE embedded_forms (
    id integer NOT NULL,
    name character varying,
    url_slug character varying,
    service character varying,
    form_url character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: embedded_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE embedded_forms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: embedded_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE embedded_forms_id_seq OWNED BY embedded_forms.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- Name: shorts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE shorts (
    id integer NOT NULL,
    expanded character varying,
    contracted character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    title character varying,
    cached_slug character varying,
    user_id integer
);


--
-- Name: shorts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE shorts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shorts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE shorts_id_seq OWNED BY shorts.id;


--
-- Name: slugs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE slugs (
    id integer NOT NULL,
    name character varying,
    sluggable_id integer,
    sequence integer DEFAULT 1 NOT NULL,
    sluggable_type character varying(40),
    scope character varying,
    created_at timestamp without time zone
);


--
-- Name: slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE slugs_id_seq OWNED BY slugs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    provider character varying,
    uid character varying,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    api_key character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: visits; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE visits (
    id integer NOT NULL,
    short_id integer,
    referred character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    ipaddress character varying
);


--
-- Name: visits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE visits_id_seq OWNED BY visits.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY embedded_forms ALTER COLUMN id SET DEFAULT nextval('embedded_forms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY shorts ALTER COLUMN id SET DEFAULT nextval('shorts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY slugs ALTER COLUMN id SET DEFAULT nextval('slugs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY visits ALTER COLUMN id SET DEFAULT nextval('visits_id_seq'::regclass);


--
-- Data for Name: embedded_forms; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: embedded_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('embedded_forms_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO schema_migrations (version) VALUES ('20110308225116');
INSERT INTO schema_migrations (version) VALUES ('20110308234441');
INSERT INTO schema_migrations (version) VALUES ('20110309004009');
INSERT INTO schema_migrations (version) VALUES ('20110309005650');
INSERT INTO schema_migrations (version) VALUES ('20110309174005');
INSERT INTO schema_migrations (version) VALUES ('20110309190749');
INSERT INTO schema_migrations (version) VALUES ('20110309190823');
INSERT INTO schema_migrations (version) VALUES ('20110309190930');
INSERT INTO schema_migrations (version) VALUES ('20110330185741');
INSERT INTO schema_migrations (version) VALUES ('20110330190501');
INSERT INTO schema_migrations (version) VALUES ('20110330191346');
INSERT INTO schema_migrations (version) VALUES ('20150526213406');


--
-- Data for Name: shorts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (1, 'http://heel.name', 'D2YnAw', '2015-08-05 00:06:57.625658', '2015-08-05 00:06:57.625658', 'Heel Healthcare designed by nature', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (2, 'http://turner.name', '19kioYxPMw', '2015-08-05 00:06:57.905089', '2015-08-05 00:06:57.905089', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (3, 'http://hilpert.net', 'rRgkRMYRhQ', '2015-08-05 00:06:58.219328', '2015-08-05 00:06:58.219328', 'Hilpert.net - Personal web site', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (4, 'http://ritchieherman.com', 'GeScsg', '2015-08-05 00:06:58.484649', '2015-08-05 00:06:58.484649', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (5, 'http://rolfsonframi.org', 'nkZ6ug', '2015-08-05 00:06:58.690196', '2015-08-05 00:06:58.690196', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (6, 'http://schneider.org', 'x8vRLGoj', '2015-08-05 00:06:59.165723', '2015-08-05 00:06:59.165723', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (7, 'http://gutmann.com', 'N3br08E', '2015-08-05 00:06:59.473521', '2015-08-05 00:06:59.473521', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (8, 'http://kuhlman.info', 'CXZVmqk', '2015-08-05 00:06:59.605682', '2015-08-05 00:06:59.605682', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (9, 'http://gleason.org', 'FAZlK95D', '2015-08-05 00:07:00.104615', '2015-08-05 00:07:00.104615', 'The Gleason''s - -  "A Valiant Clan, Warlike in Pursuit" ', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (10, 'http://lednerkulas.name', 'X4ITsg', '2015-08-05 00:07:00.322479', '2015-08-05 00:07:00.322479', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (11, 'http://moriette.name', '3kegiNs', '2015-08-05 00:07:00.556505', '2015-08-05 00:07:00.556505', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (12, 'http://emmerich.net', 'PnTNXA', '2015-08-05 00:07:01.363794', '2015-08-05 00:07:01.363794', 'Baustelle', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (13, 'http://hintz.biz', 'fwQWxg', '2015-08-05 00:07:01.980124', '2015-08-05 00:07:01.980124', 'Hintz.biz', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (14, 'http://larkin.name', 'JooqCQQ', '2015-08-05 00:07:02.173665', '2015-08-05 00:07:02.173665', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (15, 'http://morarmueller.net', '6Ifsrq0', '2015-08-05 00:07:02.379989', '2015-08-05 00:07:02.379989', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (16, 'http://lindlittle.biz', 'Y9Yu3fM', '2015-08-05 00:07:02.583738', '2015-08-05 00:07:02.583738', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (17, 'http://ankunding.biz', '7gZxXIrbel0', '2015-08-05 00:07:02.830067', '2015-08-05 00:07:02.830067', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (18, 'http://lynch.com', 'JTy9w', '2015-08-05 00:07:03.583111', '2015-08-05 00:07:03.583111', '', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (19, 'http://kuhn.info', 'ogV0BfVq', '2015-08-05 00:07:06.944847', '2015-08-05 00:07:06.944847', 'KUHN Farm Machinery: Soil Preparation-Seeding-Fertilisation--Hay/Silage Making-Bedding & Feeding', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (20, 'http://schroedermayer.info', 'Q7lKFRQ', '2015-08-05 00:07:07.135659', '2015-08-05 00:07:07.135659', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (21, 'http://ward.net', 'p0SCnXY', '2015-08-05 00:07:08.065708', '2015-08-05 00:07:08.065708', 'Ward Systems Group Tech Support Site', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (22, 'http://carter.com', '8ElHVk', '2015-08-05 00:07:08.643678', '2015-08-05 00:07:08.643678', 'carter.com', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (23, 'http://fadel.name', 'BzcIIl0U', '2015-08-05 00:07:08.884053', '2015-08-05 00:07:08.884053', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (24, 'http://hills.info', 'PM0vfNzMw', '2015-08-05 00:07:09.29234', '2015-08-05 00:07:09.29234', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (25, 'http://pouros.net', 'UNdOL7Dy', '2015-08-05 00:07:09.457678', '2015-08-05 00:07:09.457678', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (26, 'http://mann.org', 'SDCFOzztPg', '2015-08-05 00:07:10.076473', '2015-08-05 00:07:10.076473', 'RealNames | A more meaningful email address', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (27, 'http://koelpin.biz', 'bwfOExNQw', '2015-08-05 00:07:10.305534', '2015-08-05 00:07:10.305534', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (28, 'http://ledner.info', 'imXXhGQHpw', '2015-08-05 00:07:10.484936', '2015-08-05 00:07:10.484936', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (29, 'http://hickle.net', 'vAQyVlICw', '2015-08-05 00:07:13.39014', '2015-08-05 00:07:13.39014', 'HickleDotNet | PEW PEW PEW!', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (30, 'http://waelchi.name', 'ti9uLA', '2015-08-05 00:07:13.558535', '2015-08-05 00:07:13.558535', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (31, 'http://balistreri.biz', 'ZAzB3h4', '2015-08-05 00:07:15.046628', '2015-08-05 00:07:15.046628', 'www.balistreri.biz', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (32, 'http://reichel.biz', 'xSULspl', '2015-08-05 00:07:15.713292', '2015-08-05 00:07:15.713292', 'reichel.biz - This website is for sale! - reichel Resources and Information.', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (33, 'http://mcdermott.com', 'JGcwQ2ZJeA', '2015-08-05 00:07:16.098969', '2015-08-05 00:07:16.098969', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (34, 'http://schiller.biz', 'tVNCSbmc5o', '2015-08-05 00:07:16.783468', '2015-08-05 00:07:16.783468', 'CLS faxen & kopieren  ||  Kopierer, Drucker, Faxgeräte, Zubehör + SERVICE', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (35, 'http://wintheiser.name', 'CKxYISYQfyg', '2015-08-05 00:07:16.997619', '2015-08-05 00:07:16.997619', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (36, 'http://buckridge.org', '7zVtmA', '2015-08-05 00:07:17.548661', '2015-08-05 00:07:17.548661', 'Welcome', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (37, 'http://considine.com', '9ljJPJI', '2015-08-05 00:07:18.04563', '2015-08-05 00:07:18.04563', 'RealNames | A more meaningful email address', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (38, 'http://howe.net', 'Ypif2I', '2015-08-05 00:07:18.91769', '2015-08-05 00:07:18.91769', 'You are most welcome to Howe.NET!!!', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (39, 'http://brakuchaden.biz', '79kTLJ1', '2015-08-05 00:07:19.170921', '2015-08-05 00:07:19.170921', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (40, 'http://ullrich.com', 'TX9zrl4', '2015-08-05 00:07:19.655739', '2015-08-05 00:07:19.655739', 'RealNames | A more meaningful email address', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (41, 'http://vandervort.info', 'kWlCoctHpc', '2015-08-05 00:07:19.858369', '2015-08-05 00:07:19.858369', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (42, 'http://berniermedhurst.info', '582Jnmaw3w', '2015-08-05 00:07:20.054058', '2015-08-05 00:07:20.054058', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (43, 'http://thompsonchamplin.com', 'OFgvBCHkQ', '2015-08-05 00:07:20.306495', '2015-08-05 00:07:20.306495', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (44, 'http://macejkovic.org', 'S3PEdLBywrQ', '2015-08-05 00:07:20.501102', '2015-08-05 00:07:20.501102', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (45, 'http://boehm.org', '4nhfOg', '2015-08-05 00:07:21.007668', '2015-08-05 00:07:21.007668', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (46, 'http://harvey.info', 'r34uQQ', '2015-08-05 00:07:21.321471', '2015-08-05 00:07:21.321471', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (47, 'http://harber.name', 'nB10evo', '2015-08-05 00:07:21.484243', '2015-08-05 00:07:21.484243', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (48, 'http://schaeferward.biz', 'D7anBDhd', '2015-08-05 00:07:21.750496', '2015-08-05 00:07:21.750496', NULL, NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (49, 'http://orn.info', 'RS4XfA', '2015-08-05 00:07:23.14215', '2015-08-05 00:07:23.14215', 'John T.W. Chui Biography', NULL, NULL);
INSERT INTO shorts (id, expanded, contracted, created_at, updated_at, title, cached_slug, user_id) VALUES (50, 'http://hilpert.net', 'xOm4FVqEKw', '2015-08-05 00:07:23.410286', '2015-08-05 00:07:23.410286', 'Hilpert.net - Personal web site', NULL, NULL);


--
-- Name: shorts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('shorts_id_seq', 50, true);


--
-- Data for Name: slugs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('slugs_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


--
-- Data for Name: visits; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1, 1, 'http://hageneskuhic.net', '2015-08-05 00:06:57.636595', '2015-08-05 00:06:57.636595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2, 1, 'http://schulist.info', '2015-08-05 00:06:57.638724', '2015-08-05 00:06:57.638724', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3, 1, 'http://baumbach.biz', '2015-08-05 00:06:57.640123', '2015-08-05 00:06:57.640123', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (4, 1, 'http://stanton.info', '2015-08-05 00:06:57.642217', '2015-08-05 00:06:57.642217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (5, 1, 'http://schneiderhaley.org', '2015-08-05 00:06:57.64365', '2015-08-05 00:06:57.64365', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (6, 1, 'http://grahamlueilwitz.net', '2015-08-05 00:06:57.645071', '2015-08-05 00:06:57.645071', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (7, 1, 'http://cristankunding.org', '2015-08-05 00:06:57.646571', '2015-08-05 00:06:57.646571', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (8, 1, 'http://rohan.name', '2015-08-05 00:06:57.647841', '2015-08-05 00:06:57.647841', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (9, 1, 'http://oreilly.org', '2015-08-05 00:06:57.64909', '2015-08-05 00:06:57.64909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (10, 1, 'http://huelsmcdermott.name', '2015-08-05 00:06:57.650429', '2015-08-05 00:06:57.650429', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (11, 1, 'http://pagac.com', '2015-08-05 00:06:57.651695', '2015-08-05 00:06:57.651695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (12, 1, 'http://dietrichdickens.net', '2015-08-05 00:06:57.653032', '2015-08-05 00:06:57.653032', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (13, 1, 'http://crooks.org', '2015-08-05 00:06:57.654434', '2015-08-05 00:06:57.654434', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (14, 1, 'http://treuteldenesik.org', '2015-08-05 00:06:57.655838', '2015-08-05 00:06:57.655838', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (15, 1, 'http://kuhic.biz', '2015-08-05 00:06:57.657278', '2015-08-05 00:06:57.657278', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (16, 1, 'http://reichertvon.com', '2015-08-05 00:06:57.65871', '2015-08-05 00:06:57.65871', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (17, 1, 'http://rodriguez.org', '2015-08-05 00:06:57.660053', '2015-08-05 00:06:57.660053', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (18, 1, 'http://kunze.biz', '2015-08-05 00:06:57.661436', '2015-08-05 00:06:57.661436', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (19, 1, 'http://gaylord.net', '2015-08-05 00:06:57.662847', '2015-08-05 00:06:57.662847', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (20, 1, 'http://spencer.info', '2015-08-05 00:06:57.664054', '2015-08-05 00:06:57.664054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (21, 1, 'http://wymanflatley.biz', '2015-08-05 00:06:57.665414', '2015-08-05 00:06:57.665414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (22, 1, 'http://collier.org', '2015-08-05 00:06:57.666822', '2015-08-05 00:06:57.666822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (23, 1, 'http://prosaccoherzog.net', '2015-08-05 00:06:57.668108', '2015-08-05 00:06:57.668108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (24, 1, 'http://ledner.com', '2015-08-05 00:06:57.669202', '2015-08-05 00:06:57.669202', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (25, 1, 'http://grimes.com', '2015-08-05 00:06:57.672099', '2015-08-05 00:06:57.672099', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (26, 1, 'http://keeblerreynolds.biz', '2015-08-05 00:06:57.674176', '2015-08-05 00:06:57.674176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (27, 1, 'http://goyettetorphy.com', '2015-08-05 00:06:57.675452', '2015-08-05 00:06:57.675452', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (28, 1, 'http://effertz.net', '2015-08-05 00:06:57.676912', '2015-08-05 00:06:57.676912', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (29, 1, 'http://runtemraz.org', '2015-08-05 00:06:57.678115', '2015-08-05 00:06:57.678115', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (30, 1, 'http://wisoky.org', '2015-08-05 00:06:57.679405', '2015-08-05 00:06:57.679405', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (31, 1, 'http://bernhardlangosh.org', '2015-08-05 00:06:57.680821', '2015-08-05 00:06:57.680821', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (32, 1, 'http://bartell.org', '2015-08-05 00:06:57.682157', '2015-08-05 00:06:57.682157', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (33, 1, 'http://botsford.org', '2015-08-05 00:06:57.683463', '2015-08-05 00:06:57.683463', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (34, 1, 'http://pfeffer.net', '2015-08-05 00:06:57.68486', '2015-08-05 00:06:57.68486', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (35, 1, 'http://murazik.name', '2015-08-05 00:06:57.686035', '2015-08-05 00:06:57.686035', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (36, 1, 'http://powlowski.biz', '2015-08-05 00:06:57.68731', '2015-08-05 00:06:57.68731', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (37, 1, 'http://wuckert.info', '2015-08-05 00:06:57.688535', '2015-08-05 00:06:57.688535', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (38, 1, 'http://kerluke.org', '2015-08-05 00:06:57.690016', '2015-08-05 00:06:57.690016', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (39, 1, 'http://abbott.name', '2015-08-05 00:06:57.691382', '2015-08-05 00:06:57.691382', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (40, 1, 'http://dickens.net', '2015-08-05 00:06:57.692794', '2015-08-05 00:06:57.692794', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (41, 1, 'http://pouros.biz', '2015-08-05 00:06:57.693909', '2015-08-05 00:06:57.693909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (42, 1, 'http://wisozkreilly.net', '2015-08-05 00:06:57.695049', '2015-08-05 00:06:57.695049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (43, 1, 'http://osinskistoltenberg.biz', '2015-08-05 00:06:57.69619', '2015-08-05 00:06:57.69619', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (44, 1, 'http://schimmelreilly.biz', '2015-08-05 00:06:57.697517', '2015-08-05 00:06:57.697517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (45, 1, 'http://romaguera.net', '2015-08-05 00:06:57.6986', '2015-08-05 00:06:57.6986', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (46, 1, 'http://schmitt.org', '2015-08-05 00:06:57.699718', '2015-08-05 00:06:57.699718', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (47, 1, 'http://lowe.info', '2015-08-05 00:06:57.702408', '2015-08-05 00:06:57.702408', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (48, 1, 'http://schoenmurphy.org', '2015-08-05 00:06:57.703909', '2015-08-05 00:06:57.703909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (49, 1, 'http://greenholt.net', '2015-08-05 00:06:57.705509', '2015-08-05 00:06:57.705509', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (50, 1, 'http://robertsboyle.info', '2015-08-05 00:06:57.707051', '2015-08-05 00:06:57.707051', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (51, 1, 'http://johns.org', '2015-08-05 00:06:57.70833', '2015-08-05 00:06:57.70833', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (52, 1, 'http://zieme.name', '2015-08-05 00:06:57.709582', '2015-08-05 00:06:57.709582', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (53, 1, 'http://damore.name', '2015-08-05 00:06:57.710825', '2015-08-05 00:06:57.710825', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (54, 1, 'http://parisian.com', '2015-08-05 00:06:57.71202', '2015-08-05 00:06:57.71202', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (55, 1, 'http://barton.name', '2015-08-05 00:06:57.713407', '2015-08-05 00:06:57.713407', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (56, 1, 'http://huelhoppe.net', '2015-08-05 00:06:57.714503', '2015-08-05 00:06:57.714503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (57, 1, 'http://aufderharhirthe.biz', '2015-08-05 00:06:57.715591', '2015-08-05 00:06:57.715591', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (58, 1, 'http://baumbach.com', '2015-08-05 00:06:57.716882', '2015-08-05 00:06:57.716882', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (59, 1, 'http://yundt.net', '2015-08-05 00:06:57.717974', '2015-08-05 00:06:57.717974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (60, 1, 'http://kuhlman.com', '2015-08-05 00:06:57.719108', '2015-08-05 00:06:57.719108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (61, 1, 'http://wisozk.org', '2015-08-05 00:06:57.720477', '2015-08-05 00:06:57.720477', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (62, 1, 'http://uptonbaumbach.info', '2015-08-05 00:06:57.721814', '2015-08-05 00:06:57.721814', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (63, 1, 'http://kuhicorn.com', '2015-08-05 00:06:57.723327', '2015-08-05 00:06:57.723327', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (64, 1, 'http://wyman.org', '2015-08-05 00:06:57.724572', '2015-08-05 00:06:57.724572', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (65, 1, 'http://gorczany.org', '2015-08-05 00:06:57.725992', '2015-08-05 00:06:57.725992', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (66, 1, 'http://franecki.net', '2015-08-05 00:06:57.727355', '2015-08-05 00:06:57.727355', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (67, 1, 'http://blandakrajcik.biz', '2015-08-05 00:06:57.728663', '2015-08-05 00:06:57.728663', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (68, 1, 'http://pfannerstillbergstrom.biz', '2015-08-05 00:06:57.729898', '2015-08-05 00:06:57.729898', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (69, 1, 'http://jacobi.net', '2015-08-05 00:06:57.731949', '2015-08-05 00:06:57.731949', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (70, 1, 'http://ricewehner.net', '2015-08-05 00:06:57.734234', '2015-08-05 00:06:57.734234', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (71, 1, 'http://spencer.org', '2015-08-05 00:06:57.735527', '2015-08-05 00:06:57.735527', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (72, 1, 'http://schoenhomenick.com', '2015-08-05 00:06:57.736983', '2015-08-05 00:06:57.736983', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (73, 1, 'http://heaney.info', '2015-08-05 00:06:57.738368', '2015-08-05 00:06:57.738368', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (74, 1, 'http://gusikowski.net', '2015-08-05 00:06:57.739787', '2015-08-05 00:06:57.739787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (75, 1, 'http://volkmanmayer.biz', '2015-08-05 00:06:57.741034', '2015-08-05 00:06:57.741034', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (76, 1, 'http://abbott.name', '2015-08-05 00:06:57.742293', '2015-08-05 00:06:57.742293', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (77, 1, 'http://dicki.info', '2015-08-05 00:06:57.74378', '2015-08-05 00:06:57.74378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (78, 1, 'http://wiegand.name', '2015-08-05 00:06:57.745198', '2015-08-05 00:06:57.745198', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (79, 1, 'http://bode.info', '2015-08-05 00:06:57.746719', '2015-08-05 00:06:57.746719', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (80, 1, 'http://keeling.net', '2015-08-05 00:06:57.748106', '2015-08-05 00:06:57.748106', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (81, 2, 'http://wintheiserrolfson.info', '2015-08-05 00:06:57.907393', '2015-08-05 00:06:57.907393', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (82, 2, 'http://brakus.net', '2015-08-05 00:06:57.908905', '2015-08-05 00:06:57.908905', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (83, 2, 'http://gislason.biz', '2015-08-05 00:06:57.910147', '2015-08-05 00:06:57.910147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (84, 2, 'http://ratke.com', '2015-08-05 00:06:57.91146', '2015-08-05 00:06:57.91146', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (85, 2, 'http://wolff.info', '2015-08-05 00:06:57.912714', '2015-08-05 00:06:57.912714', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (86, 2, 'http://cummingskoch.com', '2015-08-05 00:06:57.913854', '2015-08-05 00:06:57.913854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (87, 2, 'http://watsica.biz', '2015-08-05 00:06:57.914929', '2015-08-05 00:06:57.914929', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (88, 2, 'http://dooleymoen.net', '2015-08-05 00:06:57.915967', '2015-08-05 00:06:57.915967', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (89, 2, 'http://osinskihalvorson.org', '2015-08-05 00:06:57.917025', '2015-08-05 00:06:57.917025', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (90, 2, 'http://wuckertdietrich.biz', '2015-08-05 00:06:57.918423', '2015-08-05 00:06:57.918423', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (91, 2, 'http://smitham.net', '2015-08-05 00:06:57.920085', '2015-08-05 00:06:57.920085', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (92, 2, 'http://reynolds.org', '2015-08-05 00:06:57.922179', '2015-08-05 00:06:57.922179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (93, 2, 'http://frami.org', '2015-08-05 00:06:57.923472', '2015-08-05 00:06:57.923472', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (94, 2, 'http://millerolson.biz', '2015-08-05 00:06:57.924895', '2015-08-05 00:06:57.924895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (95, 2, 'http://mraztreutel.org', '2015-08-05 00:06:57.925982', '2015-08-05 00:06:57.925982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (96, 2, 'http://keler.biz', '2015-08-05 00:06:57.927243', '2015-08-05 00:06:57.927243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (97, 2, 'http://pagac.biz', '2015-08-05 00:06:57.928611', '2015-08-05 00:06:57.928611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (98, 2, 'http://mckenziedonnelly.net', '2015-08-05 00:06:57.929962', '2015-08-05 00:06:57.929962', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (99, 2, 'http://hyatt.net', '2015-08-05 00:06:57.93131', '2015-08-05 00:06:57.93131', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (100, 2, 'http://hegmann.com', '2015-08-05 00:06:57.932469', '2015-08-05 00:06:57.932469', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (101, 2, 'http://medhurstshanahan.biz', '2015-08-05 00:06:57.933563', '2015-08-05 00:06:57.933563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (102, 2, 'http://rosenbaum.name', '2015-08-05 00:06:57.934875', '2015-08-05 00:06:57.934875', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (103, 2, 'http://lindgren.info', '2015-08-05 00:06:57.936235', '2015-08-05 00:06:57.936235', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (104, 2, 'http://yundt.net', '2015-08-05 00:06:57.937751', '2015-08-05 00:06:57.937751', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (105, 2, 'http://reynoldsrobel.biz', '2015-08-05 00:06:57.938956', '2015-08-05 00:06:57.938956', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (106, 2, 'http://prohaska.biz', '2015-08-05 00:06:57.940233', '2015-08-05 00:06:57.940233', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (107, 2, 'http://kihn.info', '2015-08-05 00:06:57.941399', '2015-08-05 00:06:57.941399', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (108, 2, 'http://konopelski.org', '2015-08-05 00:06:57.942561', '2015-08-05 00:06:57.942561', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (109, 2, 'http://berge.net', '2015-08-05 00:06:57.943913', '2015-08-05 00:06:57.943913', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (110, 2, 'http://wisozk.biz', '2015-08-05 00:06:57.945263', '2015-08-05 00:06:57.945263', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (111, 2, 'http://wisozk.info', '2015-08-05 00:06:57.94662', '2015-08-05 00:06:57.94662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (112, 2, 'http://halvorson.org', '2015-08-05 00:06:57.947733', '2015-08-05 00:06:57.947733', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (113, 2, 'http://waelchi.com', '2015-08-05 00:06:57.949078', '2015-08-05 00:06:57.949078', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (114, 2, 'http://cummingspacocha.net', '2015-08-05 00:06:57.95185', '2015-08-05 00:06:57.95185', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (115, 2, 'http://bogisich.name', '2015-08-05 00:06:57.954016', '2015-08-05 00:06:57.954016', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (116, 2, 'http://trantowwest.org', '2015-08-05 00:06:57.955306', '2015-08-05 00:06:57.955306', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (117, 2, 'http://sengerparisian.biz', '2015-08-05 00:06:57.956517', '2015-08-05 00:06:57.956517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (118, 2, 'http://rohan.com', '2015-08-05 00:06:57.957899', '2015-08-05 00:06:57.957899', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (119, 2, 'http://armstrong.name', '2015-08-05 00:06:57.959245', '2015-08-05 00:06:57.959245', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (120, 2, 'http://konopelskiritchie.info', '2015-08-05 00:06:57.960606', '2015-08-05 00:06:57.960606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (121, 2, 'http://ratke.info', '2015-08-05 00:06:57.961905', '2015-08-05 00:06:57.961905', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (122, 2, 'http://hammes.biz', '2015-08-05 00:06:57.963207', '2015-08-05 00:06:57.963207', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (123, 2, 'http://damore.org', '2015-08-05 00:06:57.96445', '2015-08-05 00:06:57.96445', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (124, 2, 'http://kemmer.net', '2015-08-05 00:06:57.965799', '2015-08-05 00:06:57.965799', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (125, 2, 'http://braun.name', '2015-08-05 00:06:57.96718', '2015-08-05 00:06:57.96718', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (126, 2, 'http://stroman.com', '2015-08-05 00:06:57.96861', '2015-08-05 00:06:57.96861', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (127, 2, 'http://marksflatley.name', '2015-08-05 00:06:57.970009', '2015-08-05 00:06:57.970009', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (128, 2, 'http://bergstrom.org', '2015-08-05 00:06:57.971417', '2015-08-05 00:06:57.971417', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (129, 2, 'http://collier.net', '2015-08-05 00:06:57.972644', '2015-08-05 00:06:57.972644', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (130, 2, 'http://littlemarks.biz', '2015-08-05 00:06:57.97397', '2015-08-05 00:06:57.97397', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (131, 2, 'http://robel.net', '2015-08-05 00:06:57.975193', '2015-08-05 00:06:57.975193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (132, 2, 'http://cainbecker.name', '2015-08-05 00:06:57.976699', '2015-08-05 00:06:57.976699', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (133, 2, 'http://halvorson.net', '2015-08-05 00:06:57.977982', '2015-08-05 00:06:57.977982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (134, 2, 'http://hansen.info', '2015-08-05 00:06:57.979435', '2015-08-05 00:06:57.979435', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (135, 2, 'http://brownkris.name', '2015-08-05 00:06:57.982055', '2015-08-05 00:06:57.982055', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (136, 2, 'http://jaskolski.org', '2015-08-05 00:06:57.984167', '2015-08-05 00:06:57.984167', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (137, 2, 'http://hermanweber.net', '2015-08-05 00:06:57.985656', '2015-08-05 00:06:57.985656', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (138, 2, 'http://osinski.info', '2015-08-05 00:06:57.987008', '2015-08-05 00:06:57.987008', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (139, 2, 'http://feilmoriette.info', '2015-08-05 00:06:57.988204', '2015-08-05 00:06:57.988204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (140, 2, 'http://brownwisozk.biz', '2015-08-05 00:06:57.989399', '2015-08-05 00:06:57.989399', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (141, 2, 'http://gradycole.com', '2015-08-05 00:06:57.990775', '2015-08-05 00:06:57.990775', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (142, 2, 'http://greenholt.name', '2015-08-05 00:06:57.992091', '2015-08-05 00:06:57.992091', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (143, 2, 'http://wisokygoldner.biz', '2015-08-05 00:06:57.993391', '2015-08-05 00:06:57.993391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (144, 2, 'http://wunsch.org', '2015-08-05 00:06:57.994488', '2015-08-05 00:06:57.994488', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (145, 2, 'http://ornswift.com', '2015-08-05 00:06:57.995643', '2015-08-05 00:06:57.995643', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (146, 2, 'http://bogisichdach.name', '2015-08-05 00:06:57.996943', '2015-08-05 00:06:57.996943', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (147, 2, 'http://streich.org', '2015-08-05 00:06:57.998313', '2015-08-05 00:06:57.998313', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (148, 2, 'http://stehr.org', '2015-08-05 00:06:57.999589', '2015-08-05 00:06:57.999589', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (149, 2, 'http://witting.com', '2015-08-05 00:06:58.000846', '2015-08-05 00:06:58.000846', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (150, 2, 'http://strosinrau.biz', '2015-08-05 00:06:58.002042', '2015-08-05 00:06:58.002042', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (151, 2, 'http://jerde.name', '2015-08-05 00:06:58.003232', '2015-08-05 00:06:58.003232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (152, 2, 'http://dicki.info', '2015-08-05 00:06:58.004413', '2015-08-05 00:06:58.004413', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (153, 2, 'http://abbott.org', '2015-08-05 00:06:58.00563', '2015-08-05 00:06:58.00563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (154, 3, 'http://thiel.name', '2015-08-05 00:06:58.222404', '2015-08-05 00:06:58.222404', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (155, 3, 'http://skiles.info', '2015-08-05 00:06:58.223955', '2015-08-05 00:06:58.223955', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (156, 3, 'http://walterwaelchi.name', '2015-08-05 00:06:58.22529', '2015-08-05 00:06:58.22529', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (157, 3, 'http://maggio.biz', '2015-08-05 00:06:58.226704', '2015-08-05 00:06:58.226704', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (158, 3, 'http://trantowmetz.org', '2015-08-05 00:06:58.22808', '2015-08-05 00:06:58.22808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (159, 3, 'http://bruenkuhlman.org', '2015-08-05 00:06:58.229257', '2015-08-05 00:06:58.229257', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (160, 3, 'http://feilkiehn.org', '2015-08-05 00:06:58.230533', '2015-08-05 00:06:58.230533', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (161, 3, 'http://dare.info', '2015-08-05 00:06:58.244208', '2015-08-05 00:06:58.244208', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (162, 3, 'http://wunsch.com', '2015-08-05 00:06:58.245647', '2015-08-05 00:06:58.245647', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (163, 3, 'http://rolfsonbaumbach.com', '2015-08-05 00:06:58.246922', '2015-08-05 00:06:58.246922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (164, 3, 'http://champlin.net', '2015-08-05 00:06:58.248068', '2015-08-05 00:06:58.248068', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (165, 3, 'http://sporer.info', '2015-08-05 00:06:58.249498', '2015-08-05 00:06:58.249498', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (166, 3, 'http://runte.org', '2015-08-05 00:06:58.251258', '2015-08-05 00:06:58.251258', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (167, 3, 'http://borerfeest.org', '2015-08-05 00:06:58.252727', '2015-08-05 00:06:58.252727', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (168, 3, 'http://heaney.org', '2015-08-05 00:06:58.254194', '2015-08-05 00:06:58.254194', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (169, 3, 'http://borerjohns.com', '2015-08-05 00:06:58.255453', '2015-08-05 00:06:58.255453', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (170, 3, 'http://schneider.biz', '2015-08-05 00:06:58.256733', '2015-08-05 00:06:58.256733', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (171, 3, 'http://kiehnarmstrong.name', '2015-08-05 00:06:58.257954', '2015-08-05 00:06:58.257954', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (172, 3, 'http://waelchimayert.info', '2015-08-05 00:06:58.259188', '2015-08-05 00:06:58.259188', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (173, 3, 'http://leffler.biz', '2015-08-05 00:06:58.261942', '2015-08-05 00:06:58.261942', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (174, 3, 'http://ko.name', '2015-08-05 00:06:58.263916', '2015-08-05 00:06:58.263916', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (175, 3, 'http://danielbuckridge.name', '2015-08-05 00:06:58.265338', '2015-08-05 00:06:58.265338', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (176, 3, 'http://dickens.org', '2015-08-05 00:06:58.266704', '2015-08-05 00:06:58.266704', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (177, 3, 'http://johns.biz', '2015-08-05 00:06:58.268015', '2015-08-05 00:06:58.268015', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (178, 3, 'http://cormier.name', '2015-08-05 00:06:58.269179', '2015-08-05 00:06:58.269179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (179, 3, 'http://feil.biz', '2015-08-05 00:06:58.2703', '2015-08-05 00:06:58.2703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (180, 3, 'http://mitchell.name', '2015-08-05 00:06:58.271542', '2015-08-05 00:06:58.271542', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (181, 3, 'http://stark.info', '2015-08-05 00:06:58.272894', '2015-08-05 00:06:58.272894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (182, 3, 'http://larkin.info', '2015-08-05 00:06:58.274243', '2015-08-05 00:06:58.274243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (183, 3, 'http://hodkiewicz.name', '2015-08-05 00:06:58.275449', '2015-08-05 00:06:58.275449', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (184, 3, 'http://kubgreen.biz', '2015-08-05 00:06:58.276793', '2015-08-05 00:06:58.276793', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (185, 3, 'http://brekke.org', '2015-08-05 00:06:58.277959', '2015-08-05 00:06:58.277959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (186, 3, 'http://predovicwilliamson.com', '2015-08-05 00:06:58.279119', '2015-08-05 00:06:58.279119', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (187, 3, 'http://schneider.org', '2015-08-05 00:06:58.280411', '2015-08-05 00:06:58.280411', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (188, 3, 'http://wehnerrodriguez.name', '2015-08-05 00:06:58.281909', '2015-08-05 00:06:58.281909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (189, 3, 'http://jones.info', '2015-08-05 00:06:58.283634', '2015-08-05 00:06:58.283634', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (190, 3, 'http://rippin.name', '2015-08-05 00:06:58.285109', '2015-08-05 00:06:58.285109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (191, 3, 'http://jenkins.name', '2015-08-05 00:06:58.28639', '2015-08-05 00:06:58.28639', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (192, 3, 'http://heathcoteokuneva.org', '2015-08-05 00:06:58.287736', '2015-08-05 00:06:58.287736', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (193, 3, 'http://mueller.info', '2015-08-05 00:06:58.28894', '2015-08-05 00:06:58.28894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (194, 3, 'http://waelchi.com', '2015-08-05 00:06:58.290139', '2015-08-05 00:06:58.290139', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (195, 3, 'http://damore.net', '2015-08-05 00:06:58.292295', '2015-08-05 00:06:58.292295', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (196, 3, 'http://herzogfunk.info', '2015-08-05 00:06:58.293671', '2015-08-05 00:06:58.293671', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (197, 3, 'http://orngreenfelder.biz', '2015-08-05 00:06:58.294784', '2015-08-05 00:06:58.294784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (198, 3, 'http://davis.name', '2015-08-05 00:06:58.296161', '2015-08-05 00:06:58.296161', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (199, 3, 'http://abbott.org', '2015-08-05 00:06:58.297471', '2015-08-05 00:06:58.297471', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (200, 3, 'http://frami.info', '2015-08-05 00:06:58.298565', '2015-08-05 00:06:58.298565', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (201, 3, 'http://sanford.biz', '2015-08-05 00:06:58.299892', '2015-08-05 00:06:58.299892', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (202, 3, 'http://jaskolski.org', '2015-08-05 00:06:58.301183', '2015-08-05 00:06:58.301183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (203, 3, 'http://moore.name', '2015-08-05 00:06:58.302426', '2015-08-05 00:06:58.302426', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (204, 3, 'http://murphyfranecki.biz', '2015-08-05 00:06:58.303546', '2015-08-05 00:06:58.303546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (205, 3, 'http://farrell.net', '2015-08-05 00:06:58.304738', '2015-08-05 00:06:58.304738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (206, 3, 'http://jenkins.name', '2015-08-05 00:06:58.305832', '2015-08-05 00:06:58.305832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (207, 3, 'http://kuhlmanvonrueden.info', '2015-08-05 00:06:58.306968', '2015-08-05 00:06:58.306968', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (208, 3, 'http://kshlerin.com', '2015-08-05 00:06:58.30822', '2015-08-05 00:06:58.30822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (209, 3, 'http://hagenechultz.net', '2015-08-05 00:06:58.309372', '2015-08-05 00:06:58.309372', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (210, 4, 'http://mohr.name', '2015-08-05 00:06:58.486726', '2015-08-05 00:06:58.486726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (211, 4, 'http://oconnell.biz', '2015-08-05 00:06:58.488191', '2015-08-05 00:06:58.488191', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (212, 4, 'http://hoeger.net', '2015-08-05 00:06:58.489553', '2015-08-05 00:06:58.489553', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (213, 4, 'http://wymanhaag.info', '2015-08-05 00:06:58.492071', '2015-08-05 00:06:58.492071', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (214, 4, 'http://schultz.biz', '2015-08-05 00:06:58.494362', '2015-08-05 00:06:58.494362', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (215, 4, 'http://mante.biz', '2015-08-05 00:06:58.495675', '2015-08-05 00:06:58.495675', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (216, 4, 'http://harber.org', '2015-08-05 00:06:58.497061', '2015-08-05 00:06:58.497061', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (217, 4, 'http://paucek.info', '2015-08-05 00:06:58.49857', '2015-08-05 00:06:58.49857', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (218, 4, 'http://kertzmann.info', '2015-08-05 00:06:58.49986', '2015-08-05 00:06:58.49986', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (219, 4, 'http://hills.info', '2015-08-05 00:06:58.501008', '2015-08-05 00:06:58.501008', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (220, 4, 'http://sauer.net', '2015-08-05 00:06:58.502216', '2015-08-05 00:06:58.502216', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (221, 4, 'http://herzog.biz', '2015-08-05 00:06:58.503437', '2015-08-05 00:06:58.503437', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (222, 4, 'http://kirlinwatsica.biz', '2015-08-05 00:06:58.504789', '2015-08-05 00:06:58.504789', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (223, 4, 'http://wehner.com', '2015-08-05 00:06:58.506148', '2015-08-05 00:06:58.506148', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (224, 4, 'http://reynolds.com', '2015-08-05 00:06:58.507334', '2015-08-05 00:06:58.507334', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (225, 4, 'http://hammes.biz', '2015-08-05 00:06:58.508606', '2015-08-05 00:06:58.508606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (226, 4, 'http://fadel.net', '2015-08-05 00:06:58.509963', '2015-08-05 00:06:58.509963', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (227, 4, 'http://connellyprohaska.net', '2015-08-05 00:06:58.511271', '2015-08-05 00:06:58.511271', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (228, 4, 'http://towne.biz', '2015-08-05 00:06:58.512544', '2015-08-05 00:06:58.512544', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (229, 4, 'http://emard.net', '2015-08-05 00:06:58.513935', '2015-08-05 00:06:58.513935', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (230, 4, 'http://bartolettiheaney.com', '2015-08-05 00:06:58.515154', '2015-08-05 00:06:58.515154', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (231, 4, 'http://huel.info', '2015-08-05 00:06:58.516407', '2015-08-05 00:06:58.516407', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (232, 4, 'http://murray.com', '2015-08-05 00:06:58.517669', '2015-08-05 00:06:58.517669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (233, 4, 'http://reynolds.biz', '2015-08-05 00:06:58.518763', '2015-08-05 00:06:58.518763', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (234, 4, 'http://champlin.biz', '2015-08-05 00:06:58.52022', '2015-08-05 00:06:58.52022', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (235, 4, 'http://klockobuckridge.com', '2015-08-05 00:06:58.522191', '2015-08-05 00:06:58.522191', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (236, 4, 'http://lehner.org', '2015-08-05 00:06:58.523275', '2015-08-05 00:06:58.523275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (237, 4, 'http://runolfon.com', '2015-08-05 00:06:58.524453', '2015-08-05 00:06:58.524453', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (238, 4, 'http://bashirian.net', '2015-08-05 00:06:58.52584', '2015-08-05 00:06:58.52584', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (239, 4, 'http://kiehn.com', '2015-08-05 00:06:58.526986', '2015-08-05 00:06:58.526986', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (240, 4, 'http://marks.org', '2015-08-05 00:06:58.528216', '2015-08-05 00:06:58.528216', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (241, 4, 'http://kihnkiehn.com', '2015-08-05 00:06:58.529289', '2015-08-05 00:06:58.529289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (242, 4, 'http://moore.com', '2015-08-05 00:06:58.530333', '2015-08-05 00:06:58.530333', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (243, 4, 'http://mooresanford.info', '2015-08-05 00:06:58.531367', '2015-08-05 00:06:58.531367', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (244, 4, 'http://ward.info', '2015-08-05 00:06:58.532548', '2015-08-05 00:06:58.532548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (245, 4, 'http://hoegernicolas.org', '2015-08-05 00:06:58.533915', '2015-08-05 00:06:58.533915', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (246, 4, 'http://rath.net', '2015-08-05 00:06:58.535203', '2015-08-05 00:06:58.535203', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (247, 4, 'http://reilly.biz', '2015-08-05 00:06:58.53654', '2015-08-05 00:06:58.53654', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (248, 4, 'http://gorczany.org', '2015-08-05 00:06:58.537711', '2015-08-05 00:06:58.537711', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (249, 4, 'http://dicki.biz', '2015-08-05 00:06:58.538894', '2015-08-05 00:06:58.538894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (250, 4, 'http://vonfunk.info', '2015-08-05 00:06:58.53996', '2015-08-05 00:06:58.53996', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (251, 4, 'http://langworth.name', '2015-08-05 00:06:58.541036', '2015-08-05 00:06:58.541036', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (252, 4, 'http://paucekwalker.info', '2015-08-05 00:06:58.542268', '2015-08-05 00:06:58.542268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (253, 4, 'http://gottlieb.biz', '2015-08-05 00:06:58.543558', '2015-08-05 00:06:58.543558', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (254, 4, 'http://rolfsonemard.org', '2015-08-05 00:06:58.544893', '2015-08-05 00:06:58.544893', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (255, 4, 'http://pouros.biz', '2015-08-05 00:06:58.546255', '2015-08-05 00:06:58.546255', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (256, 4, 'http://smitham.com', '2015-08-05 00:06:58.547539', '2015-08-05 00:06:58.547539', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (257, 4, 'http://trantow.org', '2015-08-05 00:06:58.548988', '2015-08-05 00:06:58.548988', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (258, 4, 'http://okunevaschiller.com', '2015-08-05 00:06:58.550331', '2015-08-05 00:06:58.550331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (259, 4, 'http://pacochaconroy.net', '2015-08-05 00:06:58.552423', '2015-08-05 00:06:58.552423', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (260, 4, 'http://green.com', '2015-08-05 00:06:58.553742', '2015-08-05 00:06:58.553742', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (261, 4, 'http://zemlakstracke.name', '2015-08-05 00:06:58.555035', '2015-08-05 00:06:58.555035', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (262, 4, 'http://conn.com', '2015-08-05 00:06:58.556244', '2015-08-05 00:06:58.556244', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (263, 4, 'http://koelpin.info', '2015-08-05 00:06:58.557474', '2015-08-05 00:06:58.557474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (264, 5, 'http://kaulkecruickshank.name', '2015-08-05 00:06:58.692302', '2015-08-05 00:06:58.692302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (265, 5, 'http://fayerdman.net', '2015-08-05 00:06:58.693822', '2015-08-05 00:06:58.693822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (266, 5, 'http://okon.org', '2015-08-05 00:06:58.695208', '2015-08-05 00:06:58.695208', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (267, 5, 'http://hegmann.net', '2015-08-05 00:06:58.696574', '2015-08-05 00:06:58.696574', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (268, 5, 'http://brekke.com', '2015-08-05 00:06:58.697882', '2015-08-05 00:06:58.697882', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (269, 5, 'http://vonruedengoldner.name', '2015-08-05 00:06:58.699109', '2015-08-05 00:06:58.699109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (270, 5, 'http://leuschkeboyer.info', '2015-08-05 00:06:58.70021', '2015-08-05 00:06:58.70021', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (271, 5, 'http://klocko.net', '2015-08-05 00:06:58.702039', '2015-08-05 00:06:58.702039', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (272, 5, 'http://heathcotefeest.biz', '2015-08-05 00:06:58.703592', '2015-08-05 00:06:58.703592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (273, 5, 'http://kuhlman.name', '2015-08-05 00:06:58.706011', '2015-08-05 00:06:58.706011', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (274, 5, 'http://heidenreich.org', '2015-08-05 00:06:58.707534', '2015-08-05 00:06:58.707534', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (275, 5, 'http://hyatt.info', '2015-08-05 00:06:58.709032', '2015-08-05 00:06:58.709032', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (276, 5, 'http://mclaughlin.org', '2015-08-05 00:06:58.710529', '2015-08-05 00:06:58.710529', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (277, 5, 'http://greenholtyost.name', '2015-08-05 00:06:58.711884', '2015-08-05 00:06:58.711884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (278, 5, 'http://kuhlmanschmeler.com', '2015-08-05 00:06:58.713154', '2015-08-05 00:06:58.713154', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (279, 5, 'http://tremblay.com', '2015-08-05 00:06:58.714391', '2015-08-05 00:06:58.714391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (280, 5, 'http://moore.info', '2015-08-05 00:06:58.715786', '2015-08-05 00:06:58.715786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (281, 5, 'http://howe.biz', '2015-08-05 00:06:58.717005', '2015-08-05 00:06:58.717005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (282, 5, 'http://strosin.org', '2015-08-05 00:06:58.718002', '2015-08-05 00:06:58.718002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (283, 5, 'http://jacobsbeier.org', '2015-08-05 00:06:58.719136', '2015-08-05 00:06:58.719136', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (284, 5, 'http://vandervort.info', '2015-08-05 00:06:58.722104', '2015-08-05 00:06:58.722104', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (285, 5, 'http://anderson.com', '2015-08-05 00:06:58.724398', '2015-08-05 00:06:58.724398', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (286, 5, 'http://walker.name', '2015-08-05 00:06:58.725779', '2015-08-05 00:06:58.725779', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (287, 5, 'http://dickenenger.info', '2015-08-05 00:06:58.726967', '2015-08-05 00:06:58.726967', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (288, 5, 'http://moore.org', '2015-08-05 00:06:58.728496', '2015-08-05 00:06:58.728496', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (289, 5, 'http://rau.org', '2015-08-05 00:06:58.729879', '2015-08-05 00:06:58.729879', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (290, 5, 'http://dibbertkautzer.info', '2015-08-05 00:06:58.731209', '2015-08-05 00:06:58.731209', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (291, 5, 'http://moore.net', '2015-08-05 00:06:58.732322', '2015-08-05 00:06:58.732322', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (292, 5, 'http://krajcik.net', '2015-08-05 00:06:58.733431', '2015-08-05 00:06:58.733431', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (293, 5, 'http://hilllauer.biz', '2015-08-05 00:06:58.734594', '2015-08-05 00:06:58.734594', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (294, 5, 'http://keeling.name', '2015-08-05 00:06:58.735752', '2015-08-05 00:06:58.735752', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (295, 5, 'http://mantebins.org', '2015-08-05 00:06:58.73695', '2015-08-05 00:06:58.73695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (296, 5, 'http://rodriguez.net', '2015-08-05 00:06:58.738217', '2015-08-05 00:06:58.738217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (297, 5, 'http://hicklewalsh.net', '2015-08-05 00:06:58.739533', '2015-08-05 00:06:58.739533', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (298, 5, 'http://gerlach.biz', '2015-08-05 00:06:58.740916', '2015-08-05 00:06:58.740916', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (299, 5, 'http://greenfelder.biz', '2015-08-05 00:06:58.742169', '2015-08-05 00:06:58.742169', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (300, 5, 'http://bode.info', '2015-08-05 00:06:58.743582', '2015-08-05 00:06:58.743582', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (301, 5, 'http://pacocha.com', '2015-08-05 00:06:58.744878', '2015-08-05 00:06:58.744878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (302, 5, 'http://wehnerabernathy.org', '2015-08-05 00:06:58.746246', '2015-08-05 00:06:58.746246', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (303, 5, 'http://oberbrunner.info', '2015-08-05 00:06:58.747472', '2015-08-05 00:06:58.747472', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (304, 5, 'http://pollich.biz', '2015-08-05 00:06:58.748823', '2015-08-05 00:06:58.748823', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (305, 5, 'http://konopelski.net', '2015-08-05 00:06:58.750149', '2015-08-05 00:06:58.750149', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (306, 5, 'http://harbermcdermott.info', '2015-08-05 00:06:58.752258', '2015-08-05 00:06:58.752258', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (307, 5, 'http://erdmancrona.name', '2015-08-05 00:06:58.753579', '2015-08-05 00:06:58.753579', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (308, 5, 'http://nolan.info', '2015-08-05 00:06:58.754917', '2015-08-05 00:06:58.754917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (309, 5, 'http://dicki.com', '2015-08-05 00:06:58.756275', '2015-08-05 00:06:58.756275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (310, 5, 'http://sipeskerluke.biz', '2015-08-05 00:06:58.757481', '2015-08-05 00:06:58.757481', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (311, 5, 'http://hills.biz', '2015-08-05 00:06:58.758563', '2015-08-05 00:06:58.758563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (312, 5, 'http://mertz.com', '2015-08-05 00:06:58.759623', '2015-08-05 00:06:58.759623', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (313, 5, 'http://schumm.info', '2015-08-05 00:06:58.760733', '2015-08-05 00:06:58.760733', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (314, 5, 'http://kiehn.biz', '2015-08-05 00:06:58.761797', '2015-08-05 00:06:58.761797', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (315, 5, 'http://murazikbatz.biz', '2015-08-05 00:06:58.76309', '2015-08-05 00:06:58.76309', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (316, 5, 'http://sporervon.net', '2015-08-05 00:06:58.764196', '2015-08-05 00:06:58.764196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (317, 5, 'http://bergnaum.name', '2015-08-05 00:06:58.765357', '2015-08-05 00:06:58.765357', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (318, 5, 'http://okuneva.info', '2015-08-05 00:06:58.766503', '2015-08-05 00:06:58.766503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (319, 5, 'http://rutherford.biz', '2015-08-05 00:06:58.767787', '2015-08-05 00:06:58.767787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (320, 5, 'http://leannonrippin.com', '2015-08-05 00:06:58.76895', '2015-08-05 00:06:58.76895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (321, 5, 'http://jerde.info', '2015-08-05 00:06:58.770113', '2015-08-05 00:06:58.770113', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (322, 5, 'http://bruen.info', '2015-08-05 00:06:58.771402', '2015-08-05 00:06:58.771402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (323, 5, 'http://marvinschmidt.net', '2015-08-05 00:06:58.772596', '2015-08-05 00:06:58.772596', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (324, 5, 'http://cartwright.info', '2015-08-05 00:06:58.773644', '2015-08-05 00:06:58.773644', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (325, 5, 'http://cain.name', '2015-08-05 00:06:58.774694', '2015-08-05 00:06:58.774694', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (326, 5, 'http://boyerhowe.org', '2015-08-05 00:06:58.775739', '2015-08-05 00:06:58.775739', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (327, 5, 'http://sanford.name', '2015-08-05 00:06:58.776865', '2015-08-05 00:06:58.776865', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (328, 5, 'http://mckenziewiza.org', '2015-08-05 00:06:58.777923', '2015-08-05 00:06:58.777923', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (329, 5, 'http://king.name', '2015-08-05 00:06:58.779038', '2015-08-05 00:06:58.779038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (330, 5, 'http://leannon.org', '2015-08-05 00:06:58.780072', '2015-08-05 00:06:58.780072', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (331, 5, 'http://wiegand.info', '2015-08-05 00:06:58.781925', '2015-08-05 00:06:58.781925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (332, 5, 'http://harris.biz', '2015-08-05 00:06:58.784204', '2015-08-05 00:06:58.784204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (333, 5, 'http://goyette.biz', '2015-08-05 00:06:58.785677', '2015-08-05 00:06:58.785677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (334, 5, 'http://runolfon.name', '2015-08-05 00:06:58.786883', '2015-08-05 00:06:58.786883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (335, 5, 'http://hamill.name', '2015-08-05 00:06:58.788029', '2015-08-05 00:06:58.788029', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (336, 5, 'http://medhurstdare.com', '2015-08-05 00:06:58.789414', '2015-08-05 00:06:58.789414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (337, 5, 'http://johnson.name', '2015-08-05 00:06:58.790985', '2015-08-05 00:06:58.790985', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (338, 5, 'http://mannankunding.biz', '2015-08-05 00:06:58.792303', '2015-08-05 00:06:58.792303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (339, 5, 'http://daugherty.com', '2015-08-05 00:06:58.793549', '2015-08-05 00:06:58.793549', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (340, 5, 'http://cole.org', '2015-08-05 00:06:58.794874', '2015-08-05 00:06:58.794874', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (341, 5, 'http://braun.com', '2015-08-05 00:06:58.796212', '2015-08-05 00:06:58.796212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (342, 5, 'http://tremblaydouglas.biz', '2015-08-05 00:06:58.797341', '2015-08-05 00:06:58.797341', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (343, 5, 'http://schumm.biz', '2015-08-05 00:06:58.798395', '2015-08-05 00:06:58.798395', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (344, 5, 'http://jacobs.biz', '2015-08-05 00:06:58.79971', '2015-08-05 00:06:58.79971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (345, 5, 'http://kuhic.name', '2015-08-05 00:06:58.800987', '2015-08-05 00:06:58.800987', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (346, 5, 'http://dietrichlesch.info', '2015-08-05 00:06:58.802183', '2015-08-05 00:06:58.802183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (347, 5, 'http://kuvalis.info', '2015-08-05 00:06:58.803513', '2015-08-05 00:06:58.803513', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (348, 5, 'http://hills.org', '2015-08-05 00:06:58.804706', '2015-08-05 00:06:58.804706', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (349, 5, 'http://ziemannmayert.info', '2015-08-05 00:06:58.805738', '2015-08-05 00:06:58.805738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (350, 5, 'http://witting.biz', '2015-08-05 00:06:58.806865', '2015-08-05 00:06:58.806865', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (351, 5, 'http://mayert.com', '2015-08-05 00:06:58.808044', '2015-08-05 00:06:58.808044', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (352, 5, 'http://adams.biz', '2015-08-05 00:06:58.80936', '2015-08-05 00:06:58.80936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (353, 5, 'http://whitepurdy.org', '2015-08-05 00:06:58.812026', '2015-08-05 00:06:58.812026', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (354, 5, 'http://gibson.info', '2015-08-05 00:06:58.813495', '2015-08-05 00:06:58.813495', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (355, 5, 'http://tromp.name', '2015-08-05 00:06:58.814779', '2015-08-05 00:06:58.814779', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (356, 5, 'http://kihncollier.org', '2015-08-05 00:06:58.816027', '2015-08-05 00:06:58.816027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (357, 6, 'http://trompko.biz', '2015-08-05 00:06:59.168711', '2015-08-05 00:06:59.168711', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (358, 6, 'http://bosco.name', '2015-08-05 00:06:59.170264', '2015-08-05 00:06:59.170264', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (359, 6, 'http://hirthe.net', '2015-08-05 00:06:59.171744', '2015-08-05 00:06:59.171744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (360, 6, 'http://gutkowski.com', '2015-08-05 00:06:59.173064', '2015-08-05 00:06:59.173064', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (361, 6, 'http://cummeratarodriguez.com', '2015-08-05 00:06:59.174428', '2015-08-05 00:06:59.174428', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (362, 6, 'http://klocko.name', '2015-08-05 00:06:59.175755', '2015-08-05 00:06:59.175755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (363, 6, 'http://towne.net', '2015-08-05 00:06:59.177', '2015-08-05 00:06:59.177', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (364, 6, 'http://funkmetz.info', '2015-08-05 00:06:59.178323', '2015-08-05 00:06:59.178323', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (365, 6, 'http://terry.info', '2015-08-05 00:06:59.179799', '2015-08-05 00:06:59.179799', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (366, 6, 'http://towne.info', '2015-08-05 00:06:59.181076', '2015-08-05 00:06:59.181076', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (367, 6, 'http://schaefertorp.org', '2015-08-05 00:06:59.182199', '2015-08-05 00:06:59.182199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (368, 6, 'http://beattyflatley.biz', '2015-08-05 00:06:59.183349', '2015-08-05 00:06:59.183349', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (369, 6, 'http://eichmann.biz', '2015-08-05 00:06:59.184462', '2015-08-05 00:06:59.184462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (370, 6, 'http://cummings.biz', '2015-08-05 00:06:59.185497', '2015-08-05 00:06:59.185497', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (371, 6, 'http://cruickshank.net', '2015-08-05 00:06:59.186677', '2015-08-05 00:06:59.186677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (372, 6, 'http://leffler.info', '2015-08-05 00:06:59.187826', '2015-08-05 00:06:59.187826', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (373, 6, 'http://carrolllubowitz.net', '2015-08-05 00:06:59.188948', '2015-08-05 00:06:59.188948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (374, 6, 'http://dicki.com', '2015-08-05 00:06:59.190268', '2015-08-05 00:06:59.190268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (375, 6, 'http://walsh.info', '2015-08-05 00:06:59.191492', '2015-08-05 00:06:59.191492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (376, 6, 'http://pollich.name', '2015-08-05 00:06:59.192709', '2015-08-05 00:06:59.192709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (377, 6, 'http://okeefekihn.name', '2015-08-05 00:06:59.193814', '2015-08-05 00:06:59.193814', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (378, 6, 'http://moore.com', '2015-08-05 00:06:59.195028', '2015-08-05 00:06:59.195028', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (379, 6, 'http://mcdermott.net', '2015-08-05 00:06:59.196304', '2015-08-05 00:06:59.196304', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (380, 6, 'http://strosinlabadie.net', '2015-08-05 00:06:59.197575', '2015-08-05 00:06:59.197575', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (381, 6, 'http://watsica.biz', '2015-08-05 00:06:59.198795', '2015-08-05 00:06:59.198795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (382, 6, 'http://marks.name', '2015-08-05 00:06:59.199954', '2015-08-05 00:06:59.199954', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (383, 6, 'http://reingerkuphal.com', '2015-08-05 00:06:59.201986', '2015-08-05 00:06:59.201986', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (384, 6, 'http://damore.org', '2015-08-05 00:06:59.203947', '2015-08-05 00:06:59.203947', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (385, 6, 'http://witting.name', '2015-08-05 00:06:59.205283', '2015-08-05 00:06:59.205283', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (386, 6, 'http://heaney.biz', '2015-08-05 00:06:59.206521', '2015-08-05 00:06:59.206521', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (387, 6, 'http://ankundingkovacek.org', '2015-08-05 00:06:59.207769', '2015-08-05 00:06:59.207769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (388, 6, 'http://oreilly.biz', '2015-08-05 00:06:59.209002', '2015-08-05 00:06:59.209002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (389, 6, 'http://sanford.name', '2015-08-05 00:06:59.210289', '2015-08-05 00:06:59.210289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (390, 6, 'http://hodkiewicz.org', '2015-08-05 00:06:59.211453', '2015-08-05 00:06:59.211453', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (391, 6, 'http://wisoky.net', '2015-08-05 00:06:59.212561', '2015-08-05 00:06:59.212561', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (392, 6, 'http://herzog.com', '2015-08-05 00:06:59.213604', '2015-08-05 00:06:59.213604', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (393, 6, 'http://pollichbreitenberg.com', '2015-08-05 00:06:59.214606', '2015-08-05 00:06:59.214606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (394, 6, 'http://lehner.net', '2015-08-05 00:06:59.215672', '2015-08-05 00:06:59.215672', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (395, 6, 'http://doylewilkinson.biz', '2015-08-05 00:06:59.216882', '2015-08-05 00:06:59.216882', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (396, 6, 'http://mosciski.biz', '2015-08-05 00:06:59.218189', '2015-08-05 00:06:59.218189', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (397, 6, 'http://ward.info', '2015-08-05 00:06:59.219384', '2015-08-05 00:06:59.219384', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (398, 6, 'http://mertz.net', '2015-08-05 00:06:59.220595', '2015-08-05 00:06:59.220595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (399, 6, 'http://wunschgerlach.net', '2015-08-05 00:06:59.221881', '2015-08-05 00:06:59.221881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (400, 6, 'http://weinat.name', '2015-08-05 00:06:59.223158', '2015-08-05 00:06:59.223158', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (401, 6, 'http://schuppe.name', '2015-08-05 00:06:59.224296', '2015-08-05 00:06:59.224296', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (402, 6, 'http://greenholtbartell.biz', '2015-08-05 00:06:59.225579', '2015-08-05 00:06:59.225579', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (403, 6, 'http://kshlerinweber.com', '2015-08-05 00:06:59.226769', '2015-08-05 00:06:59.226769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (404, 6, 'http://torp.org', '2015-08-05 00:06:59.228183', '2015-08-05 00:06:59.228183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (405, 6, 'http://ondrickabailey.name', '2015-08-05 00:06:59.229611', '2015-08-05 00:06:59.229611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (406, 6, 'http://kirlinokeefe.org', '2015-08-05 00:06:59.231924', '2015-08-05 00:06:59.231924', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (407, 6, 'http://kovacek.info', '2015-08-05 00:06:59.233773', '2015-08-05 00:06:59.233773', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (408, 6, 'http://murazikthompson.com', '2015-08-05 00:06:59.234925', '2015-08-05 00:06:59.234925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (409, 6, 'http://jones.org', '2015-08-05 00:06:59.236207', '2015-08-05 00:06:59.236207', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (410, 6, 'http://white.net', '2015-08-05 00:06:59.237525', '2015-08-05 00:06:59.237525', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (411, 6, 'http://sanfordmcdermott.name', '2015-08-05 00:06:59.2389', '2015-08-05 00:06:59.2389', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (412, 6, 'http://friesen.biz', '2015-08-05 00:06:59.240316', '2015-08-05 00:06:59.240316', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (413, 6, 'http://nicolas.info', '2015-08-05 00:06:59.241619', '2015-08-05 00:06:59.241619', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (414, 6, 'http://reinger.org', '2015-08-05 00:06:59.242755', '2015-08-05 00:06:59.242755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (415, 6, 'http://gislason.org', '2015-08-05 00:06:59.244239', '2015-08-05 00:06:59.244239', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (416, 6, 'http://gislasonabernathy.com', '2015-08-05 00:06:59.245573', '2015-08-05 00:06:59.245573', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (417, 6, 'http://terry.com', '2015-08-05 00:06:59.246811', '2015-08-05 00:06:59.246811', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (418, 6, 'http://beier.com', '2015-08-05 00:06:59.248142', '2015-08-05 00:06:59.248142', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (419, 6, 'http://bartoletti.com', '2015-08-05 00:06:59.24931', '2015-08-05 00:06:59.24931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (420, 6, 'http://kunde.com', '2015-08-05 00:06:59.250693', '2015-08-05 00:06:59.250693', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (421, 6, 'http://flatley.com', '2015-08-05 00:06:59.251919', '2015-08-05 00:06:59.251919', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (422, 6, 'http://leffler.info', '2015-08-05 00:06:59.253108', '2015-08-05 00:06:59.253108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (423, 6, 'http://pfeffer.biz', '2015-08-05 00:06:59.254449', '2015-08-05 00:06:59.254449', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (424, 6, 'http://altenwerthcasper.net', '2015-08-05 00:06:59.255674', '2015-08-05 00:06:59.255674', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (425, 6, 'http://kertzmannrippin.org', '2015-08-05 00:06:59.256846', '2015-08-05 00:06:59.256846', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (426, 6, 'http://littleadams.name', '2015-08-05 00:06:59.25815', '2015-08-05 00:06:59.25815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (427, 7, 'http://reichert.biz', '2015-08-05 00:06:59.476511', '2015-08-05 00:06:59.476511', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (428, 7, 'http://torpkunde.biz', '2015-08-05 00:06:59.477883', '2015-08-05 00:06:59.477883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (429, 7, 'http://reynolds.net', '2015-08-05 00:06:59.479109', '2015-08-05 00:06:59.479109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (430, 7, 'http://mcclureschamberger.name', '2015-08-05 00:06:59.480227', '2015-08-05 00:06:59.480227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (431, 7, 'http://abshire.info', '2015-08-05 00:06:59.48148', '2015-08-05 00:06:59.48148', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (432, 7, 'http://ratke.com', '2015-08-05 00:06:59.48275', '2015-08-05 00:06:59.48275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (433, 7, 'http://white.org', '2015-08-05 00:06:59.483843', '2015-08-05 00:06:59.483843', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (434, 7, 'http://eichmannrowe.name', '2015-08-05 00:06:59.485025', '2015-08-05 00:06:59.485025', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (435, 7, 'http://moen.org', '2015-08-05 00:06:59.486252', '2015-08-05 00:06:59.486252', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (436, 7, 'http://block.com', '2015-08-05 00:06:59.487383', '2015-08-05 00:06:59.487383', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (437, 7, 'http://schmeler.org', '2015-08-05 00:06:59.488901', '2015-08-05 00:06:59.488901', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (438, 7, 'http://marvingerhold.name', '2015-08-05 00:06:59.490331', '2015-08-05 00:06:59.490331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (439, 7, 'http://raynor.com', '2015-08-05 00:06:59.491726', '2015-08-05 00:06:59.491726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (440, 8, 'http://walter.com', '2015-08-05 00:06:59.607845', '2015-08-05 00:06:59.607845', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (441, 8, 'http://little.biz', '2015-08-05 00:06:59.609357', '2015-08-05 00:06:59.609357', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (442, 8, 'http://koelpin.net', '2015-08-05 00:06:59.610719', '2015-08-05 00:06:59.610719', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (443, 8, 'http://torp.org', '2015-08-05 00:06:59.611962', '2015-08-05 00:06:59.611962', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (444, 8, 'http://howegleichner.name', '2015-08-05 00:06:59.61334', '2015-08-05 00:06:59.61334', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (445, 8, 'http://wittingraynor.info', '2015-08-05 00:06:59.61457', '2015-08-05 00:06:59.61457', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (446, 8, 'http://oconner.info', '2015-08-05 00:06:59.616049', '2015-08-05 00:06:59.616049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (447, 8, 'http://shanahan.net', '2015-08-05 00:06:59.617355', '2015-08-05 00:06:59.617355', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (448, 8, 'http://leannon.name', '2015-08-05 00:06:59.618557', '2015-08-05 00:06:59.618557', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (449, 8, 'http://stroman.net', '2015-08-05 00:06:59.620247', '2015-08-05 00:06:59.620247', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (450, 8, 'http://runolfonhowe.org', '2015-08-05 00:06:59.62239', '2015-08-05 00:06:59.62239', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (451, 8, 'http://mertz.name', '2015-08-05 00:06:59.623649', '2015-08-05 00:06:59.623649', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (452, 8, 'http://miller.biz', '2015-08-05 00:06:59.625147', '2015-08-05 00:06:59.625147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (453, 8, 'http://dietrich.com', '2015-08-05 00:06:59.626471', '2015-08-05 00:06:59.626471', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (454, 8, 'http://wolf.com', '2015-08-05 00:06:59.627808', '2015-08-05 00:06:59.627808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (455, 8, 'http://okeefewelch.info', '2015-08-05 00:06:59.629015', '2015-08-05 00:06:59.629015', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (456, 8, 'http://heaney.net', '2015-08-05 00:06:59.630332', '2015-08-05 00:06:59.630332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (457, 8, 'http://mcdermott.info', '2015-08-05 00:06:59.63166', '2015-08-05 00:06:59.63166', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (458, 8, 'http://fadel.net', '2015-08-05 00:06:59.63302', '2015-08-05 00:06:59.63302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (459, 8, 'http://oberbrunner.biz', '2015-08-05 00:06:59.63438', '2015-08-05 00:06:59.63438', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (460, 8, 'http://dooley.info', '2015-08-05 00:06:59.63585', '2015-08-05 00:06:59.63585', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (461, 8, 'http://mcdermottrempel.com', '2015-08-05 00:06:59.637175', '2015-08-05 00:06:59.637175', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (462, 8, 'http://veum.info', '2015-08-05 00:06:59.638456', '2015-08-05 00:06:59.638456', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (463, 8, 'http://renner.biz', '2015-08-05 00:06:59.639712', '2015-08-05 00:06:59.639712', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (464, 8, 'http://ondricka.org', '2015-08-05 00:06:59.641065', '2015-08-05 00:06:59.641065', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (465, 8, 'http://blandawatsica.info', '2015-08-05 00:06:59.642284', '2015-08-05 00:06:59.642284', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (466, 8, 'http://marvin.com', '2015-08-05 00:06:59.64359', '2015-08-05 00:06:59.64359', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (467, 8, 'http://robel.name', '2015-08-05 00:06:59.64483', '2015-08-05 00:06:59.64483', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (468, 8, 'http://brown.biz', '2015-08-05 00:06:59.645982', '2015-08-05 00:06:59.645982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (469, 8, 'http://kutchcronin.biz', '2015-08-05 00:06:59.647141', '2015-08-05 00:06:59.647141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (470, 8, 'http://schulisthickle.com', '2015-08-05 00:06:59.64814', '2015-08-05 00:06:59.64814', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (471, 8, 'http://gutkowskispinka.biz', '2015-08-05 00:06:59.649196', '2015-08-05 00:06:59.649196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (472, 8, 'http://aufderhar.org', '2015-08-05 00:06:59.651864', '2015-08-05 00:06:59.651864', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (473, 8, 'http://jenkins.biz', '2015-08-05 00:06:59.65324', '2015-08-05 00:06:59.65324', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (474, 8, 'http://hoeger.org', '2015-08-05 00:06:59.6545', '2015-08-05 00:06:59.6545', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (475, 8, 'http://schmitt.biz', '2015-08-05 00:06:59.655644', '2015-08-05 00:06:59.655644', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (476, 8, 'http://kutch.biz', '2015-08-05 00:06:59.656854', '2015-08-05 00:06:59.656854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (477, 8, 'http://mclaughlinconroy.net', '2015-08-05 00:06:59.658442', '2015-08-05 00:06:59.658442', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (478, 8, 'http://feil.name', '2015-08-05 00:06:59.659722', '2015-08-05 00:06:59.659722', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (479, 8, 'http://marvinconnelly.com', '2015-08-05 00:06:59.661234', '2015-08-05 00:06:59.661234', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (480, 8, 'http://rodriguez.biz', '2015-08-05 00:06:59.662589', '2015-08-05 00:06:59.662589', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (481, 8, 'http://kulasrice.biz', '2015-08-05 00:06:59.663727', '2015-08-05 00:06:59.663727', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (482, 8, 'http://howell.name', '2015-08-05 00:06:59.665129', '2015-08-05 00:06:59.665129', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (483, 8, 'http://stamm.biz', '2015-08-05 00:06:59.66635', '2015-08-05 00:06:59.66635', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (484, 8, 'http://simonisgerhold.com', '2015-08-05 00:06:59.667807', '2015-08-05 00:06:59.667807', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (485, 8, 'http://wizacremin.info', '2015-08-05 00:06:59.669401', '2015-08-05 00:06:59.669401', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (486, 8, 'http://kemmer.info', '2015-08-05 00:06:59.670592', '2015-08-05 00:06:59.670592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (487, 8, 'http://glover.biz', '2015-08-05 00:06:59.671916', '2015-08-05 00:06:59.671916', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (488, 8, 'http://rice.name', '2015-08-05 00:06:59.673144', '2015-08-05 00:06:59.673144', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (489, 8, 'http://hettinger.info', '2015-08-05 00:06:59.674284', '2015-08-05 00:06:59.674284', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (490, 8, 'http://jacobs.org', '2015-08-05 00:06:59.675444', '2015-08-05 00:06:59.675444', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (491, 8, 'http://funk.name', '2015-08-05 00:06:59.676564', '2015-08-05 00:06:59.676564', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (492, 8, 'http://damorealtenwerth.net', '2015-08-05 00:06:59.677742', '2015-08-05 00:06:59.677742', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (493, 8, 'http://wilderman.name', '2015-08-05 00:06:59.678926', '2015-08-05 00:06:59.678926', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (494, 8, 'http://erdman.biz', '2015-08-05 00:06:59.679948', '2015-08-05 00:06:59.679948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (495, 8, 'http://watsica.net', '2015-08-05 00:06:59.681018', '2015-08-05 00:06:59.681018', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (496, 8, 'http://cremin.name', '2015-08-05 00:06:59.682128', '2015-08-05 00:06:59.682128', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (497, 8, 'http://hirtheschuppe.name', '2015-08-05 00:06:59.6832', '2015-08-05 00:06:59.6832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (498, 8, 'http://harrishoeger.org', '2015-08-05 00:06:59.684294', '2015-08-05 00:06:59.684294', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (499, 8, 'http://haag.net', '2015-08-05 00:06:59.685385', '2015-08-05 00:06:59.685385', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (500, 8, 'http://erdman.info', '2015-08-05 00:06:59.68651', '2015-08-05 00:06:59.68651', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (501, 8, 'http://cummerata.info', '2015-08-05 00:06:59.687643', '2015-08-05 00:06:59.687643', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (502, 8, 'http://kaulke.net', '2015-08-05 00:06:59.688776', '2015-08-05 00:06:59.688776', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (503, 8, 'http://wolff.biz', '2015-08-05 00:06:59.689959', '2015-08-05 00:06:59.689959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (504, 8, 'http://franecki.net', '2015-08-05 00:06:59.69102', '2015-08-05 00:06:59.69102', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (505, 9, 'http://quigley.name', '2015-08-05 00:07:00.107582', '2015-08-05 00:07:00.107582', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (506, 9, 'http://friesen.name', '2015-08-05 00:07:00.109395', '2015-08-05 00:07:00.109395', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (507, 9, 'http://daugherty.name', '2015-08-05 00:07:00.111025', '2015-08-05 00:07:00.111025', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (508, 9, 'http://hegmannleannon.org', '2015-08-05 00:07:00.112614', '2015-08-05 00:07:00.112614', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (509, 9, 'http://quitzon.name', '2015-08-05 00:07:00.114029', '2015-08-05 00:07:00.114029', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (510, 9, 'http://harris.name', '2015-08-05 00:07:00.115543', '2015-08-05 00:07:00.115543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (511, 9, 'http://feest.info', '2015-08-05 00:07:00.11707', '2015-08-05 00:07:00.11707', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (512, 9, 'http://doylehaag.org', '2015-08-05 00:07:00.118513', '2015-08-05 00:07:00.118513', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (513, 9, 'http://bashirianemard.name', '2015-08-05 00:07:00.120157', '2015-08-05 00:07:00.120157', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (514, 9, 'http://mosciskitremblay.org', '2015-08-05 00:07:00.121645', '2015-08-05 00:07:00.121645', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (515, 9, 'http://jacobi.com', '2015-08-05 00:07:00.12307', '2015-08-05 00:07:00.12307', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (516, 9, 'http://collier.name', '2015-08-05 00:07:00.124512', '2015-08-05 00:07:00.124512', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (517, 9, 'http://hodkiewiczdibbert.info', '2015-08-05 00:07:00.125857', '2015-08-05 00:07:00.125857', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (518, 9, 'http://runolfon.biz', '2015-08-05 00:07:00.127303', '2015-08-05 00:07:00.127303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (519, 9, 'http://steuber.com', '2015-08-05 00:07:00.128872', '2015-08-05 00:07:00.128872', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (520, 9, 'http://connelly.info', '2015-08-05 00:07:00.130346', '2015-08-05 00:07:00.130346', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (521, 9, 'http://klein.net', '2015-08-05 00:07:00.13178', '2015-08-05 00:07:00.13178', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (522, 9, 'http://shields.biz', '2015-08-05 00:07:00.133175', '2015-08-05 00:07:00.133175', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (523, 9, 'http://anderson.name', '2015-08-05 00:07:00.134527', '2015-08-05 00:07:00.134527', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (524, 9, 'http://mcglynn.biz', '2015-08-05 00:07:00.136197', '2015-08-05 00:07:00.136197', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (525, 9, 'http://roweklocko.biz', '2015-08-05 00:07:00.137677', '2015-08-05 00:07:00.137677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (526, 9, 'http://rippinlarson.net', '2015-08-05 00:07:00.139128', '2015-08-05 00:07:00.139128', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (527, 9, 'http://walterhirthe.info', '2015-08-05 00:07:00.142007', '2015-08-05 00:07:00.142007', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (528, 9, 'http://rice.name', '2015-08-05 00:07:00.144536', '2015-08-05 00:07:00.144536', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (529, 9, 'http://prosacco.info', '2015-08-05 00:07:00.146048', '2015-08-05 00:07:00.146048', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (530, 9, 'http://metz.org', '2015-08-05 00:07:00.147541', '2015-08-05 00:07:00.147541', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (531, 9, 'http://oconner.com', '2015-08-05 00:07:00.149024', '2015-08-05 00:07:00.149024', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (532, 9, 'http://ortiz.name', '2015-08-05 00:07:00.150273', '2015-08-05 00:07:00.150273', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (533, 9, 'http://kohlerwolff.biz', '2015-08-05 00:07:00.151528', '2015-08-05 00:07:00.151528', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (534, 9, 'http://fisher.net', '2015-08-05 00:07:00.152794', '2015-08-05 00:07:00.152794', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (535, 9, 'http://gorczany.biz', '2015-08-05 00:07:00.153981', '2015-08-05 00:07:00.153981', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (536, 9, 'http://macejkovic.com', '2015-08-05 00:07:00.15527', '2015-08-05 00:07:00.15527', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (537, 9, 'http://kuhn.name', '2015-08-05 00:07:00.156676', '2015-08-05 00:07:00.156676', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (538, 9, 'http://lebsackbailey.net', '2015-08-05 00:07:00.157969', '2015-08-05 00:07:00.157969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (539, 9, 'http://larson.biz', '2015-08-05 00:07:00.159288', '2015-08-05 00:07:00.159288', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (540, 9, 'http://ryannolan.info', '2015-08-05 00:07:00.160617', '2015-08-05 00:07:00.160617', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (541, 9, 'http://stromancremin.name', '2015-08-05 00:07:00.161845', '2015-08-05 00:07:00.161845', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (542, 9, 'http://wizabruen.com', '2015-08-05 00:07:00.163134', '2015-08-05 00:07:00.163134', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (543, 9, 'http://olson.biz', '2015-08-05 00:07:00.164405', '2015-08-05 00:07:00.164405', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (544, 9, 'http://collierveum.name', '2015-08-05 00:07:00.1659', '2015-08-05 00:07:00.1659', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (545, 9, 'http://greenholtemmerich.name', '2015-08-05 00:07:00.167775', '2015-08-05 00:07:00.167775', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (546, 9, 'http://oberbrunnerwhite.biz', '2015-08-05 00:07:00.169307', '2015-08-05 00:07:00.169307', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (547, 9, 'http://schoen.name', '2015-08-05 00:07:00.17193', '2015-08-05 00:07:00.17193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (548, 9, 'http://langworthgraham.info', '2015-08-05 00:07:00.174364', '2015-08-05 00:07:00.174364', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (549, 9, 'http://ruecker.info', '2015-08-05 00:07:00.175865', '2015-08-05 00:07:00.175865', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (550, 9, 'http://jonesdoyle.biz', '2015-08-05 00:07:00.17738', '2015-08-05 00:07:00.17738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (551, 9, 'http://keler.name', '2015-08-05 00:07:00.178813', '2015-08-05 00:07:00.178813', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (552, 9, 'http://schiller.com', '2015-08-05 00:07:00.18014', '2015-08-05 00:07:00.18014', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (553, 9, 'http://wiegandrice.name', '2015-08-05 00:07:00.181401', '2015-08-05 00:07:00.181401', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (554, 9, 'http://wintheiser.org', '2015-08-05 00:07:00.182766', '2015-08-05 00:07:00.182766', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (555, 9, 'http://cremin.com', '2015-08-05 00:07:00.184212', '2015-08-05 00:07:00.184212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (556, 9, 'http://oberbrunner.name', '2015-08-05 00:07:00.185872', '2015-08-05 00:07:00.185872', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (557, 9, 'http://kuhn.name', '2015-08-05 00:07:00.187196', '2015-08-05 00:07:00.187196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (558, 10, 'http://kshlerindare.info', '2015-08-05 00:07:00.324668', '2015-08-05 00:07:00.324668', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (559, 10, 'http://funk.com', '2015-08-05 00:07:00.326132', '2015-08-05 00:07:00.326132', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (560, 10, 'http://watsicazieme.net', '2015-08-05 00:07:00.327563', '2015-08-05 00:07:00.327563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (561, 10, 'http://smitham.biz', '2015-08-05 00:07:00.328823', '2015-08-05 00:07:00.328823', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (562, 10, 'http://howe.net', '2015-08-05 00:07:00.329953', '2015-08-05 00:07:00.329953', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (563, 10, 'http://dare.com', '2015-08-05 00:07:00.331109', '2015-08-05 00:07:00.331109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (564, 10, 'http://parkerrath.com', '2015-08-05 00:07:00.332407', '2015-08-05 00:07:00.332407', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (565, 10, 'http://parker.com', '2015-08-05 00:07:00.333592', '2015-08-05 00:07:00.333592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (566, 10, 'http://bergnaum.biz', '2015-08-05 00:07:00.334774', '2015-08-05 00:07:00.334774', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (567, 10, 'http://crist.name', '2015-08-05 00:07:00.335977', '2015-08-05 00:07:00.335977', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (568, 10, 'http://wolffgottlieb.com', '2015-08-05 00:07:00.337233', '2015-08-05 00:07:00.337233', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (569, 10, 'http://bahringer.info', '2015-08-05 00:07:00.338281', '2015-08-05 00:07:00.338281', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (570, 10, 'http://pacochadoyle.biz', '2015-08-05 00:07:00.339369', '2015-08-05 00:07:00.339369', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (571, 10, 'http://homenick.com', '2015-08-05 00:07:00.341929', '2015-08-05 00:07:00.341929', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (572, 10, 'http://lefflertowne.name', '2015-08-05 00:07:00.344', '2015-08-05 00:07:00.344', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (573, 10, 'http://sipes.info', '2015-08-05 00:07:00.345313', '2015-08-05 00:07:00.345313', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (574, 10, 'http://kunze.name', '2015-08-05 00:07:00.346726', '2015-08-05 00:07:00.346726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (575, 10, 'http://beatty.com', '2015-08-05 00:07:00.348085', '2015-08-05 00:07:00.348085', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (576, 10, 'http://pagac.name', '2015-08-05 00:07:00.349249', '2015-08-05 00:07:00.349249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (577, 10, 'http://renner.biz', '2015-08-05 00:07:00.350393', '2015-08-05 00:07:00.350393', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (578, 10, 'http://gleichnersatterfield.org', '2015-08-05 00:07:00.351534', '2015-08-05 00:07:00.351534', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (579, 10, 'http://haley.name', '2015-08-05 00:07:00.352941', '2015-08-05 00:07:00.352941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (580, 10, 'http://ernsercollins.org', '2015-08-05 00:07:00.354214', '2015-08-05 00:07:00.354214', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (581, 10, 'http://terry.net', '2015-08-05 00:07:00.355328', '2015-08-05 00:07:00.355328', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (582, 10, 'http://stiedemann.biz', '2015-08-05 00:07:00.356397', '2015-08-05 00:07:00.356397', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (583, 10, 'http://strackekutch.net', '2015-08-05 00:07:00.357436', '2015-08-05 00:07:00.357436', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (584, 10, 'http://braun.com', '2015-08-05 00:07:00.358462', '2015-08-05 00:07:00.358462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (585, 10, 'http://greenholt.name', '2015-08-05 00:07:00.359513', '2015-08-05 00:07:00.359513', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (586, 10, 'http://hirtheschamberger.info', '2015-08-05 00:07:00.360755', '2015-08-05 00:07:00.360755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (587, 10, 'http://hahn.com', '2015-08-05 00:07:00.362044', '2015-08-05 00:07:00.362044', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (588, 10, 'http://murazik.org', '2015-08-05 00:07:00.363226', '2015-08-05 00:07:00.363226', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (589, 10, 'http://bashirian.name', '2015-08-05 00:07:00.36452', '2015-08-05 00:07:00.36452', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (590, 10, 'http://barrows.info', '2015-08-05 00:07:00.365873', '2015-08-05 00:07:00.365873', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (591, 10, 'http://kemmer.name', '2015-08-05 00:07:00.367176', '2015-08-05 00:07:00.367176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (592, 10, 'http://boehm.net', '2015-08-05 00:07:00.368381', '2015-08-05 00:07:00.368381', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (593, 10, 'http://mayerkunze.biz', '2015-08-05 00:07:00.369539', '2015-08-05 00:07:00.369539', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (594, 10, 'http://mclaughlin.name', '2015-08-05 00:07:00.37176', '2015-08-05 00:07:00.37176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (595, 10, 'http://anderson.org', '2015-08-05 00:07:00.373664', '2015-08-05 00:07:00.373664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (596, 10, 'http://hayes.net', '2015-08-05 00:07:00.375093', '2015-08-05 00:07:00.375093', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (597, 10, 'http://cummings.biz', '2015-08-05 00:07:00.376507', '2015-08-05 00:07:00.376507', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (598, 10, 'http://bernhard.net', '2015-08-05 00:07:00.3777', '2015-08-05 00:07:00.3777', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (599, 10, 'http://hayeswilliamson.org', '2015-08-05 00:07:00.378936', '2015-08-05 00:07:00.378936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (600, 10, 'http://oconnellmante.com', '2015-08-05 00:07:00.380208', '2015-08-05 00:07:00.380208', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (601, 10, 'http://pouros.com', '2015-08-05 00:07:00.381339', '2015-08-05 00:07:00.381339', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (602, 10, 'http://kreiger.info', '2015-08-05 00:07:00.382446', '2015-08-05 00:07:00.382446', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (603, 10, 'http://emmerich.biz', '2015-08-05 00:07:00.383604', '2015-08-05 00:07:00.383604', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (604, 10, 'http://kreigerbeatty.info', '2015-08-05 00:07:00.384917', '2015-08-05 00:07:00.384917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (605, 10, 'http://mertz.net', '2015-08-05 00:07:00.386147', '2015-08-05 00:07:00.386147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (606, 10, 'http://gerlach.info', '2015-08-05 00:07:00.38736', '2015-08-05 00:07:00.38736', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (607, 10, 'http://tillmanmetz.com', '2015-08-05 00:07:00.388626', '2015-08-05 00:07:00.388626', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (608, 10, 'http://buckridgehegmann.org', '2015-08-05 00:07:00.389692', '2015-08-05 00:07:00.389692', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (609, 10, 'http://muller.name', '2015-08-05 00:07:00.390691', '2015-08-05 00:07:00.390691', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (610, 10, 'http://yost.net', '2015-08-05 00:07:00.391755', '2015-08-05 00:07:00.391755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (611, 10, 'http://padberg.net', '2015-08-05 00:07:00.392924', '2015-08-05 00:07:00.392924', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (612, 10, 'http://ferry.net', '2015-08-05 00:07:00.394205', '2015-08-05 00:07:00.394205', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (613, 10, 'http://wunsch.org', '2015-08-05 00:07:00.39537', '2015-08-05 00:07:00.39537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (614, 10, 'http://trantow.org', '2015-08-05 00:07:00.396666', '2015-08-05 00:07:00.396666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (615, 10, 'http://hyatt.net', '2015-08-05 00:07:00.397836', '2015-08-05 00:07:00.397836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (616, 10, 'http://feeney.biz', '2015-08-05 00:07:00.399047', '2015-08-05 00:07:00.399047', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (617, 10, 'http://harvey.name', '2015-08-05 00:07:00.400183', '2015-08-05 00:07:00.400183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (618, 10, 'http://runtewolff.com', '2015-08-05 00:07:00.40212', '2015-08-05 00:07:00.40212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (619, 10, 'http://dachmurazik.info', '2015-08-05 00:07:00.403302', '2015-08-05 00:07:00.403302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (620, 10, 'http://sanford.com', '2015-08-05 00:07:00.40456', '2015-08-05 00:07:00.40456', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (621, 10, 'http://jasthand.name', '2015-08-05 00:07:00.405951', '2015-08-05 00:07:00.405951', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (622, 10, 'http://schmelerhowell.org', '2015-08-05 00:07:00.407179', '2015-08-05 00:07:00.407179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (623, 10, 'http://rohanparker.com', '2015-08-05 00:07:00.408494', '2015-08-05 00:07:00.408494', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (624, 10, 'http://boyerbeahan.biz', '2015-08-05 00:07:00.409607', '2015-08-05 00:07:00.409607', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (625, 10, 'http://zemlak.name', '2015-08-05 00:07:00.410744', '2015-08-05 00:07:00.410744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (626, 10, 'http://corkerybreitenberg.net', '2015-08-05 00:07:00.411896', '2015-08-05 00:07:00.411896', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (627, 10, 'http://carroll.name', '2015-08-05 00:07:00.413043', '2015-08-05 00:07:00.413043', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (628, 10, 'http://beckervandervort.name', '2015-08-05 00:07:00.414254', '2015-08-05 00:07:00.414254', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (629, 10, 'http://kelermacejkovic.name', '2015-08-05 00:07:00.415484', '2015-08-05 00:07:00.415484', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (630, 10, 'http://williamson.name', '2015-08-05 00:07:00.41678', '2015-08-05 00:07:00.41678', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (631, 10, 'http://douglawaniawski.net', '2015-08-05 00:07:00.417884', '2015-08-05 00:07:00.417884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (632, 10, 'http://rath.info', '2015-08-05 00:07:00.418983', '2015-08-05 00:07:00.418983', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (633, 10, 'http://jenkinskaulke.org', '2015-08-05 00:07:00.420129', '2015-08-05 00:07:00.420129', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (634, 10, 'http://adams.com', '2015-08-05 00:07:00.42151', '2015-08-05 00:07:00.42151', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (635, 10, 'http://yundtstracke.info', '2015-08-05 00:07:00.422837', '2015-08-05 00:07:00.422837', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (636, 10, 'http://macgyverhaag.net', '2015-08-05 00:07:00.424041', '2015-08-05 00:07:00.424041', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (637, 10, 'http://johnson.info', '2015-08-05 00:07:00.425323', '2015-08-05 00:07:00.425323', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (638, 10, 'http://schaeferbauch.name', '2015-08-05 00:07:00.426753', '2015-08-05 00:07:00.426753', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (639, 10, 'http://ullrichhaley.com', '2015-08-05 00:07:00.427949', '2015-08-05 00:07:00.427949', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (640, 10, 'http://langoshmertz.biz', '2015-08-05 00:07:00.429348', '2015-08-05 00:07:00.429348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (641, 10, 'http://stehrfisher.org', '2015-08-05 00:07:00.431854', '2015-08-05 00:07:00.431854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (642, 10, 'http://mueller.name', '2015-08-05 00:07:00.433885', '2015-08-05 00:07:00.433885', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (643, 10, 'http://runolfon.biz', '2015-08-05 00:07:00.435227', '2015-08-05 00:07:00.435227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (644, 10, 'http://stehrquigley.org', '2015-08-05 00:07:00.436495', '2015-08-05 00:07:00.436495', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (645, 10, 'http://kuhic.com', '2015-08-05 00:07:00.437749', '2015-08-05 00:07:00.437749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (646, 10, 'http://vandervortbecker.org', '2015-08-05 00:07:00.439002', '2015-08-05 00:07:00.439002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (647, 10, 'http://will.org', '2015-08-05 00:07:00.440101', '2015-08-05 00:07:00.440101', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (648, 10, 'http://harber.com', '2015-08-05 00:07:00.441373', '2015-08-05 00:07:00.441373', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (649, 10, 'http://white.info', '2015-08-05 00:07:00.442572', '2015-08-05 00:07:00.442572', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (650, 10, 'http://larson.org', '2015-08-05 00:07:00.443674', '2015-08-05 00:07:00.443674', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (651, 10, 'http://osinski.net', '2015-08-05 00:07:00.444917', '2015-08-05 00:07:00.444917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (652, 11, 'http://blanda.org', '2015-08-05 00:07:00.558556', '2015-08-05 00:07:00.558556', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (653, 11, 'http://erdman.biz', '2015-08-05 00:07:00.55995', '2015-08-05 00:07:00.55995', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (654, 11, 'http://homenick.info', '2015-08-05 00:07:00.561387', '2015-08-05 00:07:00.561387', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (655, 11, 'http://langosh.name', '2015-08-05 00:07:00.56268', '2015-08-05 00:07:00.56268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (656, 11, 'http://kelerdeckow.biz', '2015-08-05 00:07:00.563868', '2015-08-05 00:07:00.563868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (657, 11, 'http://sawaynkulas.org', '2015-08-05 00:07:00.56501', '2015-08-05 00:07:00.56501', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (658, 11, 'http://kovacekveum.name', '2015-08-05 00:07:00.566295', '2015-08-05 00:07:00.566295', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (659, 11, 'http://medhurst.biz', '2015-08-05 00:07:00.567662', '2015-08-05 00:07:00.567662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (660, 11, 'http://mcglynncrooks.info', '2015-08-05 00:07:00.569', '2015-08-05 00:07:00.569', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (661, 11, 'http://luettgen.name', '2015-08-05 00:07:00.572097', '2015-08-05 00:07:00.572097', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (662, 11, 'http://mcglynnbins.org', '2015-08-05 00:07:00.574347', '2015-08-05 00:07:00.574347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (663, 11, 'http://kunze.org', '2015-08-05 00:07:00.575655', '2015-08-05 00:07:00.575655', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (664, 11, 'http://keeling.name', '2015-08-05 00:07:00.577008', '2015-08-05 00:07:00.577008', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (665, 11, 'http://rolfsonbahringer.info', '2015-08-05 00:07:00.578402', '2015-08-05 00:07:00.578402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (666, 11, 'http://breitenberg.org', '2015-08-05 00:07:00.579719', '2015-08-05 00:07:00.579719', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (667, 11, 'http://moriette.name', '2015-08-05 00:07:00.581067', '2015-08-05 00:07:00.581067', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (668, 11, 'http://feest.com', '2015-08-05 00:07:00.582357', '2015-08-05 00:07:00.582357', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (669, 11, 'http://oharamueller.name', '2015-08-05 00:07:00.58373', '2015-08-05 00:07:00.58373', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (670, 11, 'http://dibbertheathcote.name', '2015-08-05 00:07:00.584931', '2015-08-05 00:07:00.584931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (671, 11, 'http://king.com', '2015-08-05 00:07:00.586537', '2015-08-05 00:07:00.586537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (672, 11, 'http://kubjacobs.biz', '2015-08-05 00:07:00.587877', '2015-08-05 00:07:00.587877', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (673, 11, 'http://nolan.info', '2015-08-05 00:07:00.589145', '2015-08-05 00:07:00.589145', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (674, 11, 'http://wolff.net', '2015-08-05 00:07:00.590302', '2015-08-05 00:07:00.590302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (675, 11, 'http://wunschvon.com', '2015-08-05 00:07:00.591767', '2015-08-05 00:07:00.591767', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (676, 11, 'http://aufderhar.info', '2015-08-05 00:07:00.593101', '2015-08-05 00:07:00.593101', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (677, 11, 'http://quitzon.info', '2015-08-05 00:07:00.594302', '2015-08-05 00:07:00.594302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (678, 11, 'http://harvey.biz', '2015-08-05 00:07:00.595361', '2015-08-05 00:07:00.595361', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (679, 11, 'http://walter.org', '2015-08-05 00:07:00.596529', '2015-08-05 00:07:00.596529', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (680, 11, 'http://nicolasmosciski.org', '2015-08-05 00:07:00.597895', '2015-08-05 00:07:00.597895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (681, 11, 'http://torprunolfsdottir.name', '2015-08-05 00:07:00.59936', '2015-08-05 00:07:00.59936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (682, 11, 'http://moriette.com', '2015-08-05 00:07:00.601907', '2015-08-05 00:07:00.601907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (683, 11, 'http://ratke.info', '2015-08-05 00:07:00.603831', '2015-08-05 00:07:00.603831', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (684, 11, 'http://mitchellhilll.org', '2015-08-05 00:07:00.605189', '2015-08-05 00:07:00.605189', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (685, 11, 'http://kuphal.org', '2015-08-05 00:07:00.606767', '2015-08-05 00:07:00.606767', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (686, 11, 'http://ryan.info', '2015-08-05 00:07:00.607947', '2015-08-05 00:07:00.607947', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (687, 11, 'http://koepp.biz', '2015-08-05 00:07:00.609102', '2015-08-05 00:07:00.609102', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (688, 11, 'http://oconnell.biz', '2015-08-05 00:07:00.610386', '2015-08-05 00:07:00.610386', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (689, 11, 'http://quigley.net', '2015-08-05 00:07:00.611568', '2015-08-05 00:07:00.611568', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (690, 11, 'http://marvin.biz', '2015-08-05 00:07:00.612923', '2015-08-05 00:07:00.612923', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (691, 11, 'http://beerboehm.com', '2015-08-05 00:07:00.61431', '2015-08-05 00:07:00.61431', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (692, 11, 'http://miller.biz', '2015-08-05 00:07:00.615506', '2015-08-05 00:07:00.615506', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (693, 11, 'http://ondricka.biz', '2015-08-05 00:07:00.61688', '2015-08-05 00:07:00.61688', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (694, 11, 'http://witting.name', '2015-08-05 00:07:00.617971', '2015-08-05 00:07:00.617971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (695, 11, 'http://shanahan.name', '2015-08-05 00:07:00.61912', '2015-08-05 00:07:00.61912', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (696, 11, 'http://mante.com', '2015-08-05 00:07:00.620411', '2015-08-05 00:07:00.620411', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (697, 11, 'http://wunsch.name', '2015-08-05 00:07:00.621868', '2015-08-05 00:07:00.621868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (698, 11, 'http://keler.org', '2015-08-05 00:07:00.623325', '2015-08-05 00:07:00.623325', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (699, 11, 'http://wintheiserdurgan.info', '2015-08-05 00:07:00.624575', '2015-08-05 00:07:00.624575', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (700, 11, 'http://rohan.info', '2015-08-05 00:07:00.625945', '2015-08-05 00:07:00.625945', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (701, 11, 'http://homenick.info', '2015-08-05 00:07:00.627362', '2015-08-05 00:07:00.627362', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (702, 11, 'http://kuvalisritchie.name', '2015-08-05 00:07:00.628443', '2015-08-05 00:07:00.628443', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (703, 11, 'http://feilortiz.org', '2015-08-05 00:07:00.629709', '2015-08-05 00:07:00.629709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (704, 11, 'http://denesikdonnelly.info', '2015-08-05 00:07:00.631995', '2015-08-05 00:07:00.631995', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (705, 11, 'http://wiegand.net', '2015-08-05 00:07:00.634057', '2015-08-05 00:07:00.634057', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (706, 11, 'http://hermiston.com', '2015-08-05 00:07:00.635241', '2015-08-05 00:07:00.635241', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (707, 11, 'http://collier.info', '2015-08-05 00:07:00.636381', '2015-08-05 00:07:00.636381', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (708, 11, 'http://carter.com', '2015-08-05 00:07:00.637646', '2015-08-05 00:07:00.637646', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (709, 11, 'http://gutmann.name', '2015-08-05 00:07:00.638727', '2015-08-05 00:07:00.638727', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (710, 11, 'http://kris.net', '2015-08-05 00:07:00.63983', '2015-08-05 00:07:00.63983', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (711, 11, 'http://hodkiewiczblock.name', '2015-08-05 00:07:00.64108', '2015-08-05 00:07:00.64108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (712, 11, 'http://paucekkub.net', '2015-08-05 00:07:00.642259', '2015-08-05 00:07:00.642259', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (713, 11, 'http://keeblervandervort.info', '2015-08-05 00:07:00.643606', '2015-08-05 00:07:00.643606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (714, 11, 'http://hansenko.org', '2015-08-05 00:07:00.644832', '2015-08-05 00:07:00.644832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (715, 11, 'http://muller.net', '2015-08-05 00:07:00.646124', '2015-08-05 00:07:00.646124', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (716, 11, 'http://willblock.info', '2015-08-05 00:07:00.647542', '2015-08-05 00:07:00.647542', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (717, 11, 'http://rau.net', '2015-08-05 00:07:00.648722', '2015-08-05 00:07:00.648722', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (718, 11, 'http://langworth.biz', '2015-08-05 00:07:00.649733', '2015-08-05 00:07:00.649733', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (719, 12, 'http://schroederboyle.org', '2015-08-05 00:07:01.365941', '2015-08-05 00:07:01.365941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (720, 12, 'http://kulas.org', '2015-08-05 00:07:01.367321', '2015-08-05 00:07:01.367321', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (721, 12, 'http://beier.net', '2015-08-05 00:07:01.368779', '2015-08-05 00:07:01.368779', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (722, 12, 'http://boehm.net', '2015-08-05 00:07:01.370033', '2015-08-05 00:07:01.370033', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (723, 12, 'http://reinger.name', '2015-08-05 00:07:01.372063', '2015-08-05 00:07:01.372063', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (724, 12, 'http://braunkuphal.com', '2015-08-05 00:07:01.373441', '2015-08-05 00:07:01.373441', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (725, 12, 'http://volkman.name', '2015-08-05 00:07:01.374715', '2015-08-05 00:07:01.374715', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (726, 12, 'http://klocko.com', '2015-08-05 00:07:01.376062', '2015-08-05 00:07:01.376062', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (727, 12, 'http://graham.net', '2015-08-05 00:07:01.37738', '2015-08-05 00:07:01.37738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (728, 12, 'http://oconner.com', '2015-08-05 00:07:01.378855', '2015-08-05 00:07:01.378855', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (729, 12, 'http://ruecker.org', '2015-08-05 00:07:01.380049', '2015-08-05 00:07:01.380049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (730, 12, 'http://vonrueden.biz', '2015-08-05 00:07:01.381506', '2015-08-05 00:07:01.381506', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (731, 12, 'http://kunze.info', '2015-08-05 00:07:01.382866', '2015-08-05 00:07:01.382866', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (732, 12, 'http://goodwinkiehn.org', '2015-08-05 00:07:01.38421', '2015-08-05 00:07:01.38421', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (733, 12, 'http://wintheiserschulist.org', '2015-08-05 00:07:01.385674', '2015-08-05 00:07:01.385674', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (734, 12, 'http://nikolaus.info', '2015-08-05 00:07:01.386978', '2015-08-05 00:07:01.386978', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (735, 12, 'http://ondrickaquigley.com', '2015-08-05 00:07:01.388192', '2015-08-05 00:07:01.388192', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (736, 12, 'http://cremin.com', '2015-08-05 00:07:01.389502', '2015-08-05 00:07:01.389502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (737, 12, 'http://robel.info', '2015-08-05 00:07:01.390677', '2015-08-05 00:07:01.390677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (738, 12, 'http://langdavis.net', '2015-08-05 00:07:01.391913', '2015-08-05 00:07:01.391913', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (739, 12, 'http://gaylord.org', '2015-08-05 00:07:01.393111', '2015-08-05 00:07:01.393111', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (740, 12, 'http://kuhic.org', '2015-08-05 00:07:01.39438', '2015-08-05 00:07:01.39438', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (741, 12, 'http://kochwyman.name', '2015-08-05 00:07:01.395768', '2015-08-05 00:07:01.395768', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (742, 12, 'http://bernhard.com', '2015-08-05 00:07:01.396892', '2015-08-05 00:07:01.396892', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (743, 12, 'http://zieme.name', '2015-08-05 00:07:01.398113', '2015-08-05 00:07:01.398113', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (744, 12, 'http://marquardtjones.org', '2015-08-05 00:07:01.399201', '2015-08-05 00:07:01.399201', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (745, 12, 'http://cummerata.com', '2015-08-05 00:07:01.401868', '2015-08-05 00:07:01.401868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (746, 12, 'http://hintz.info', '2015-08-05 00:07:01.403973', '2015-08-05 00:07:01.403973', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (747, 12, 'http://fay.org', '2015-08-05 00:07:01.405082', '2015-08-05 00:07:01.405082', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (748, 12, 'http://predovichermiston.org', '2015-08-05 00:07:01.40637', '2015-08-05 00:07:01.40637', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (749, 12, 'http://mcculloughcrist.org', '2015-08-05 00:07:01.40762', '2015-08-05 00:07:01.40762', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (750, 13, 'http://bahringer.info', '2015-08-05 00:07:01.982292', '2015-08-05 00:07:01.982292', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (751, 13, 'http://zemlak.name', '2015-08-05 00:07:01.983915', '2015-08-05 00:07:01.983915', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (752, 13, 'http://howe.org', '2015-08-05 00:07:01.985353', '2015-08-05 00:07:01.985353', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (753, 13, 'http://hermankoepp.biz', '2015-08-05 00:07:01.986667', '2015-08-05 00:07:01.986667', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (754, 13, 'http://wisoky.biz', '2015-08-05 00:07:01.988038', '2015-08-05 00:07:01.988038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (755, 13, 'http://thiel.info', '2015-08-05 00:07:01.989319', '2015-08-05 00:07:01.989319', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (756, 13, 'http://schimmel.biz', '2015-08-05 00:07:01.990463', '2015-08-05 00:07:01.990463', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (757, 13, 'http://larkin.biz', '2015-08-05 00:07:01.992174', '2015-08-05 00:07:01.992174', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (758, 13, 'http://pfannerstill.biz', '2015-08-05 00:07:01.99369', '2015-08-05 00:07:01.99369', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (759, 13, 'http://bartoletti.net', '2015-08-05 00:07:01.995196', '2015-08-05 00:07:01.995196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (760, 13, 'http://hodkiewicz.name', '2015-08-05 00:07:01.99647', '2015-08-05 00:07:01.99647', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (761, 13, 'http://mannhamill.name', '2015-08-05 00:07:01.997971', '2015-08-05 00:07:01.997971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (762, 13, 'http://cristhirthe.name', '2015-08-05 00:07:01.999267', '2015-08-05 00:07:01.999267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (763, 13, 'http://ruel.org', '2015-08-05 00:07:02.001935', '2015-08-05 00:07:02.001935', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (764, 13, 'http://schinnerlabadie.info', '2015-08-05 00:07:02.004082', '2015-08-05 00:07:02.004082', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (765, 13, 'http://welchupton.name', '2015-08-05 00:07:02.005502', '2015-08-05 00:07:02.005502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (766, 13, 'http://lockman.biz', '2015-08-05 00:07:02.00676', '2015-08-05 00:07:02.00676', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (767, 13, 'http://nitzsche.org', '2015-08-05 00:07:02.008124', '2015-08-05 00:07:02.008124', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (768, 13, 'http://nicolashackett.info', '2015-08-05 00:07:02.009327', '2015-08-05 00:07:02.009327', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (769, 13, 'http://haag.net', '2015-08-05 00:07:02.01086', '2015-08-05 00:07:02.01086', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (770, 13, 'http://homenick.info', '2015-08-05 00:07:02.012458', '2015-08-05 00:07:02.012458', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (771, 13, 'http://torp.net', '2015-08-05 00:07:02.013748', '2015-08-05 00:07:02.013748', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (772, 13, 'http://schultz.name', '2015-08-05 00:07:02.015035', '2015-08-05 00:07:02.015035', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (773, 13, 'http://marvingreen.name', '2015-08-05 00:07:02.01642', '2015-08-05 00:07:02.01642', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (774, 13, 'http://rowe.name', '2015-08-05 00:07:02.017683', '2015-08-05 00:07:02.017683', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (775, 13, 'http://parker.name', '2015-08-05 00:07:02.019123', '2015-08-05 00:07:02.019123', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (776, 13, 'http://wolf.com', '2015-08-05 00:07:02.020517', '2015-08-05 00:07:02.020517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (777, 13, 'http://simonis.com', '2015-08-05 00:07:02.021891', '2015-08-05 00:07:02.021891', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (778, 13, 'http://ortiz.org', '2015-08-05 00:07:02.023292', '2015-08-05 00:07:02.023292', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (779, 13, 'http://wehner.com', '2015-08-05 00:07:02.02465', '2015-08-05 00:07:02.02465', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (780, 13, 'http://aufderhardietrich.biz', '2015-08-05 00:07:02.025787', '2015-08-05 00:07:02.025787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (781, 13, 'http://little.biz', '2015-08-05 00:07:02.026867', '2015-08-05 00:07:02.026867', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (782, 13, 'http://jast.name', '2015-08-05 00:07:02.027971', '2015-08-05 00:07:02.027971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (783, 13, 'http://mitchelltowne.biz', '2015-08-05 00:07:02.029034', '2015-08-05 00:07:02.029034', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (784, 13, 'http://oharagleichner.net', '2015-08-05 00:07:02.030129', '2015-08-05 00:07:02.030129', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (785, 13, 'http://padberg.name', '2015-08-05 00:07:02.032204', '2015-08-05 00:07:02.032204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (786, 13, 'http://ko.info', '2015-08-05 00:07:02.033577', '2015-08-05 00:07:02.033577', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (787, 13, 'http://durganhahn.name', '2015-08-05 00:07:02.034854', '2015-08-05 00:07:02.034854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (788, 13, 'http://becker.name', '2015-08-05 00:07:02.035998', '2015-08-05 00:07:02.035998', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (789, 13, 'http://douglas.biz', '2015-08-05 00:07:02.037077', '2015-08-05 00:07:02.037077', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (790, 13, 'http://strackerenner.biz', '2015-08-05 00:07:02.038161', '2015-08-05 00:07:02.038161', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (791, 13, 'http://bode.name', '2015-08-05 00:07:02.039217', '2015-08-05 00:07:02.039217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (792, 13, 'http://bayer.org', '2015-08-05 00:07:02.040299', '2015-08-05 00:07:02.040299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (793, 13, 'http://tillman.org', '2015-08-05 00:07:02.041711', '2015-08-05 00:07:02.041711', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (794, 13, 'http://cain.biz', '2015-08-05 00:07:02.043091', '2015-08-05 00:07:02.043091', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (795, 13, 'http://grant.biz', '2015-08-05 00:07:02.044305', '2015-08-05 00:07:02.044305', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (796, 13, 'http://damore.net', '2015-08-05 00:07:02.045471', '2015-08-05 00:07:02.045471', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (797, 13, 'http://macgyver.name', '2015-08-05 00:07:02.046504', '2015-08-05 00:07:02.046504', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (798, 13, 'http://durganlindgren.biz', '2015-08-05 00:07:02.047527', '2015-08-05 00:07:02.047527', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (799, 13, 'http://walterrunte.org', '2015-08-05 00:07:02.048627', '2015-08-05 00:07:02.048627', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (800, 13, 'http://hackettemard.biz', '2015-08-05 00:07:02.04976', '2015-08-05 00:07:02.04976', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (801, 13, 'http://bergstrom.biz', '2015-08-05 00:07:02.051048', '2015-08-05 00:07:02.051048', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (802, 13, 'http://wisoky.name', '2015-08-05 00:07:02.05261', '2015-08-05 00:07:02.05261', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (803, 13, 'http://waelchi.net', '2015-08-05 00:07:02.053953', '2015-08-05 00:07:02.053953', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (804, 13, 'http://skiles.net', '2015-08-05 00:07:02.055162', '2015-08-05 00:07:02.055162', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (805, 13, 'http://mayer.biz', '2015-08-05 00:07:02.056491', '2015-08-05 00:07:02.056491', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (806, 13, 'http://lindgren.com', '2015-08-05 00:07:02.057673', '2015-08-05 00:07:02.057673', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (807, 13, 'http://bogan.net', '2015-08-05 00:07:02.058906', '2015-08-05 00:07:02.058906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (808, 13, 'http://wiza.net', '2015-08-05 00:07:02.061968', '2015-08-05 00:07:02.061968', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (809, 13, 'http://krajcikondricka.biz', '2015-08-05 00:07:02.064133', '2015-08-05 00:07:02.064133', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (810, 14, 'http://kreiger.name', '2015-08-05 00:07:02.175809', '2015-08-05 00:07:02.175809', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (811, 14, 'http://yundtcummerata.info', '2015-08-05 00:07:02.177391', '2015-08-05 00:07:02.177391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (812, 14, 'http://rippinbartoletti.net', '2015-08-05 00:07:02.178833', '2015-08-05 00:07:02.178833', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (813, 14, 'http://huels.biz', '2015-08-05 00:07:02.180238', '2015-08-05 00:07:02.180238', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (814, 14, 'http://lehner.biz', '2015-08-05 00:07:02.181606', '2015-08-05 00:07:02.181606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (815, 14, 'http://dickensklein.org', '2015-08-05 00:07:02.183022', '2015-08-05 00:07:02.183022', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (816, 14, 'http://sauerlind.net', '2015-08-05 00:07:02.18425', '2015-08-05 00:07:02.18425', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (817, 14, 'http://johns.com', '2015-08-05 00:07:02.18558', '2015-08-05 00:07:02.18558', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (818, 14, 'http://wardkling.com', '2015-08-05 00:07:02.186811', '2015-08-05 00:07:02.186811', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (819, 14, 'http://konopelski.biz', '2015-08-05 00:07:02.188296', '2015-08-05 00:07:02.188296', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (820, 14, 'http://goyettelockman.biz', '2015-08-05 00:07:02.189437', '2015-08-05 00:07:02.189437', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (821, 14, 'http://ebert.info', '2015-08-05 00:07:02.190685', '2015-08-05 00:07:02.190685', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (822, 14, 'http://walter.info', '2015-08-05 00:07:02.191921', '2015-08-05 00:07:02.191921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (823, 14, 'http://franeckivolkman.biz', '2015-08-05 00:07:02.193106', '2015-08-05 00:07:02.193106', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (824, 14, 'http://terry.net', '2015-08-05 00:07:02.194131', '2015-08-05 00:07:02.194131', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (825, 14, 'http://darekerluke.com', '2015-08-05 00:07:02.195218', '2015-08-05 00:07:02.195218', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (826, 14, 'http://kriswhite.com', '2015-08-05 00:07:02.196353', '2015-08-05 00:07:02.196353', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (827, 14, 'http://gleichnerhirthe.com', '2015-08-05 00:07:02.197636', '2015-08-05 00:07:02.197636', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (828, 14, 'http://douglasgoodwin.name', '2015-08-05 00:07:02.198706', '2015-08-05 00:07:02.198706', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (829, 14, 'http://bergstrommueller.biz', '2015-08-05 00:07:02.199744', '2015-08-05 00:07:02.199744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (830, 14, 'http://millermarquardt.org', '2015-08-05 00:07:02.201729', '2015-08-05 00:07:02.201729', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (831, 14, 'http://schoennader.biz', '2015-08-05 00:07:02.207518', '2015-08-05 00:07:02.207518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (832, 14, 'http://hansen.net', '2015-08-05 00:07:02.208969', '2015-08-05 00:07:02.208969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (833, 14, 'http://hoppe.net', '2015-08-05 00:07:02.210282', '2015-08-05 00:07:02.210282', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (834, 14, 'http://jerde.net', '2015-08-05 00:07:02.211548', '2015-08-05 00:07:02.211548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (835, 14, 'http://stanton.biz', '2015-08-05 00:07:02.212671', '2015-08-05 00:07:02.212671', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (836, 14, 'http://zieme.com', '2015-08-05 00:07:02.214034', '2015-08-05 00:07:02.214034', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (837, 14, 'http://okonheller.biz', '2015-08-05 00:07:02.215532', '2015-08-05 00:07:02.215532', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (838, 14, 'http://abshireeffertz.org', '2015-08-05 00:07:02.216895', '2015-08-05 00:07:02.216895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (839, 14, 'http://gerhold.org', '2015-08-05 00:07:02.218238', '2015-08-05 00:07:02.218238', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (840, 14, 'http://gusikowski.com', '2015-08-05 00:07:02.219533', '2015-08-05 00:07:02.219533', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (841, 14, 'http://crona.biz', '2015-08-05 00:07:02.220976', '2015-08-05 00:07:02.220976', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (842, 14, 'http://westkautzer.com', '2015-08-05 00:07:02.22216', '2015-08-05 00:07:02.22216', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (843, 14, 'http://spencer.net', '2015-08-05 00:07:02.223284', '2015-08-05 00:07:02.223284', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (844, 14, 'http://smith.info', '2015-08-05 00:07:02.224415', '2015-08-05 00:07:02.224415', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (845, 14, 'http://reicherthahn.net', '2015-08-05 00:07:02.225537', '2015-08-05 00:07:02.225537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (846, 14, 'http://brown.net', '2015-08-05 00:07:02.2267', '2015-08-05 00:07:02.2267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (847, 14, 'http://kochturner.info', '2015-08-05 00:07:02.227949', '2015-08-05 00:07:02.227949', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (848, 14, 'http://lefflerlubowitz.info', '2015-08-05 00:07:02.229129', '2015-08-05 00:07:02.229129', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (849, 14, 'http://hilpert.net', '2015-08-05 00:07:02.230464', '2015-08-05 00:07:02.230464', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (850, 14, 'http://schimmel.info', '2015-08-05 00:07:02.231546', '2015-08-05 00:07:02.231546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (851, 14, 'http://buckridge.biz', '2015-08-05 00:07:02.23278', '2015-08-05 00:07:02.23278', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (852, 14, 'http://jaskolski.com', '2015-08-05 00:07:02.233908', '2015-08-05 00:07:02.233908', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (853, 14, 'http://prohaskabecker.net', '2015-08-05 00:07:02.235303', '2015-08-05 00:07:02.235303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (854, 14, 'http://pfeffer.org', '2015-08-05 00:07:02.236566', '2015-08-05 00:07:02.236566', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (855, 14, 'http://ohara.net', '2015-08-05 00:07:02.237795', '2015-08-05 00:07:02.237795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (856, 14, 'http://lang.name', '2015-08-05 00:07:02.238944', '2015-08-05 00:07:02.238944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (857, 14, 'http://west.com', '2015-08-05 00:07:02.240064', '2015-08-05 00:07:02.240064', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (858, 15, 'http://gerholdrenner.org', '2015-08-05 00:07:02.382041', '2015-08-05 00:07:02.382041', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (859, 15, 'http://brekke.org', '2015-08-05 00:07:02.383494', '2015-08-05 00:07:02.383494', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (860, 15, 'http://farrell.name', '2015-08-05 00:07:02.384867', '2015-08-05 00:07:02.384867', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (861, 15, 'http://weimanntillman.org', '2015-08-05 00:07:02.386283', '2015-08-05 00:07:02.386283', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (862, 15, 'http://bednarbotsford.net', '2015-08-05 00:07:02.387644', '2015-08-05 00:07:02.387644', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (863, 15, 'http://hermiston.name', '2015-08-05 00:07:02.389', '2015-08-05 00:07:02.389', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (864, 15, 'http://murphy.biz', '2015-08-05 00:07:02.390212', '2015-08-05 00:07:02.390212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (865, 15, 'http://cole.info', '2015-08-05 00:07:02.391358', '2015-08-05 00:07:02.391358', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (866, 15, 'http://hahn.info', '2015-08-05 00:07:02.392589', '2015-08-05 00:07:02.392589', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (867, 15, 'http://lemkepagac.net', '2015-08-05 00:07:02.393925', '2015-08-05 00:07:02.393925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (868, 15, 'http://langosh.net', '2015-08-05 00:07:02.395281', '2015-08-05 00:07:02.395281', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (869, 15, 'http://larkin.biz', '2015-08-05 00:07:02.396497', '2015-08-05 00:07:02.396497', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (870, 15, 'http://millsbaumbach.info', '2015-08-05 00:07:02.39798', '2015-08-05 00:07:02.39798', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (871, 15, 'http://kunze.name', '2015-08-05 00:07:02.399352', '2015-08-05 00:07:02.399352', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (872, 15, 'http://wyman.name', '2015-08-05 00:07:02.400639', '2015-08-05 00:07:02.400639', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (873, 15, 'http://erdman.org', '2015-08-05 00:07:02.401712', '2015-08-05 00:07:02.401712', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (874, 15, 'http://windler.com', '2015-08-05 00:07:02.403058', '2015-08-05 00:07:02.403058', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (875, 15, 'http://keler.net', '2015-08-05 00:07:02.40421', '2015-08-05 00:07:02.40421', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (876, 15, 'http://cartwright.name', '2015-08-05 00:07:02.405568', '2015-08-05 00:07:02.405568', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (877, 15, 'http://hyatt.com', '2015-08-05 00:07:02.406982', '2015-08-05 00:07:02.406982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (878, 15, 'http://metzking.com', '2015-08-05 00:07:02.408092', '2015-08-05 00:07:02.408092', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (879, 15, 'http://mohr.com', '2015-08-05 00:07:02.409394', '2015-08-05 00:07:02.409394', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (880, 15, 'http://beckerterry.info', '2015-08-05 00:07:02.41194', '2015-08-05 00:07:02.41194', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (881, 15, 'http://littlewindler.org', '2015-08-05 00:07:02.41397', '2015-08-05 00:07:02.41397', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (882, 15, 'http://bode.org', '2015-08-05 00:07:02.415103', '2015-08-05 00:07:02.415103', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (883, 15, 'http://schulist.net', '2015-08-05 00:07:02.416428', '2015-08-05 00:07:02.416428', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (884, 15, 'http://kohler.net', '2015-08-05 00:07:02.417738', '2015-08-05 00:07:02.417738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (885, 15, 'http://considine.com', '2015-08-05 00:07:02.418815', '2015-08-05 00:07:02.418815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (886, 15, 'http://weimann.biz', '2015-08-05 00:07:02.420063', '2015-08-05 00:07:02.420063', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (887, 15, 'http://johns.biz', '2015-08-05 00:07:02.421518', '2015-08-05 00:07:02.421518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (888, 15, 'http://bashirianprosacco.org', '2015-08-05 00:07:02.422919', '2015-08-05 00:07:02.422919', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (889, 15, 'http://sauerdickens.org', '2015-08-05 00:07:02.424349', '2015-08-05 00:07:02.424349', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (890, 15, 'http://robeljacobs.info', '2015-08-05 00:07:02.425682', '2015-08-05 00:07:02.425682', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (891, 15, 'http://howe.net', '2015-08-05 00:07:02.426953', '2015-08-05 00:07:02.426953', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (892, 15, 'http://tremblay.info', '2015-08-05 00:07:02.428331', '2015-08-05 00:07:02.428331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (893, 15, 'http://kirlin.net', '2015-08-05 00:07:02.429503', '2015-08-05 00:07:02.429503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (894, 15, 'http://stromandurgan.org', '2015-08-05 00:07:02.430777', '2015-08-05 00:07:02.430777', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (895, 15, 'http://boyle.com', '2015-08-05 00:07:02.43189', '2015-08-05 00:07:02.43189', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (896, 15, 'http://grantokeefe.net', '2015-08-05 00:07:02.433038', '2015-08-05 00:07:02.433038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (897, 15, 'http://runolfon.info', '2015-08-05 00:07:02.434217', '2015-08-05 00:07:02.434217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (898, 15, 'http://feest.biz', '2015-08-05 00:07:02.43527', '2015-08-05 00:07:02.43527', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (899, 15, 'http://kunze.name', '2015-08-05 00:07:02.436357', '2015-08-05 00:07:02.436357', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (900, 15, 'http://ratke.com', '2015-08-05 00:07:02.437459', '2015-08-05 00:07:02.437459', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (901, 15, 'http://keeling.name', '2015-08-05 00:07:02.438515', '2015-08-05 00:07:02.438515', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (902, 15, 'http://ryan.com', '2015-08-05 00:07:02.439518', '2015-08-05 00:07:02.439518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (903, 15, 'http://kohettinger.org', '2015-08-05 00:07:02.442012', '2015-08-05 00:07:02.442012', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (904, 15, 'http://hansen.name', '2015-08-05 00:07:02.444132', '2015-08-05 00:07:02.444132', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (905, 15, 'http://heelmitchell.com', '2015-08-05 00:07:02.445247', '2015-08-05 00:07:02.445247', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (906, 15, 'http://nikolaus.net', '2015-08-05 00:07:02.44665', '2015-08-05 00:07:02.44665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (907, 15, 'http://schmittullrich.net', '2015-08-05 00:07:02.447914', '2015-08-05 00:07:02.447914', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (908, 15, 'http://kohlerdonnelly.org', '2015-08-05 00:07:02.449321', '2015-08-05 00:07:02.449321', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (909, 16, 'http://wintheiser.biz', '2015-08-05 00:07:02.585919', '2015-08-05 00:07:02.585919', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (910, 16, 'http://white.info', '2015-08-05 00:07:02.587353', '2015-08-05 00:07:02.587353', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (911, 16, 'http://graham.biz', '2015-08-05 00:07:02.588773', '2015-08-05 00:07:02.588773', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (912, 16, 'http://jaskolski.com', '2015-08-05 00:07:02.59018', '2015-08-05 00:07:02.59018', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (913, 16, 'http://pacocha.info', '2015-08-05 00:07:02.591557', '2015-08-05 00:07:02.591557', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (914, 16, 'http://dickinson.com', '2015-08-05 00:07:02.592926', '2015-08-05 00:07:02.592926', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (915, 16, 'http://mayerhalvorson.info', '2015-08-05 00:07:02.594185', '2015-08-05 00:07:02.594185', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (916, 16, 'http://will.info', '2015-08-05 00:07:02.595557', '2015-08-05 00:07:02.595557', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (917, 16, 'http://wyman.org', '2015-08-05 00:07:02.596749', '2015-08-05 00:07:02.596749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (918, 16, 'http://waelchi.name', '2015-08-05 00:07:02.598358', '2015-08-05 00:07:02.598358', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (919, 16, 'http://feest.net', '2015-08-05 00:07:02.599756', '2015-08-05 00:07:02.599756', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (920, 16, 'http://schmeler.biz', '2015-08-05 00:07:02.601119', '2015-08-05 00:07:02.601119', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (921, 16, 'http://bode.name', '2015-08-05 00:07:02.602301', '2015-08-05 00:07:02.602301', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (922, 16, 'http://armstrongdare.net', '2015-08-05 00:07:02.603523', '2015-08-05 00:07:02.603523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (923, 16, 'http://binsmante.info', '2015-08-05 00:07:02.604747', '2015-08-05 00:07:02.604747', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (924, 16, 'http://schultz.com', '2015-08-05 00:07:02.606073', '2015-08-05 00:07:02.606073', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (925, 16, 'http://schadenkirlin.com', '2015-08-05 00:07:02.607338', '2015-08-05 00:07:02.607338', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (926, 16, 'http://torp.com', '2015-08-05 00:07:02.608394', '2015-08-05 00:07:02.608394', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (927, 16, 'http://wehnerwaelchi.name', '2015-08-05 00:07:02.60955', '2015-08-05 00:07:02.60955', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (928, 16, 'http://hansen.name', '2015-08-05 00:07:02.611873', '2015-08-05 00:07:02.611873', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (929, 16, 'http://okon.biz', '2015-08-05 00:07:02.614165', '2015-08-05 00:07:02.614165', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (930, 16, 'http://corkery.net', '2015-08-05 00:07:02.615623', '2015-08-05 00:07:02.615623', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (931, 16, 'http://schamberger.org', '2015-08-05 00:07:02.616927', '2015-08-05 00:07:02.616927', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (932, 16, 'http://hintz.com', '2015-08-05 00:07:02.618145', '2015-08-05 00:07:02.618145', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (933, 16, 'http://lebsackboyle.org', '2015-08-05 00:07:02.61944', '2015-08-05 00:07:02.61944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (934, 16, 'http://rolfson.biz', '2015-08-05 00:07:02.620824', '2015-08-05 00:07:02.620824', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (935, 16, 'http://jaskolski.info', '2015-08-05 00:07:02.621987', '2015-08-05 00:07:02.621987', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (936, 16, 'http://treutel.info', '2015-08-05 00:07:02.623109', '2015-08-05 00:07:02.623109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (937, 16, 'http://oconnell.biz', '2015-08-05 00:07:02.624235', '2015-08-05 00:07:02.624235', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (938, 16, 'http://leuschkehayes.name', '2015-08-05 00:07:02.625462', '2015-08-05 00:07:02.625462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (939, 16, 'http://morietteolson.com', '2015-08-05 00:07:02.626632', '2015-08-05 00:07:02.626632', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (940, 16, 'http://beckermuller.net', '2015-08-05 00:07:02.627804', '2015-08-05 00:07:02.627804', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (941, 16, 'http://sanford.net', '2015-08-05 00:07:02.629011', '2015-08-05 00:07:02.629011', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (942, 16, 'http://lynch.org', '2015-08-05 00:07:02.630255', '2015-08-05 00:07:02.630255', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (943, 16, 'http://littlemayert.org', '2015-08-05 00:07:02.631454', '2015-08-05 00:07:02.631454', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (944, 16, 'http://bogan.name', '2015-08-05 00:07:02.632627', '2015-08-05 00:07:02.632627', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (945, 16, 'http://mann.com', '2015-08-05 00:07:02.633902', '2015-08-05 00:07:02.633902', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (946, 16, 'http://schneidermosciski.info', '2015-08-05 00:07:02.63512', '2015-08-05 00:07:02.63512', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (947, 16, 'http://fahey.com', '2015-08-05 00:07:02.636451', '2015-08-05 00:07:02.636451', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (948, 16, 'http://okonhilpert.com', '2015-08-05 00:07:02.637769', '2015-08-05 00:07:02.637769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (949, 16, 'http://sauer.info', '2015-08-05 00:07:02.639035', '2015-08-05 00:07:02.639035', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (950, 16, 'http://heathcote.name', '2015-08-05 00:07:02.640236', '2015-08-05 00:07:02.640236', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (951, 16, 'http://thompson.name', '2015-08-05 00:07:02.642212', '2015-08-05 00:07:02.642212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (952, 16, 'http://weimann.com', '2015-08-05 00:07:02.64353', '2015-08-05 00:07:02.64353', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (953, 16, 'http://macejkovic.biz', '2015-08-05 00:07:02.64482', '2015-08-05 00:07:02.64482', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (954, 16, 'http://bruenlangworth.com', '2015-08-05 00:07:02.646086', '2015-08-05 00:07:02.646086', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (955, 16, 'http://pfannerstilljohnston.com', '2015-08-05 00:07:02.647276', '2015-08-05 00:07:02.647276', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (956, 16, 'http://lindgren.biz', '2015-08-05 00:07:02.648402', '2015-08-05 00:07:02.648402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (957, 16, 'http://lueilwitz.info', '2015-08-05 00:07:02.649538', '2015-08-05 00:07:02.649538', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (958, 16, 'http://keebler.name', '2015-08-05 00:07:02.650557', '2015-08-05 00:07:02.650557', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (959, 16, 'http://rogahn.name', '2015-08-05 00:07:02.651556', '2015-08-05 00:07:02.651556', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (960, 16, 'http://harvey.biz', '2015-08-05 00:07:02.652593', '2015-08-05 00:07:02.652593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (961, 16, 'http://williamsonkreiger.org', '2015-08-05 00:07:02.653595', '2015-08-05 00:07:02.653595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (962, 16, 'http://kilback.name', '2015-08-05 00:07:02.654611', '2015-08-05 00:07:02.654611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (963, 16, 'http://rosenbaum.net', '2015-08-05 00:07:02.655638', '2015-08-05 00:07:02.655638', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (964, 16, 'http://boganferry.com', '2015-08-05 00:07:02.65665', '2015-08-05 00:07:02.65665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (965, 16, 'http://schmeler.com', '2015-08-05 00:07:02.657631', '2015-08-05 00:07:02.657631', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (966, 16, 'http://larkin.info', '2015-08-05 00:07:02.658614', '2015-08-05 00:07:02.658614', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (967, 16, 'http://towne.biz', '2015-08-05 00:07:02.659841', '2015-08-05 00:07:02.659841', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (968, 16, 'http://christiansen.biz', '2015-08-05 00:07:02.661225', '2015-08-05 00:07:02.661225', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (969, 16, 'http://bartell.org', '2015-08-05 00:07:02.662543', '2015-08-05 00:07:02.662543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (970, 16, 'http://mayerkunze.biz', '2015-08-05 00:07:02.663843', '2015-08-05 00:07:02.663843', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (971, 16, 'http://orntremblay.info', '2015-08-05 00:07:02.665093', '2015-08-05 00:07:02.665093', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (972, 16, 'http://runte.info', '2015-08-05 00:07:02.666203', '2015-08-05 00:07:02.666203', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (973, 16, 'http://smitham.info', '2015-08-05 00:07:02.667429', '2015-08-05 00:07:02.667429', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (974, 16, 'http://wisozk.net', '2015-08-05 00:07:02.668639', '2015-08-05 00:07:02.668639', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (975, 16, 'http://bradtke.net', '2015-08-05 00:07:02.669863', '2015-08-05 00:07:02.669863', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (976, 16, 'http://schuster.org', '2015-08-05 00:07:02.671878', '2015-08-05 00:07:02.671878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (977, 16, 'http://gleichner.com', '2015-08-05 00:07:02.673738', '2015-08-05 00:07:02.673738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (978, 16, 'http://kuhlman.biz', '2015-08-05 00:07:02.675065', '2015-08-05 00:07:02.675065', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (979, 16, 'http://jakubowski.net', '2015-08-05 00:07:02.676459', '2015-08-05 00:07:02.676459', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (980, 16, 'http://oberbrunner.info', '2015-08-05 00:07:02.677827', '2015-08-05 00:07:02.677827', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (981, 16, 'http://donnelly.biz', '2015-08-05 00:07:02.679143', '2015-08-05 00:07:02.679143', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (982, 16, 'http://harber.net', '2015-08-05 00:07:02.680325', '2015-08-05 00:07:02.680325', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (983, 16, 'http://medhurst.net', '2015-08-05 00:07:02.681462', '2015-08-05 00:07:02.681462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (984, 16, 'http://hilpert.com', '2015-08-05 00:07:02.682588', '2015-08-05 00:07:02.682588', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (985, 16, 'http://barrowsmonahan.org', '2015-08-05 00:07:02.683636', '2015-08-05 00:07:02.683636', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (986, 16, 'http://keebler.info', '2015-08-05 00:07:02.684825', '2015-08-05 00:07:02.684825', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (987, 16, 'http://zboncak.com', '2015-08-05 00:07:02.686147', '2015-08-05 00:07:02.686147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (988, 16, 'http://hackett.org', '2015-08-05 00:07:02.687335', '2015-08-05 00:07:02.687335', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (989, 16, 'http://langosh.name', '2015-08-05 00:07:02.688513', '2015-08-05 00:07:02.688513', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (990, 16, 'http://kleinswaniawski.biz', '2015-08-05 00:07:02.689559', '2015-08-05 00:07:02.689559', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (991, 16, 'http://deckowrodriguez.biz', '2015-08-05 00:07:02.690652', '2015-08-05 00:07:02.690652', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (992, 16, 'http://kuhlman.name', '2015-08-05 00:07:02.691665', '2015-08-05 00:07:02.691665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (993, 16, 'http://sawayn.biz', '2015-08-05 00:07:02.692721', '2015-08-05 00:07:02.692721', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (994, 16, 'http://uptonrowe.info', '2015-08-05 00:07:02.69376', '2015-08-05 00:07:02.69376', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (995, 16, 'http://rohandurgan.com', '2015-08-05 00:07:02.694813', '2015-08-05 00:07:02.694813', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (996, 16, 'http://breitenberg.name', '2015-08-05 00:07:02.695936', '2015-08-05 00:07:02.695936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (997, 16, 'http://bayergerlach.com', '2015-08-05 00:07:02.69721', '2015-08-05 00:07:02.69721', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (998, 16, 'http://lynch.net', '2015-08-05 00:07:02.698241', '2015-08-05 00:07:02.698241', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (999, 16, 'http://nader.info', '2015-08-05 00:07:02.699241', '2015-08-05 00:07:02.699241', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1000, 16, 'http://purdywill.name', '2015-08-05 00:07:02.7027', '2015-08-05 00:07:02.7027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1001, 16, 'http://feil.com', '2015-08-05 00:07:02.705941', '2015-08-05 00:07:02.705941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1002, 16, 'http://leuschke.com', '2015-08-05 00:07:02.707386', '2015-08-05 00:07:02.707386', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1003, 16, 'http://towne.org', '2015-08-05 00:07:02.708697', '2015-08-05 00:07:02.708697', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1004, 16, 'http://stiedemannjohns.name', '2015-08-05 00:07:02.710211', '2015-08-05 00:07:02.710211', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1005, 16, 'http://heidenreichjacobson.org', '2015-08-05 00:07:02.717101', '2015-08-05 00:07:02.717101', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1006, 16, 'http://champlinkulas.org', '2015-08-05 00:07:02.718472', '2015-08-05 00:07:02.718472', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1007, 17, 'http://murray.com', '2015-08-05 00:07:02.832171', '2015-08-05 00:07:02.832171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1008, 17, 'http://harber.net', '2015-08-05 00:07:02.83348', '2015-08-05 00:07:02.83348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1009, 17, 'http://miller.net', '2015-08-05 00:07:02.834743', '2015-08-05 00:07:02.834743', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1010, 17, 'http://romaguera.info', '2015-08-05 00:07:02.836067', '2015-08-05 00:07:02.836067', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1011, 17, 'http://bradtke.net', '2015-08-05 00:07:02.837393', '2015-08-05 00:07:02.837393', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1012, 17, 'http://wittingkertzmann.biz', '2015-08-05 00:07:02.838716', '2015-08-05 00:07:02.838716', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1013, 17, 'http://spencerullrich.biz', '2015-08-05 00:07:02.840025', '2015-08-05 00:07:02.840025', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1014, 17, 'http://lueilwitzthiel.org', '2015-08-05 00:07:02.841364', '2015-08-05 00:07:02.841364', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1015, 17, 'http://hammesbotsford.net', '2015-08-05 00:07:02.842563', '2015-08-05 00:07:02.842563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1016, 17, 'http://sipechaden.org', '2015-08-05 00:07:02.844118', '2015-08-05 00:07:02.844118', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1017, 17, 'http://gusikowski.name', '2015-08-05 00:07:02.845446', '2015-08-05 00:07:02.845446', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1018, 17, 'http://vonrueden.com', '2015-08-05 00:07:02.846595', '2015-08-05 00:07:02.846595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1019, 17, 'http://stoltenbergleuschke.net', '2015-08-05 00:07:02.847692', '2015-08-05 00:07:02.847692', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1020, 17, 'http://predovic.net', '2015-08-05 00:07:02.848977', '2015-08-05 00:07:02.848977', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1021, 17, 'http://andersonnader.org', '2015-08-05 00:07:02.850249', '2015-08-05 00:07:02.850249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1022, 17, 'http://feeney.biz', '2015-08-05 00:07:02.852262', '2015-08-05 00:07:02.852262', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1023, 17, 'http://schummbergstrom.biz', '2015-08-05 00:07:02.853515', '2015-08-05 00:07:02.853515', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1024, 17, 'http://vandervortbreitenberg.com', '2015-08-05 00:07:02.854621', '2015-08-05 00:07:02.854621', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1025, 17, 'http://reynoldsdurgan.biz', '2015-08-05 00:07:02.855702', '2015-08-05 00:07:02.855702', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1026, 17, 'http://langthompson.info', '2015-08-05 00:07:02.856972', '2015-08-05 00:07:02.856972', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1027, 17, 'http://bernier.net', '2015-08-05 00:07:02.858111', '2015-08-05 00:07:02.858111', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1028, 17, 'http://bergnaumemmerich.net', '2015-08-05 00:07:02.859385', '2015-08-05 00:07:02.859385', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1029, 17, 'http://cronin.name', '2015-08-05 00:07:02.860775', '2015-08-05 00:07:02.860775', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1030, 17, 'http://bogisichbreitenberg.name', '2015-08-05 00:07:02.862267', '2015-08-05 00:07:02.862267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1031, 17, 'http://hegmann.biz', '2015-08-05 00:07:02.863533', '2015-08-05 00:07:02.863533', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1032, 17, 'http://reichel.net', '2015-08-05 00:07:02.864847', '2015-08-05 00:07:02.864847', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1033, 17, 'http://gulgowskischoen.com', '2015-08-05 00:07:02.866069', '2015-08-05 00:07:02.866069', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1034, 17, 'http://wilkinson.info', '2015-08-05 00:07:02.8672', '2015-08-05 00:07:02.8672', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1035, 17, 'http://mclaughlin.org', '2015-08-05 00:07:02.868351', '2015-08-05 00:07:02.868351', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1036, 17, 'http://crona.com', '2015-08-05 00:07:02.869592', '2015-08-05 00:07:02.869592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1037, 17, 'http://dooleytremblay.biz', '2015-08-05 00:07:02.870792', '2015-08-05 00:07:02.870792', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1038, 17, 'http://denesik.name', '2015-08-05 00:07:02.871898', '2015-08-05 00:07:02.871898', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1039, 17, 'http://stantonkirlin.com', '2015-08-05 00:07:02.873162', '2015-08-05 00:07:02.873162', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1040, 17, 'http://hermistontillman.name', '2015-08-05 00:07:02.874439', '2015-08-05 00:07:02.874439', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1041, 17, 'http://beer.com', '2015-08-05 00:07:02.875791', '2015-08-05 00:07:02.875791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1042, 17, 'http://fadel.name', '2015-08-05 00:07:02.877147', '2015-08-05 00:07:02.877147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1043, 17, 'http://waters.net', '2015-08-05 00:07:02.878335', '2015-08-05 00:07:02.878335', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1044, 17, 'http://ebert.org', '2015-08-05 00:07:02.879481', '2015-08-05 00:07:02.879481', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1045, 17, 'http://beersimonis.net', '2015-08-05 00:07:02.881853', '2015-08-05 00:07:02.881853', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1046, 17, 'http://kemmer.info', '2015-08-05 00:07:02.88379', '2015-08-05 00:07:02.88379', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1047, 17, 'http://considinewill.com', '2015-08-05 00:07:02.884862', '2015-08-05 00:07:02.884862', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1048, 17, 'http://powlowski.net', '2015-08-05 00:07:02.885909', '2015-08-05 00:07:02.885909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1049, 17, 'http://romaguera.info', '2015-08-05 00:07:02.887039', '2015-08-05 00:07:02.887039', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1050, 17, 'http://hicklekutch.info', '2015-08-05 00:07:02.888137', '2015-08-05 00:07:02.888137', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1051, 17, 'http://mann.com', '2015-08-05 00:07:02.889334', '2015-08-05 00:07:02.889334', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1052, 17, 'http://gibson.net', '2015-08-05 00:07:02.890739', '2015-08-05 00:07:02.890739', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1053, 17, 'http://kuphaldickens.net', '2015-08-05 00:07:02.892141', '2015-08-05 00:07:02.892141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1054, 17, 'http://feil.biz', '2015-08-05 00:07:02.89363', '2015-08-05 00:07:02.89363', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1055, 17, 'http://schneider.net', '2015-08-05 00:07:02.894874', '2015-08-05 00:07:02.894874', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1056, 17, 'http://faymohr.name', '2015-08-05 00:07:02.896027', '2015-08-05 00:07:02.896027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1057, 17, 'http://ryan.org', '2015-08-05 00:07:02.897152', '2015-08-05 00:07:02.897152', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1058, 17, 'http://kling.name', '2015-08-05 00:07:02.898413', '2015-08-05 00:07:02.898413', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1059, 17, 'http://padberg.biz', '2015-08-05 00:07:02.899547', '2015-08-05 00:07:02.899547', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1060, 17, 'http://bogisichreynolds.info', '2015-08-05 00:07:02.900916', '2015-08-05 00:07:02.900916', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1061, 17, 'http://metzfeest.org', '2015-08-05 00:07:02.902012', '2015-08-05 00:07:02.902012', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1062, 17, 'http://grantvandervort.info', '2015-08-05 00:07:02.903415', '2015-08-05 00:07:02.903415', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1063, 17, 'http://crooktreich.name', '2015-08-05 00:07:02.904651', '2015-08-05 00:07:02.904651', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1064, 17, 'http://vonrueden.biz', '2015-08-05 00:07:02.905827', '2015-08-05 00:07:02.905827', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1065, 17, 'http://lang.name', '2015-08-05 00:07:02.907068', '2015-08-05 00:07:02.907068', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1066, 17, 'http://glover.com', '2015-08-05 00:07:02.90836', '2015-08-05 00:07:02.90836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1067, 17, 'http://stoltenberg.com', '2015-08-05 00:07:02.909455', '2015-08-05 00:07:02.909455', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1068, 17, 'http://kuhlmanwiza.biz', '2015-08-05 00:07:02.911953', '2015-08-05 00:07:02.911953', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1069, 17, 'http://ruecker.com', '2015-08-05 00:07:02.914874', '2015-08-05 00:07:02.914874', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1070, 17, 'http://baumbach.name', '2015-08-05 00:07:02.916119', '2015-08-05 00:07:02.916119', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1071, 17, 'http://kuhn.com', '2015-08-05 00:07:02.917459', '2015-08-05 00:07:02.917459', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1072, 17, 'http://lakin.name', '2015-08-05 00:07:02.918771', '2015-08-05 00:07:02.918771', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1073, 17, 'http://bergstrom.net', '2015-08-05 00:07:02.920025', '2015-08-05 00:07:02.920025', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1074, 17, 'http://feest.net', '2015-08-05 00:07:02.921477', '2015-08-05 00:07:02.921477', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1075, 17, 'http://carroll.net', '2015-08-05 00:07:02.922925', '2015-08-05 00:07:02.922925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1076, 17, 'http://goyette.org', '2015-08-05 00:07:02.924192', '2015-08-05 00:07:02.924192', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1077, 17, 'http://keeling.net', '2015-08-05 00:07:02.925316', '2015-08-05 00:07:02.925316', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1078, 17, 'http://gleason.info', '2015-08-05 00:07:02.926336', '2015-08-05 00:07:02.926336', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1079, 17, 'http://nikolaus.org', '2015-08-05 00:07:02.927344', '2015-08-05 00:07:02.927344', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1080, 17, 'http://schmidt.net', '2015-08-05 00:07:02.928396', '2015-08-05 00:07:02.928396', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1081, 17, 'http://schoen.biz', '2015-08-05 00:07:02.929546', '2015-08-05 00:07:02.929546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1082, 17, 'http://ruecker.name', '2015-08-05 00:07:02.930817', '2015-08-05 00:07:02.930817', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1083, 17, 'http://heidenreich.biz', '2015-08-05 00:07:02.931921', '2015-08-05 00:07:02.931921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1084, 17, 'http://huel.org', '2015-08-05 00:07:02.933007', '2015-08-05 00:07:02.933007', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1085, 18, 'http://goldner.info', '2015-08-05 00:07:03.58531', '2015-08-05 00:07:03.58531', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1086, 18, 'http://torp.org', '2015-08-05 00:07:03.586776', '2015-08-05 00:07:03.586776', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1087, 18, 'http://renner.org', '2015-08-05 00:07:03.588243', '2015-08-05 00:07:03.588243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1088, 18, 'http://von.biz', '2015-08-05 00:07:03.589694', '2015-08-05 00:07:03.589694', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1089, 18, 'http://raynorbauch.net', '2015-08-05 00:07:03.592096', '2015-08-05 00:07:03.592096', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1090, 18, 'http://powlowski.net', '2015-08-05 00:07:03.594376', '2015-08-05 00:07:03.594376', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1091, 18, 'http://kelermurphy.org', '2015-08-05 00:07:03.595851', '2015-08-05 00:07:03.595851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1092, 18, 'http://balistreri.com', '2015-08-05 00:07:03.597256', '2015-08-05 00:07:03.597256', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1093, 18, 'http://damore.biz', '2015-08-05 00:07:03.59841', '2015-08-05 00:07:03.59841', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1094, 18, 'http://pollich.com', '2015-08-05 00:07:03.599552', '2015-08-05 00:07:03.599552', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1095, 18, 'http://jerdelemke.name', '2015-08-05 00:07:03.600629', '2015-08-05 00:07:03.600629', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1096, 18, 'http://daugherty.biz', '2015-08-05 00:07:03.601911', '2015-08-05 00:07:03.601911', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1097, 18, 'http://ward.info', '2015-08-05 00:07:03.602994', '2015-08-05 00:07:03.602994', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1098, 18, 'http://hayes.biz', '2015-08-05 00:07:03.604141', '2015-08-05 00:07:03.604141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1099, 18, 'http://konopelski.org', '2015-08-05 00:07:03.605259', '2015-08-05 00:07:03.605259', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1100, 18, 'http://aufderhar.net', '2015-08-05 00:07:03.606299', '2015-08-05 00:07:03.606299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1101, 18, 'http://schultzadams.biz', '2015-08-05 00:07:03.607574', '2015-08-05 00:07:03.607574', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1102, 18, 'http://pfeffer.name', '2015-08-05 00:07:03.608648', '2015-08-05 00:07:03.608648', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1103, 18, 'http://schowalter.net', '2015-08-05 00:07:03.609768', '2015-08-05 00:07:03.609768', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1104, 18, 'http://west.org', '2015-08-05 00:07:03.611005', '2015-08-05 00:07:03.611005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1105, 18, 'http://altenwerth.org', '2015-08-05 00:07:03.612474', '2015-08-05 00:07:03.612474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1106, 18, 'http://boehm.net', '2015-08-05 00:07:03.613909', '2015-08-05 00:07:03.613909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1107, 18, 'http://rau.name', '2015-08-05 00:07:03.61529', '2015-08-05 00:07:03.61529', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1108, 18, 'http://kreiger.net', '2015-08-05 00:07:03.616689', '2015-08-05 00:07:03.616689', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1109, 18, 'http://stiedemann.name', '2015-08-05 00:07:03.617851', '2015-08-05 00:07:03.617851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1110, 18, 'http://tromp.net', '2015-08-05 00:07:03.618941', '2015-08-05 00:07:03.618941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1111, 18, 'http://lind.com', '2015-08-05 00:07:03.620085', '2015-08-05 00:07:03.620085', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1112, 18, 'http://raynor.biz', '2015-08-05 00:07:03.622015', '2015-08-05 00:07:03.622015', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1113, 18, 'http://konopelski.info', '2015-08-05 00:07:03.623183', '2015-08-05 00:07:03.623183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1114, 18, 'http://lueilwitzschmeler.biz', '2015-08-05 00:07:03.624398', '2015-08-05 00:07:03.624398', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1115, 18, 'http://schadennolan.info', '2015-08-05 00:07:03.625573', '2015-08-05 00:07:03.625573', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1116, 18, 'http://prosacco.org', '2015-08-05 00:07:03.626664', '2015-08-05 00:07:03.626664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1117, 18, 'http://connelly.biz', '2015-08-05 00:07:03.627989', '2015-08-05 00:07:03.627989', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1118, 18, 'http://barton.info', '2015-08-05 00:07:03.629294', '2015-08-05 00:07:03.629294', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1119, 18, 'http://pouroswisoky.biz', '2015-08-05 00:07:03.630506', '2015-08-05 00:07:03.630506', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1120, 18, 'http://ondrickagrimes.com', '2015-08-05 00:07:03.631612', '2015-08-05 00:07:03.631612', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1121, 18, 'http://simonis.biz', '2015-08-05 00:07:03.632985', '2015-08-05 00:07:03.632985', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1122, 18, 'http://ruel.name', '2015-08-05 00:07:03.634237', '2015-08-05 00:07:03.634237', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1123, 18, 'http://mcclure.info', '2015-08-05 00:07:03.635414', '2015-08-05 00:07:03.635414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1124, 18, 'http://swift.com', '2015-08-05 00:07:03.636631', '2015-08-05 00:07:03.636631', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1125, 18, 'http://reinger.biz', '2015-08-05 00:07:03.637848', '2015-08-05 00:07:03.637848', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1126, 18, 'http://dietrich.info', '2015-08-05 00:07:03.639047', '2015-08-05 00:07:03.639047', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1127, 18, 'http://jenkins.com', '2015-08-05 00:07:03.640202', '2015-08-05 00:07:03.640202', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1128, 19, 'http://mcglynn.info', '2015-08-05 00:07:06.946974', '2015-08-05 00:07:06.946974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1129, 19, 'http://bodedietrich.biz', '2015-08-05 00:07:06.948358', '2015-08-05 00:07:06.948358', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1130, 19, 'http://lefflerwolf.name', '2015-08-05 00:07:06.949621', '2015-08-05 00:07:06.949621', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1131, 19, 'http://corkery.org', '2015-08-05 00:07:06.950835', '2015-08-05 00:07:06.950835', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1132, 19, 'http://douglas.net', '2015-08-05 00:07:06.952154', '2015-08-05 00:07:06.952154', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1133, 19, 'http://andersonrogahn.com', '2015-08-05 00:07:06.95327', '2015-08-05 00:07:06.95327', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1134, 19, 'http://okeefe.name', '2015-08-05 00:07:06.954555', '2015-08-05 00:07:06.954555', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1135, 19, 'http://tremblayruel.biz', '2015-08-05 00:07:06.955925', '2015-08-05 00:07:06.955925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1136, 19, 'http://stanton.net', '2015-08-05 00:07:06.957372', '2015-08-05 00:07:06.957372', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1137, 19, 'http://volkman.name', '2015-08-05 00:07:06.958842', '2015-08-05 00:07:06.958842', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1138, 19, 'http://beer.name', '2015-08-05 00:07:06.960096', '2015-08-05 00:07:06.960096', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1139, 19, 'http://kunze.net', '2015-08-05 00:07:06.962179', '2015-08-05 00:07:06.962179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1140, 19, 'http://hartmannswift.net', '2015-08-05 00:07:06.963577', '2015-08-05 00:07:06.963577', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1141, 19, 'http://jacobisauer.net', '2015-08-05 00:07:06.965076', '2015-08-05 00:07:06.965076', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1142, 19, 'http://durgan.biz', '2015-08-05 00:07:06.966267', '2015-08-05 00:07:06.966267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1143, 19, 'http://mosciskifarrell.net', '2015-08-05 00:07:06.967418', '2015-08-05 00:07:06.967418', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1144, 19, 'http://bartellkertzmann.info', '2015-08-05 00:07:06.968696', '2015-08-05 00:07:06.968696', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1145, 19, 'http://stiedemannbraun.info', '2015-08-05 00:07:06.970198', '2015-08-05 00:07:06.970198', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1146, 19, 'http://schmidt.org', '2015-08-05 00:07:06.971602', '2015-08-05 00:07:06.971602', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1147, 19, 'http://langosh.biz', '2015-08-05 00:07:06.972908', '2015-08-05 00:07:06.972908', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1148, 19, 'http://gottlieb.name', '2015-08-05 00:07:06.974455', '2015-08-05 00:07:06.974455', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1149, 19, 'http://swift.com', '2015-08-05 00:07:06.975658', '2015-08-05 00:07:06.975658', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1150, 19, 'http://rippin.net', '2015-08-05 00:07:06.97691', '2015-08-05 00:07:06.97691', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1151, 19, 'http://barrows.com', '2015-08-05 00:07:06.978151', '2015-08-05 00:07:06.978151', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1152, 19, 'http://nitzsche.info', '2015-08-05 00:07:06.979239', '2015-08-05 00:07:06.979239', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1153, 19, 'http://okuneva.biz', '2015-08-05 00:07:06.980332', '2015-08-05 00:07:06.980332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1154, 19, 'http://lynchkerluke.net', '2015-08-05 00:07:06.98154', '2015-08-05 00:07:06.98154', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1155, 19, 'http://dietrichkohler.net', '2015-08-05 00:07:06.982842', '2015-08-05 00:07:06.982842', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1156, 19, 'http://nienow.org', '2015-08-05 00:07:06.984111', '2015-08-05 00:07:06.984111', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1157, 19, 'http://wiegand.biz', '2015-08-05 00:07:06.985367', '2015-08-05 00:07:06.985367', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1158, 19, 'http://wiegandkohler.org', '2015-08-05 00:07:06.986772', '2015-08-05 00:07:06.986772', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1159, 19, 'http://mills.info', '2015-08-05 00:07:06.987915', '2015-08-05 00:07:06.987915', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1160, 19, 'http://stamm.org', '2015-08-05 00:07:06.98917', '2015-08-05 00:07:06.98917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1161, 19, 'http://witting.org', '2015-08-05 00:07:06.991817', '2015-08-05 00:07:06.991817', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1162, 19, 'http://herzog.org', '2015-08-05 00:07:06.993869', '2015-08-05 00:07:06.993869', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1163, 19, 'http://hettinger.biz', '2015-08-05 00:07:06.995266', '2015-08-05 00:07:06.995266', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1164, 19, 'http://bahringerdavis.com', '2015-08-05 00:07:06.996665', '2015-08-05 00:07:06.996665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1165, 19, 'http://berniermaggio.name', '2015-08-05 00:07:06.997985', '2015-08-05 00:07:06.997985', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1166, 19, 'http://kautzer.biz', '2015-08-05 00:07:06.999182', '2015-08-05 00:07:06.999182', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1167, 19, 'http://bernhard.org', '2015-08-05 00:07:07.000435', '2015-08-05 00:07:07.000435', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1168, 19, 'http://wiegand.biz', '2015-08-05 00:07:07.001753', '2015-08-05 00:07:07.001753', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1169, 19, 'http://schuster.net', '2015-08-05 00:07:07.003049', '2015-08-05 00:07:07.003049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1170, 19, 'http://ziemann.org', '2015-08-05 00:07:07.004506', '2015-08-05 00:07:07.004506', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1171, 19, 'http://leannonflatley.net', '2015-08-05 00:07:07.006355', '2015-08-05 00:07:07.006355', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1172, 19, 'http://homenick.biz', '2015-08-05 00:07:07.007695', '2015-08-05 00:07:07.007695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1173, 19, 'http://okeefe.biz', '2015-08-05 00:07:07.008957', '2015-08-05 00:07:07.008957', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1174, 20, 'http://feil.com', '2015-08-05 00:07:07.137719', '2015-08-05 00:07:07.137719', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1175, 20, 'http://lesch.com', '2015-08-05 00:07:07.139056', '2015-08-05 00:07:07.139056', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1176, 20, 'http://goodwin.info', '2015-08-05 00:07:07.140341', '2015-08-05 00:07:07.140341', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1177, 20, 'http://sengerferry.name', '2015-08-05 00:07:07.141666', '2015-08-05 00:07:07.141666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1178, 20, 'http://spinka.com', '2015-08-05 00:07:07.142939', '2015-08-05 00:07:07.142939', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1179, 20, 'http://padberg.org', '2015-08-05 00:07:07.144038', '2015-08-05 00:07:07.144038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1180, 20, 'http://farrell.org', '2015-08-05 00:07:07.145331', '2015-08-05 00:07:07.145331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1181, 20, 'http://auer.org', '2015-08-05 00:07:07.146554', '2015-08-05 00:07:07.146554', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1182, 20, 'http://swaniawski.name', '2015-08-05 00:07:07.147995', '2015-08-05 00:07:07.147995', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1183, 20, 'http://prosacco.net', '2015-08-05 00:07:07.14957', '2015-08-05 00:07:07.14957', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1184, 20, 'http://hudsonlesch.name', '2015-08-05 00:07:07.15203', '2015-08-05 00:07:07.15203', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1185, 20, 'http://hilpert.info', '2015-08-05 00:07:07.154261', '2015-08-05 00:07:07.154261', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1186, 20, 'http://aufderhar.net', '2015-08-05 00:07:07.155754', '2015-08-05 00:07:07.155754', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1187, 20, 'http://kunzeroberts.org', '2015-08-05 00:07:07.157155', '2015-08-05 00:07:07.157155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1188, 20, 'http://hand.name', '2015-08-05 00:07:07.158469', '2015-08-05 00:07:07.158469', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1189, 20, 'http://johnson.org', '2015-08-05 00:07:07.159883', '2015-08-05 00:07:07.159883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1190, 20, 'http://cormier.biz', '2015-08-05 00:07:07.161178', '2015-08-05 00:07:07.161178', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1191, 20, 'http://ankunding.net', '2015-08-05 00:07:07.162406', '2015-08-05 00:07:07.162406', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1192, 20, 'http://harber.biz', '2015-08-05 00:07:07.163734', '2015-08-05 00:07:07.163734', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1193, 20, 'http://friesen.info', '2015-08-05 00:07:07.165188', '2015-08-05 00:07:07.165188', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1194, 20, 'http://dickijerde.name', '2015-08-05 00:07:07.1664', '2015-08-05 00:07:07.1664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1195, 20, 'http://franecki.com', '2015-08-05 00:07:07.16836', '2015-08-05 00:07:07.16836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1196, 20, 'http://lubowitz.name', '2015-08-05 00:07:07.169523', '2015-08-05 00:07:07.169523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1197, 20, 'http://kuhnbechtelar.info', '2015-08-05 00:07:07.170592', '2015-08-05 00:07:07.170592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1198, 20, 'http://purdymcdermott.info', '2015-08-05 00:07:07.171872', '2015-08-05 00:07:07.171872', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1199, 20, 'http://hagenes.com', '2015-08-05 00:07:07.172951', '2015-08-05 00:07:07.172951', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1200, 20, 'http://leannon.net', '2015-08-05 00:07:07.174199', '2015-08-05 00:07:07.174199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1201, 20, 'http://jacobshuel.com', '2015-08-05 00:07:07.175517', '2015-08-05 00:07:07.175517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1202, 20, 'http://wiegandlabadie.net', '2015-08-05 00:07:07.176788', '2015-08-05 00:07:07.176788', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1203, 20, 'http://kirlinbayer.net', '2015-08-05 00:07:07.178005', '2015-08-05 00:07:07.178005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1204, 20, 'http://romagueracorwin.com', '2015-08-05 00:07:07.179142', '2015-08-05 00:07:07.179142', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1205, 20, 'http://yundt.net', '2015-08-05 00:07:07.181741', '2015-08-05 00:07:07.181741', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1206, 20, 'http://crooks.org', '2015-08-05 00:07:07.182895', '2015-08-05 00:07:07.182895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1207, 20, 'http://dickens.net', '2015-08-05 00:07:07.184017', '2015-08-05 00:07:07.184017', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1208, 20, 'http://zemlak.net', '2015-08-05 00:07:07.185114', '2015-08-05 00:07:07.185114', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1209, 20, 'http://yundtcorkery.net', '2015-08-05 00:07:07.186203', '2015-08-05 00:07:07.186203', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1210, 20, 'http://hand.name', '2015-08-05 00:07:07.187692', '2015-08-05 00:07:07.187692', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1211, 20, 'http://marvin.net', '2015-08-05 00:07:07.189038', '2015-08-05 00:07:07.189038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1212, 20, 'http://cartwright.org', '2015-08-05 00:07:07.190199', '2015-08-05 00:07:07.190199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1213, 20, 'http://pouroswintheiser.biz', '2015-08-05 00:07:07.191264', '2015-08-05 00:07:07.191264', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1214, 20, 'http://hellerlarkin.com', '2015-08-05 00:07:07.192366', '2015-08-05 00:07:07.192366', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1215, 21, 'http://brakus.com', '2015-08-05 00:07:08.068581', '2015-08-05 00:07:08.068581', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1216, 21, 'http://lubowitzpredovic.com', '2015-08-05 00:07:08.070022', '2015-08-05 00:07:08.070022', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1217, 21, 'http://okonstehr.biz', '2015-08-05 00:07:08.071364', '2015-08-05 00:07:08.071364', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1218, 21, 'http://watsicakuhlman.net', '2015-08-05 00:07:08.07265', '2015-08-05 00:07:08.07265', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1219, 21, 'http://mitchellkshlerin.com', '2015-08-05 00:07:08.073944', '2015-08-05 00:07:08.073944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1220, 21, 'http://feest.net', '2015-08-05 00:07:08.075195', '2015-08-05 00:07:08.075195', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1221, 21, 'http://hodkiewicz.name', '2015-08-05 00:07:08.076405', '2015-08-05 00:07:08.076405', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1222, 21, 'http://mckenzievandervort.name', '2015-08-05 00:07:08.077832', '2015-08-05 00:07:08.077832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1223, 21, 'http://davis.info', '2015-08-05 00:07:08.079056', '2015-08-05 00:07:08.079056', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1224, 21, 'http://cartwright.com', '2015-08-05 00:07:08.080374', '2015-08-05 00:07:08.080374', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1225, 21, 'http://kuhlman.org', '2015-08-05 00:07:08.081957', '2015-08-05 00:07:08.081957', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1226, 21, 'http://olsonmckenzie.info', '2015-08-05 00:07:08.083383', '2015-08-05 00:07:08.083383', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1227, 21, 'http://dachbauch.net', '2015-08-05 00:07:08.084871', '2015-08-05 00:07:08.084871', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1228, 21, 'http://jenkins.biz', '2015-08-05 00:07:08.086191', '2015-08-05 00:07:08.086191', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1229, 21, 'http://lind.info', '2015-08-05 00:07:08.08734', '2015-08-05 00:07:08.08734', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1230, 21, 'http://cain.name', '2015-08-05 00:07:08.088708', '2015-08-05 00:07:08.088708', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1231, 21, 'http://boyle.net', '2015-08-05 00:07:08.089931', '2015-08-05 00:07:08.089931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1232, 21, 'http://yostschuster.org', '2015-08-05 00:07:08.091164', '2015-08-05 00:07:08.091164', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1233, 21, 'http://botsford.net', '2015-08-05 00:07:08.092229', '2015-08-05 00:07:08.092229', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1234, 21, 'http://davisbosco.biz', '2015-08-05 00:07:08.093359', '2015-08-05 00:07:08.093359', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1235, 21, 'http://schadenferry.biz', '2015-08-05 00:07:08.094534', '2015-08-05 00:07:08.094534', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1236, 21, 'http://schulistjakubowski.org', '2015-08-05 00:07:08.09585', '2015-08-05 00:07:08.09585', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1237, 21, 'http://tillmanpagac.biz', '2015-08-05 00:07:08.097191', '2015-08-05 00:07:08.097191', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1238, 21, 'http://schuppe.com', '2015-08-05 00:07:08.098539', '2015-08-05 00:07:08.098539', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1239, 21, 'http://hagenes.org', '2015-08-05 00:07:08.099879', '2015-08-05 00:07:08.099879', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1240, 21, 'http://kris.org', '2015-08-05 00:07:08.101976', '2015-08-05 00:07:08.101976', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1241, 21, 'http://batz.org', '2015-08-05 00:07:08.104232', '2015-08-05 00:07:08.104232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1242, 21, 'http://kuvalis.org', '2015-08-05 00:07:08.105615', '2015-08-05 00:07:08.105615', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1243, 21, 'http://hegmann.name', '2015-08-05 00:07:08.10685', '2015-08-05 00:07:08.10685', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1244, 21, 'http://eichmann.org', '2015-08-05 00:07:08.108086', '2015-08-05 00:07:08.108086', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1245, 21, 'http://gottlieb.net', '2015-08-05 00:07:08.109416', '2015-08-05 00:07:08.109416', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1246, 21, 'http://friesen.name', '2015-08-05 00:07:08.110784', '2015-08-05 00:07:08.110784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1247, 21, 'http://lang.net', '2015-08-05 00:07:08.112238', '2015-08-05 00:07:08.112238', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1248, 21, 'http://hand.info', '2015-08-05 00:07:08.113531', '2015-08-05 00:07:08.113531', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1249, 21, 'http://abernathy.net', '2015-08-05 00:07:08.114797', '2015-08-05 00:07:08.114797', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1250, 21, 'http://hintz.org', '2015-08-05 00:07:08.115915', '2015-08-05 00:07:08.115915', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1251, 21, 'http://ryan.org', '2015-08-05 00:07:08.117036', '2015-08-05 00:07:08.117036', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1252, 21, 'http://keebler.com', '2015-08-05 00:07:08.118253', '2015-08-05 00:07:08.118253', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1253, 21, 'http://bodeschroeder.org', '2015-08-05 00:07:08.119555', '2015-08-05 00:07:08.119555', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1254, 21, 'http://hoeger.biz', '2015-08-05 00:07:08.120764', '2015-08-05 00:07:08.120764', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1255, 21, 'http://lehnerlarson.net', '2015-08-05 00:07:08.122001', '2015-08-05 00:07:08.122001', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1256, 21, 'http://nader.net', '2015-08-05 00:07:08.123178', '2015-08-05 00:07:08.123178', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1257, 21, 'http://purdy.org', '2015-08-05 00:07:08.124262', '2015-08-05 00:07:08.124262', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1258, 21, 'http://erdman.name', '2015-08-05 00:07:08.125259', '2015-08-05 00:07:08.125259', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1259, 21, 'http://price.biz', '2015-08-05 00:07:08.126341', '2015-08-05 00:07:08.126341', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1260, 21, 'http://schultz.org', '2015-08-05 00:07:08.127729', '2015-08-05 00:07:08.127729', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1261, 21, 'http://kleinstreich.org', '2015-08-05 00:07:08.129075', '2015-08-05 00:07:08.129075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1262, 21, 'http://hickleluettgen.biz', '2015-08-05 00:07:08.130185', '2015-08-05 00:07:08.130185', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1263, 21, 'http://fishersteuber.org', '2015-08-05 00:07:08.132308', '2015-08-05 00:07:08.132308', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1264, 21, 'http://zboncak.net', '2015-08-05 00:07:08.133651', '2015-08-05 00:07:08.133651', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1265, 21, 'http://ortizbashirian.com', '2015-08-05 00:07:08.134911', '2015-08-05 00:07:08.134911', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1266, 21, 'http://farrell.com', '2015-08-05 00:07:08.136141', '2015-08-05 00:07:08.136141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1267, 21, 'http://doylekautzer.com', '2015-08-05 00:07:08.137443', '2015-08-05 00:07:08.137443', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1268, 21, 'http://bins.name', '2015-08-05 00:07:08.138678', '2015-08-05 00:07:08.138678', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1269, 21, 'http://kilback.com', '2015-08-05 00:07:08.139795', '2015-08-05 00:07:08.139795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1270, 21, 'http://metzrolfson.name', '2015-08-05 00:07:08.141116', '2015-08-05 00:07:08.141116', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1271, 21, 'http://cain.biz', '2015-08-05 00:07:08.142467', '2015-08-05 00:07:08.142467', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1272, 21, 'http://goyettelynch.name', '2015-08-05 00:07:08.143654', '2015-08-05 00:07:08.143654', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1273, 21, 'http://langbednar.net', '2015-08-05 00:07:08.144796', '2015-08-05 00:07:08.144796', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1274, 21, 'http://murphyspinka.info', '2015-08-05 00:07:08.145884', '2015-08-05 00:07:08.145884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1275, 22, 'http://goyette.net', '2015-08-05 00:07:08.646062', '2015-08-05 00:07:08.646062', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1276, 22, 'http://williamson.biz', '2015-08-05 00:07:08.64773', '2015-08-05 00:07:08.64773', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1277, 22, 'http://grantbuckridge.net', '2015-08-05 00:07:08.64928', '2015-08-05 00:07:08.64928', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1278, 22, 'http://dietrichmacgyver.com', '2015-08-05 00:07:08.650611', '2015-08-05 00:07:08.650611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1279, 22, 'http://sanfordosinski.name', '2015-08-05 00:07:08.652054', '2015-08-05 00:07:08.652054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1280, 22, 'http://metz.org', '2015-08-05 00:07:08.65339', '2015-08-05 00:07:08.65339', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1281, 22, 'http://lakin.biz', '2015-08-05 00:07:08.654741', '2015-08-05 00:07:08.654741', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1282, 22, 'http://bailey.com', '2015-08-05 00:07:08.655918', '2015-08-05 00:07:08.655918', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1283, 22, 'http://sauer.net', '2015-08-05 00:07:08.657328', '2015-08-05 00:07:08.657328', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1284, 22, 'http://smith.org', '2015-08-05 00:07:08.659092', '2015-08-05 00:07:08.659092', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1285, 22, 'http://hammes.com', '2015-08-05 00:07:08.661906', '2015-08-05 00:07:08.661906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1286, 22, 'http://davis.com', '2015-08-05 00:07:08.664021', '2015-08-05 00:07:08.664021', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1287, 22, 'http://cruickshank.biz', '2015-08-05 00:07:08.665321', '2015-08-05 00:07:08.665321', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1288, 22, 'http://yundtkoepp.com', '2015-08-05 00:07:08.666551', '2015-08-05 00:07:08.666551', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1289, 22, 'http://schamberger.org', '2015-08-05 00:07:08.667803', '2015-08-05 00:07:08.667803', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1290, 22, 'http://conn.biz', '2015-08-05 00:07:08.669078', '2015-08-05 00:07:08.669078', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1291, 22, 'http://wiza.biz', '2015-08-05 00:07:08.670391', '2015-08-05 00:07:08.670391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1292, 22, 'http://abshire.info', '2015-08-05 00:07:08.671818', '2015-08-05 00:07:08.671818', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1293, 22, 'http://farrell.info', '2015-08-05 00:07:08.672979', '2015-08-05 00:07:08.672979', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1294, 22, 'http://heller.info', '2015-08-05 00:07:08.674193', '2015-08-05 00:07:08.674193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1295, 22, 'http://maggio.com', '2015-08-05 00:07:08.675548', '2015-08-05 00:07:08.675548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1296, 22, 'http://littlerunolfsdottir.org', '2015-08-05 00:07:08.676857', '2015-08-05 00:07:08.676857', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1297, 22, 'http://bruendoyle.name', '2015-08-05 00:07:08.677991', '2015-08-05 00:07:08.677991', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1298, 22, 'http://kochconroy.net', '2015-08-05 00:07:08.679141', '2015-08-05 00:07:08.679141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1299, 22, 'http://nolan.com', '2015-08-05 00:07:08.68043', '2015-08-05 00:07:08.68043', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1300, 22, 'http://heidenreichjones.info', '2015-08-05 00:07:08.681677', '2015-08-05 00:07:08.681677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1301, 22, 'http://beahan.org', '2015-08-05 00:07:08.683004', '2015-08-05 00:07:08.683004', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1302, 22, 'http://cummerata.com', '2015-08-05 00:07:08.684201', '2015-08-05 00:07:08.684201', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1303, 22, 'http://moriette.org', '2015-08-05 00:07:08.685437', '2015-08-05 00:07:08.685437', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1304, 22, 'http://bernhard.name', '2015-08-05 00:07:08.686653', '2015-08-05 00:07:08.686653', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1305, 22, 'http://bogisichkuhlman.info', '2015-08-05 00:07:08.687965', '2015-08-05 00:07:08.687965', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1306, 22, 'http://gleason.biz', '2015-08-05 00:07:08.689229', '2015-08-05 00:07:08.689229', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1307, 22, 'http://keeling.net', '2015-08-05 00:07:08.691876', '2015-08-05 00:07:08.691876', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1308, 22, 'http://satterfieldmraz.biz', '2015-08-05 00:07:08.693872', '2015-08-05 00:07:08.693872', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1309, 22, 'http://franecki.biz', '2015-08-05 00:07:08.695267', '2015-08-05 00:07:08.695267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1310, 22, 'http://lockman.info', '2015-08-05 00:07:08.696626', '2015-08-05 00:07:08.696626', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1311, 22, 'http://effertz.name', '2015-08-05 00:07:08.697993', '2015-08-05 00:07:08.697993', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1312, 22, 'http://kovacek.com', '2015-08-05 00:07:08.699303', '2015-08-05 00:07:08.699303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1313, 22, 'http://wizamaggio.biz', '2015-08-05 00:07:08.700417', '2015-08-05 00:07:08.700417', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1314, 22, 'http://oberbrunnervon.com', '2015-08-05 00:07:08.702359', '2015-08-05 00:07:08.702359', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1315, 22, 'http://lehner.info', '2015-08-05 00:07:08.703703', '2015-08-05 00:07:08.703703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1316, 22, 'http://white.info', '2015-08-05 00:07:08.705052', '2015-08-05 00:07:08.705052', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1317, 22, 'http://treutel.info', '2015-08-05 00:07:08.706851', '2015-08-05 00:07:08.706851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1318, 22, 'http://treutelschoen.info', '2015-08-05 00:07:08.708162', '2015-08-05 00:07:08.708162', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1319, 22, 'http://oconnell.com', '2015-08-05 00:07:08.709454', '2015-08-05 00:07:08.709454', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1320, 22, 'http://crooks.org', '2015-08-05 00:07:08.710681', '2015-08-05 00:07:08.710681', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1321, 22, 'http://wyman.biz', '2015-08-05 00:07:08.71207', '2015-08-05 00:07:08.71207', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1322, 22, 'http://bogisichcarroll.net', '2015-08-05 00:07:08.713193', '2015-08-05 00:07:08.713193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1323, 22, 'http://roob.org', '2015-08-05 00:07:08.714217', '2015-08-05 00:07:08.714217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1324, 22, 'http://will.com', '2015-08-05 00:07:08.715247', '2015-08-05 00:07:08.715247', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1325, 22, 'http://labadievonrueden.com', '2015-08-05 00:07:08.716403', '2015-08-05 00:07:08.716403', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1326, 22, 'http://reynolds.net', '2015-08-05 00:07:08.717622', '2015-08-05 00:07:08.717622', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1327, 22, 'http://wymanjohnston.name', '2015-08-05 00:07:08.718922', '2015-08-05 00:07:08.718922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1328, 22, 'http://zulauflynch.com', '2015-08-05 00:07:08.720124', '2015-08-05 00:07:08.720124', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1329, 22, 'http://wizaankunding.org', '2015-08-05 00:07:08.722277', '2015-08-05 00:07:08.722277', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1330, 22, 'http://lubowitz.com', '2015-08-05 00:07:08.723666', '2015-08-05 00:07:08.723666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1331, 22, 'http://larkin.org', '2015-08-05 00:07:08.724826', '2015-08-05 00:07:08.724826', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1332, 22, 'http://schuppe.info', '2015-08-05 00:07:08.726103', '2015-08-05 00:07:08.726103', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1333, 22, 'http://tillman.name', '2015-08-05 00:07:08.72735', '2015-08-05 00:07:08.72735', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1334, 22, 'http://bodekuhlman.org', '2015-08-05 00:07:08.728602', '2015-08-05 00:07:08.728602', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1335, 22, 'http://rau.com', '2015-08-05 00:07:08.729893', '2015-08-05 00:07:08.729893', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1336, 22, 'http://feeney.net', '2015-08-05 00:07:08.731178', '2015-08-05 00:07:08.731178', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1337, 22, 'http://kshlerin.name', '2015-08-05 00:07:08.732377', '2015-08-05 00:07:08.732377', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1338, 22, 'http://davis.net', '2015-08-05 00:07:08.733492', '2015-08-05 00:07:08.733492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1339, 22, 'http://tillman.name', '2015-08-05 00:07:08.734483', '2015-08-05 00:07:08.734483', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1340, 22, 'http://mcglynn.name', '2015-08-05 00:07:08.735575', '2015-08-05 00:07:08.735575', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1341, 22, 'http://champlinschamberger.net', '2015-08-05 00:07:08.736842', '2015-08-05 00:07:08.736842', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1342, 22, 'http://baileyquigley.com', '2015-08-05 00:07:08.738177', '2015-08-05 00:07:08.738177', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1343, 22, 'http://cummings.com', '2015-08-05 00:07:08.739286', '2015-08-05 00:07:08.739286', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1344, 22, 'http://kerlukemacejkovic.biz', '2015-08-05 00:07:08.74052', '2015-08-05 00:07:08.74052', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1345, 22, 'http://mcdermott.org', '2015-08-05 00:07:08.741714', '2015-08-05 00:07:08.741714', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1346, 22, 'http://thompson.org', '2015-08-05 00:07:08.742772', '2015-08-05 00:07:08.742772', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1347, 22, 'http://pagacferry.com', '2015-08-05 00:07:08.744023', '2015-08-05 00:07:08.744023', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1348, 22, 'http://konopelski.biz', '2015-08-05 00:07:08.745303', '2015-08-05 00:07:08.745303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1349, 22, 'http://kilback.com', '2015-08-05 00:07:08.746621', '2015-08-05 00:07:08.746621', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1350, 22, 'http://friesen.biz', '2015-08-05 00:07:08.747772', '2015-08-05 00:07:08.747772', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1351, 22, 'http://tremblaybruen.org', '2015-08-05 00:07:08.748994', '2015-08-05 00:07:08.748994', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1352, 22, 'http://lowe.net', '2015-08-05 00:07:08.751815', '2015-08-05 00:07:08.751815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1353, 22, 'http://connellyoconner.net', '2015-08-05 00:07:08.75315', '2015-08-05 00:07:08.75315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1354, 22, 'http://rennercorwin.net', '2015-08-05 00:07:08.754215', '2015-08-05 00:07:08.754215', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1355, 22, 'http://wildermankuhic.com', '2015-08-05 00:07:08.755295', '2015-08-05 00:07:08.755295', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1356, 22, 'http://raynor.name', '2015-08-05 00:07:08.756456', '2015-08-05 00:07:08.756456', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1357, 22, 'http://smitham.com', '2015-08-05 00:07:08.757659', '2015-08-05 00:07:08.757659', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1358, 22, 'http://klocko.org', '2015-08-05 00:07:08.758791', '2015-08-05 00:07:08.758791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1359, 22, 'http://gutkowski.com', '2015-08-05 00:07:08.759943', '2015-08-05 00:07:08.759943', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1360, 22, 'http://streich.name', '2015-08-05 00:07:08.76117', '2015-08-05 00:07:08.76117', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1361, 22, 'http://bergnaumjacobi.info', '2015-08-05 00:07:08.762558', '2015-08-05 00:07:08.762558', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1362, 22, 'http://gusikowski.info', '2015-08-05 00:07:08.763996', '2015-08-05 00:07:08.763996', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1363, 22, 'http://conroy.name', '2015-08-05 00:07:08.765299', '2015-08-05 00:07:08.765299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1364, 22, 'http://grahammcglynn.info', '2015-08-05 00:07:08.766669', '2015-08-05 00:07:08.766669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1365, 22, 'http://quigleydouglas.com', '2015-08-05 00:07:08.767947', '2015-08-05 00:07:08.767947', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1366, 23, 'http://kiehn.biz', '2015-08-05 00:07:08.886974', '2015-08-05 00:07:08.886974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1367, 23, 'http://wilkinson.info', '2015-08-05 00:07:08.8884', '2015-08-05 00:07:08.8884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1368, 23, 'http://satterfield.info', '2015-08-05 00:07:08.889833', '2015-08-05 00:07:08.889833', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1369, 23, 'http://daughertymarquardt.info', '2015-08-05 00:07:08.89134', '2015-08-05 00:07:08.89134', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1370, 23, 'http://ankunding.net', '2015-08-05 00:07:08.89274', '2015-08-05 00:07:08.89274', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1371, 23, 'http://sporerbrakus.name', '2015-08-05 00:07:08.893918', '2015-08-05 00:07:08.893918', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1372, 23, 'http://smithondricka.org', '2015-08-05 00:07:08.895177', '2015-08-05 00:07:08.895177', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1373, 23, 'http://goldner.biz', '2015-08-05 00:07:08.896544', '2015-08-05 00:07:08.896544', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1374, 23, 'http://boyer.net', '2015-08-05 00:07:08.897758', '2015-08-05 00:07:08.897758', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1375, 23, 'http://fadel.com', '2015-08-05 00:07:08.8994', '2015-08-05 00:07:08.8994', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1376, 23, 'http://wehner.net', '2015-08-05 00:07:08.900737', '2015-08-05 00:07:08.900737', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1377, 23, 'http://ziemann.name', '2015-08-05 00:07:08.901973', '2015-08-05 00:07:08.901973', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1378, 23, 'http://gleason.net', '2015-08-05 00:07:08.903302', '2015-08-05 00:07:08.903302', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1379, 24, 'http://fritsch.com', '2015-08-05 00:07:09.294591', '2015-08-05 00:07:09.294591', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1380, 24, 'http://zieme.name', '2015-08-05 00:07:09.296165', '2015-08-05 00:07:09.296165', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1381, 24, 'http://haleylubowitz.name', '2015-08-05 00:07:09.29745', '2015-08-05 00:07:09.29745', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1382, 24, 'http://streich.net', '2015-08-05 00:07:09.298638', '2015-08-05 00:07:09.298638', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1383, 24, 'http://strosin.biz', '2015-08-05 00:07:09.300009', '2015-08-05 00:07:09.300009', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1384, 24, 'http://vonrueden.net', '2015-08-05 00:07:09.302199', '2015-08-05 00:07:09.302199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1385, 24, 'http://mohrblanda.org', '2015-08-05 00:07:09.303626', '2015-08-05 00:07:09.303626', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1386, 24, 'http://gerhold.name', '2015-08-05 00:07:09.304971', '2015-08-05 00:07:09.304971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1387, 24, 'http://reilly.com', '2015-08-05 00:07:09.306673', '2015-08-05 00:07:09.306673', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1388, 24, 'http://emard.org', '2015-08-05 00:07:09.30794', '2015-08-05 00:07:09.30794', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1389, 24, 'http://little.com', '2015-08-05 00:07:09.309158', '2015-08-05 00:07:09.309158', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1390, 24, 'http://smitham.biz', '2015-08-05 00:07:09.310435', '2015-08-05 00:07:09.310435', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1391, 24, 'http://feest.org', '2015-08-05 00:07:09.311536', '2015-08-05 00:07:09.311536', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1392, 24, 'http://leuschke.com', '2015-08-05 00:07:09.312942', '2015-08-05 00:07:09.312942', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1393, 24, 'http://corwin.name', '2015-08-05 00:07:09.314167', '2015-08-05 00:07:09.314167', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1394, 24, 'http://paucekmcglynn.info', '2015-08-05 00:07:09.315367', '2015-08-05 00:07:09.315367', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1395, 24, 'http://mayertwisoky.biz', '2015-08-05 00:07:09.316662', '2015-08-05 00:07:09.316662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1396, 24, 'http://cormieranderson.name', '2015-08-05 00:07:09.317952', '2015-08-05 00:07:09.317952', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1397, 24, 'http://aufderhar.name', '2015-08-05 00:07:09.319103', '2015-08-05 00:07:09.319103', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1398, 24, 'http://greenohara.biz', '2015-08-05 00:07:09.320193', '2015-08-05 00:07:09.320193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1399, 24, 'http://prosacco.org', '2015-08-05 00:07:09.321442', '2015-08-05 00:07:09.321442', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1400, 24, 'http://mannlind.biz', '2015-08-05 00:07:09.32285', '2015-08-05 00:07:09.32285', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1401, 24, 'http://oconnell.com', '2015-08-05 00:07:09.324102', '2015-08-05 00:07:09.324102', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1402, 24, 'http://corkeryrosenbaum.com', '2015-08-05 00:07:09.325269', '2015-08-05 00:07:09.325269', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1403, 24, 'http://gerhold.info', '2015-08-05 00:07:09.326315', '2015-08-05 00:07:09.326315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1404, 24, 'http://muellerkeeling.net', '2015-08-05 00:07:09.327379', '2015-08-05 00:07:09.327379', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1405, 24, 'http://maggio.net', '2015-08-05 00:07:09.328606', '2015-08-05 00:07:09.328606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1406, 24, 'http://osinski.biz', '2015-08-05 00:07:09.329918', '2015-08-05 00:07:09.329918', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1407, 24, 'http://jast.info', '2015-08-05 00:07:09.331984', '2015-08-05 00:07:09.331984', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1408, 24, 'http://ryan.name', '2015-08-05 00:07:09.333144', '2015-08-05 00:07:09.333144', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1409, 24, 'http://lebsackgoyette.name', '2015-08-05 00:07:09.334495', '2015-08-05 00:07:09.334495', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1410, 25, 'http://wyman.org', '2015-08-05 00:07:09.459932', '2015-08-05 00:07:09.459932', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1411, 25, 'http://turcotte.name', '2015-08-05 00:07:09.461559', '2015-08-05 00:07:09.461559', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1412, 25, 'http://bernier.net', '2015-08-05 00:07:09.463133', '2015-08-05 00:07:09.463133', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1413, 25, 'http://hills.org', '2015-08-05 00:07:09.46461', '2015-08-05 00:07:09.46461', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1414, 25, 'http://cummingsdavis.net', '2015-08-05 00:07:09.466048', '2015-08-05 00:07:09.466048', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1415, 25, 'http://webertillman.com', '2015-08-05 00:07:09.467465', '2015-08-05 00:07:09.467465', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1416, 25, 'http://walter.org', '2015-08-05 00:07:09.468855', '2015-08-05 00:07:09.468855', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1417, 25, 'http://treutel.com', '2015-08-05 00:07:09.470134', '2015-08-05 00:07:09.470134', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1418, 25, 'http://ortiz.info', '2015-08-05 00:07:09.471444', '2015-08-05 00:07:09.471444', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1419, 25, 'http://pfannerstillhodkiewicz.biz', '2015-08-05 00:07:09.472673', '2015-08-05 00:07:09.472673', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1420, 25, 'http://vandervortsteuber.info', '2015-08-05 00:07:09.473813', '2015-08-05 00:07:09.473813', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1421, 25, 'http://barton.org', '2015-08-05 00:07:09.47495', '2015-08-05 00:07:09.47495', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1422, 25, 'http://gibson.name', '2015-08-05 00:07:09.476352', '2015-08-05 00:07:09.476352', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1423, 25, 'http://walter.com', '2015-08-05 00:07:09.477803', '2015-08-05 00:07:09.477803', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1424, 25, 'http://bartonstrosin.org', '2015-08-05 00:07:09.479196', '2015-08-05 00:07:09.479196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1425, 25, 'http://krisgerlach.biz', '2015-08-05 00:07:09.482013', '2015-08-05 00:07:09.482013', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1426, 25, 'http://watsicaboyle.net', '2015-08-05 00:07:09.484211', '2015-08-05 00:07:09.484211', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1427, 25, 'http://muller.net', '2015-08-05 00:07:09.485657', '2015-08-05 00:07:09.485657', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1428, 25, 'http://trantow.org', '2015-08-05 00:07:09.486949', '2015-08-05 00:07:09.486949', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1429, 25, 'http://turner.org', '2015-08-05 00:07:09.488152', '2015-08-05 00:07:09.488152', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1430, 25, 'http://daughertylind.org', '2015-08-05 00:07:09.489702', '2015-08-05 00:07:09.489702', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1431, 25, 'http://blanda.com', '2015-08-05 00:07:09.49089', '2015-08-05 00:07:09.49089', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1432, 25, 'http://huels.biz', '2015-08-05 00:07:09.492274', '2015-08-05 00:07:09.492274', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1433, 25, 'http://schowalter.name', '2015-08-05 00:07:09.493523', '2015-08-05 00:07:09.493523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1434, 25, 'http://collierupton.com', '2015-08-05 00:07:09.494939', '2015-08-05 00:07:09.494939', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1435, 25, 'http://kirlin.net', '2015-08-05 00:07:09.496421', '2015-08-05 00:07:09.496421', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1436, 25, 'http://pfefferstracke.name', '2015-08-05 00:07:09.497974', '2015-08-05 00:07:09.497974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1437, 25, 'http://kuphal.name', '2015-08-05 00:07:09.499576', '2015-08-05 00:07:09.499576', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1438, 25, 'http://mclaughlinrempel.net', '2015-08-05 00:07:09.500985', '2015-08-05 00:07:09.500985', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1439, 25, 'http://ondricka.net', '2015-08-05 00:07:09.502232', '2015-08-05 00:07:09.502232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1440, 25, 'http://okon.com', '2015-08-05 00:07:09.503361', '2015-08-05 00:07:09.503361', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1441, 25, 'http://boyer.net', '2015-08-05 00:07:09.504749', '2015-08-05 00:07:09.504749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1442, 26, 'http://breitenberg.biz', '2015-08-05 00:07:10.079493', '2015-08-05 00:07:10.079493', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1443, 26, 'http://brekkehettinger.net', '2015-08-05 00:07:10.080998', '2015-08-05 00:07:10.080998', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1444, 26, 'http://dooleyharris.info', '2015-08-05 00:07:10.082287', '2015-08-05 00:07:10.082287', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1445, 26, 'http://dickinsoncremin.net', '2015-08-05 00:07:10.083548', '2015-08-05 00:07:10.083548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1446, 26, 'http://lednerruecker.org', '2015-08-05 00:07:10.084932', '2015-08-05 00:07:10.084932', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1447, 26, 'http://hyatt.biz', '2015-08-05 00:07:10.086315', '2015-08-05 00:07:10.086315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1448, 26, 'http://schneider.name', '2015-08-05 00:07:10.087718', '2015-08-05 00:07:10.087718', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1449, 26, 'http://lemke.net', '2015-08-05 00:07:10.089071', '2015-08-05 00:07:10.089071', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1450, 26, 'http://bauch.net', '2015-08-05 00:07:10.090377', '2015-08-05 00:07:10.090377', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1451, 26, 'http://leuschkeortiz.com', '2015-08-05 00:07:10.091907', '2015-08-05 00:07:10.091907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1452, 26, 'http://eichmann.org', '2015-08-05 00:07:10.093151', '2015-08-05 00:07:10.093151', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1453, 26, 'http://spinka.info', '2015-08-05 00:07:10.094464', '2015-08-05 00:07:10.094464', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1454, 26, 'http://wilderman.org', '2015-08-05 00:07:10.095619', '2015-08-05 00:07:10.095619', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1455, 26, 'http://cummingsmacejkovic.biz', '2015-08-05 00:07:10.096635', '2015-08-05 00:07:10.096635', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1456, 26, 'http://thompson.net', '2015-08-05 00:07:10.097676', '2015-08-05 00:07:10.097676', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1457, 26, 'http://kaulke.name', '2015-08-05 00:07:10.09884', '2015-08-05 00:07:10.09884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1458, 26, 'http://farrellbrakus.com', '2015-08-05 00:07:10.100192', '2015-08-05 00:07:10.100192', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1459, 26, 'http://veum.info', '2015-08-05 00:07:10.101391', '2015-08-05 00:07:10.101391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1460, 26, 'http://gusikowski.org', '2015-08-05 00:07:10.102518', '2015-08-05 00:07:10.102518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1461, 26, 'http://metz.net', '2015-08-05 00:07:10.107474', '2015-08-05 00:07:10.107474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1462, 26, 'http://cremin.org', '2015-08-05 00:07:10.10896', '2015-08-05 00:07:10.10896', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1463, 26, 'http://cole.info', '2015-08-05 00:07:10.111906', '2015-08-05 00:07:10.111906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1464, 26, 'http://padberg.net', '2015-08-05 00:07:10.113254', '2015-08-05 00:07:10.113254', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1465, 26, 'http://marvindubuque.name', '2015-08-05 00:07:10.114378', '2015-08-05 00:07:10.114378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1466, 26, 'http://harris.net', '2015-08-05 00:07:10.115507', '2015-08-05 00:07:10.115507', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1467, 26, 'http://baumbach.com', '2015-08-05 00:07:10.116615', '2015-08-05 00:07:10.116615', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1468, 26, 'http://moore.name', '2015-08-05 00:07:10.117878', '2015-08-05 00:07:10.117878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1469, 26, 'http://jacobi.com', '2015-08-05 00:07:10.118936', '2015-08-05 00:07:10.118936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1470, 26, 'http://block.biz', '2015-08-05 00:07:10.120064', '2015-08-05 00:07:10.120064', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1471, 26, 'http://toy.org', '2015-08-05 00:07:10.121376', '2015-08-05 00:07:10.121376', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1472, 26, 'http://marks.com', '2015-08-05 00:07:10.122701', '2015-08-05 00:07:10.122701', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1473, 26, 'http://christiansen.org', '2015-08-05 00:07:10.123934', '2015-08-05 00:07:10.123934', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1474, 26, 'http://wehnerlubowitz.com', '2015-08-05 00:07:10.125139', '2015-08-05 00:07:10.125139', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1475, 26, 'http://beatty.org', '2015-08-05 00:07:10.12633', '2015-08-05 00:07:10.12633', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1476, 26, 'http://shanahan.com', '2015-08-05 00:07:10.127422', '2015-08-05 00:07:10.127422', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1477, 26, 'http://jaskolskiwatsica.info', '2015-08-05 00:07:10.128546', '2015-08-05 00:07:10.128546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1478, 26, 'http://schillernitzsche.org', '2015-08-05 00:07:10.129678', '2015-08-05 00:07:10.129678', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1479, 26, 'http://dubuque.net', '2015-08-05 00:07:10.130791', '2015-08-05 00:07:10.130791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1480, 26, 'http://lowe.name', '2015-08-05 00:07:10.131884', '2015-08-05 00:07:10.131884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1481, 26, 'http://cartwright.info', '2015-08-05 00:07:10.133083', '2015-08-05 00:07:10.133083', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1482, 26, 'http://rutherford.net', '2015-08-05 00:07:10.134342', '2015-08-05 00:07:10.134342', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1483, 26, 'http://daniel.biz', '2015-08-05 00:07:10.135734', '2015-08-05 00:07:10.135734', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1484, 26, 'http://boehm.info', '2015-08-05 00:07:10.136912', '2015-08-05 00:07:10.136912', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1485, 26, 'http://bauchgleason.name', '2015-08-05 00:07:10.138073', '2015-08-05 00:07:10.138073', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1486, 26, 'http://macejkovic.net', '2015-08-05 00:07:10.139594', '2015-08-05 00:07:10.139594', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1487, 26, 'http://roberts.com', '2015-08-05 00:07:10.140755', '2015-08-05 00:07:10.140755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1488, 26, 'http://oberbrunner.net', '2015-08-05 00:07:10.141786', '2015-08-05 00:07:10.141786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1489, 26, 'http://whitebarrows.com', '2015-08-05 00:07:10.142826', '2015-08-05 00:07:10.142826', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1490, 26, 'http://emmerich.info', '2015-08-05 00:07:10.14398', '2015-08-05 00:07:10.14398', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1491, 26, 'http://goldnerroberts.com', '2015-08-05 00:07:10.145042', '2015-08-05 00:07:10.145042', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1492, 26, 'http://dooley.name', '2015-08-05 00:07:10.146348', '2015-08-05 00:07:10.146348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1493, 26, 'http://schumm.name', '2015-08-05 00:07:10.147626', '2015-08-05 00:07:10.147626', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1494, 26, 'http://rempel.net', '2015-08-05 00:07:10.148934', '2015-08-05 00:07:10.148934', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1495, 26, 'http://krajcik.com', '2015-08-05 00:07:10.15014', '2015-08-05 00:07:10.15014', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1496, 26, 'http://macejkovic.com', '2015-08-05 00:07:10.151376', '2015-08-05 00:07:10.151376', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1497, 26, 'http://weimann.info', '2015-08-05 00:07:10.152461', '2015-08-05 00:07:10.152461', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1498, 26, 'http://wilkinson.com', '2015-08-05 00:07:10.15351', '2015-08-05 00:07:10.15351', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1499, 26, 'http://murphy.org', '2015-08-05 00:07:10.154627', '2015-08-05 00:07:10.154627', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1500, 26, 'http://dickicole.info', '2015-08-05 00:07:10.155834', '2015-08-05 00:07:10.155834', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1501, 26, 'http://rau.biz', '2015-08-05 00:07:10.157264', '2015-08-05 00:07:10.157264', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1502, 26, 'http://kuhn.name', '2015-08-05 00:07:10.158595', '2015-08-05 00:07:10.158595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1503, 26, 'http://murraymueller.org', '2015-08-05 00:07:10.159922', '2015-08-05 00:07:10.159922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1504, 26, 'http://schimmeljast.biz', '2015-08-05 00:07:10.161414', '2015-08-05 00:07:10.161414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1505, 26, 'http://heaneysmith.net', '2015-08-05 00:07:10.162861', '2015-08-05 00:07:10.162861', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1506, 26, 'http://hettinger.com', '2015-08-05 00:07:10.164047', '2015-08-05 00:07:10.164047', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1507, 26, 'http://nikolaus.net', '2015-08-05 00:07:10.165195', '2015-08-05 00:07:10.165195', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1508, 26, 'http://ko.info', '2015-08-05 00:07:10.166563', '2015-08-05 00:07:10.166563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1509, 26, 'http://kris.org', '2015-08-05 00:07:10.167769', '2015-08-05 00:07:10.167769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1510, 26, 'http://stammstark.net', '2015-08-05 00:07:10.169067', '2015-08-05 00:07:10.169067', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1511, 26, 'http://pouros.biz', '2015-08-05 00:07:10.170382', '2015-08-05 00:07:10.170382', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1512, 26, 'http://mohr.net', '2015-08-05 00:07:10.171717', '2015-08-05 00:07:10.171717', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1513, 26, 'http://padberg.info', '2015-08-05 00:07:10.172823', '2015-08-05 00:07:10.172823', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1514, 26, 'http://lindgrenmonahan.net', '2015-08-05 00:07:10.174135', '2015-08-05 00:07:10.174135', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1515, 26, 'http://klingschiller.biz', '2015-08-05 00:07:10.175178', '2015-08-05 00:07:10.175178', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1516, 26, 'http://schamberger.com', '2015-08-05 00:07:10.176512', '2015-08-05 00:07:10.176512', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1517, 26, 'http://yost.biz', '2015-08-05 00:07:10.177835', '2015-08-05 00:07:10.177835', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1518, 26, 'http://donnellystanton.net', '2015-08-05 00:07:10.179002', '2015-08-05 00:07:10.179002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1519, 26, 'http://goyette.info', '2015-08-05 00:07:10.180176', '2015-08-05 00:07:10.180176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1520, 26, 'http://predovickovacek.org', '2015-08-05 00:07:10.181244', '2015-08-05 00:07:10.181244', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1521, 26, 'http://purdyvandervort.info', '2015-08-05 00:07:10.182297', '2015-08-05 00:07:10.182297', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1522, 26, 'http://vandervortcartwright.biz', '2015-08-05 00:07:10.183506', '2015-08-05 00:07:10.183506', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1523, 26, 'http://volkman.net', '2015-08-05 00:07:10.184523', '2015-08-05 00:07:10.184523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1524, 26, 'http://koepp.net', '2015-08-05 00:07:10.185572', '2015-08-05 00:07:10.185572', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1525, 26, 'http://schowalter.org', '2015-08-05 00:07:10.186657', '2015-08-05 00:07:10.186657', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1526, 26, 'http://eichmannbernhard.info', '2015-08-05 00:07:10.187763', '2015-08-05 00:07:10.187763', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1527, 26, 'http://boyleondricka.com', '2015-08-05 00:07:10.188843', '2015-08-05 00:07:10.188843', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1528, 27, 'http://lockman.name', '2015-08-05 00:07:10.308474', '2015-08-05 00:07:10.308474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1529, 27, 'http://balistreri.org', '2015-08-05 00:07:10.309969', '2015-08-05 00:07:10.309969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1530, 27, 'http://schinner.info', '2015-08-05 00:07:10.311282', '2015-08-05 00:07:10.311282', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1531, 27, 'http://hamilljohns.biz', '2015-08-05 00:07:10.312845', '2015-08-05 00:07:10.312845', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1532, 27, 'http://fadel.name', '2015-08-05 00:07:10.314092', '2015-08-05 00:07:10.314092', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1533, 27, 'http://bradtke.com', '2015-08-05 00:07:10.315163', '2015-08-05 00:07:10.315163', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1534, 27, 'http://wiegandhansen.com', '2015-08-05 00:07:10.316438', '2015-08-05 00:07:10.316438', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1535, 27, 'http://kling.info', '2015-08-05 00:07:10.317587', '2015-08-05 00:07:10.317587', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1536, 27, 'http://cartwright.com', '2015-08-05 00:07:10.318659', '2015-08-05 00:07:10.318659', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1537, 27, 'http://kuhlmankemmer.org', '2015-08-05 00:07:10.319928', '2015-08-05 00:07:10.319928', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1538, 27, 'http://hegmannlakin.org', '2015-08-05 00:07:10.321152', '2015-08-05 00:07:10.321152', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1539, 27, 'http://jaskolski.name', '2015-08-05 00:07:10.322227', '2015-08-05 00:07:10.322227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1540, 27, 'http://emardferry.net', '2015-08-05 00:07:10.323272', '2015-08-05 00:07:10.323272', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1541, 27, 'http://breitenbergcartwright.com', '2015-08-05 00:07:10.324332', '2015-08-05 00:07:10.324332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1542, 27, 'http://davis.com', '2015-08-05 00:07:10.325583', '2015-08-05 00:07:10.325583', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1543, 27, 'http://corwinharris.info', '2015-08-05 00:07:10.326834', '2015-08-05 00:07:10.326834', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1544, 27, 'http://emard.name', '2015-08-05 00:07:10.328016', '2015-08-05 00:07:10.328016', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1545, 27, 'http://weber.com', '2015-08-05 00:07:10.329097', '2015-08-05 00:07:10.329097', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1546, 27, 'http://millshane.org', '2015-08-05 00:07:10.330211', '2015-08-05 00:07:10.330211', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1547, 27, 'http://kihn.info', '2015-08-05 00:07:10.3315', '2015-08-05 00:07:10.3315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1548, 27, 'http://mueller.com', '2015-08-05 00:07:10.332637', '2015-08-05 00:07:10.332637', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1549, 27, 'http://smithaltenwerth.net', '2015-08-05 00:07:10.333695', '2015-08-05 00:07:10.333695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1550, 27, 'http://mills.name', '2015-08-05 00:07:10.334898', '2015-08-05 00:07:10.334898', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1551, 27, 'http://kiehn.net', '2015-08-05 00:07:10.336011', '2015-08-05 00:07:10.336011', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1552, 27, 'http://kub.net', '2015-08-05 00:07:10.337049', '2015-08-05 00:07:10.337049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1553, 27, 'http://hayes.name', '2015-08-05 00:07:10.33846', '2015-08-05 00:07:10.33846', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1554, 27, 'http://kulas.info', '2015-08-05 00:07:10.340004', '2015-08-05 00:07:10.340004', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1555, 27, 'http://eichmann.com', '2015-08-05 00:07:10.342115', '2015-08-05 00:07:10.342115', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1556, 27, 'http://nicolas.org', '2015-08-05 00:07:10.343266', '2015-08-05 00:07:10.343266', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1557, 27, 'http://ryanmosciski.biz', '2015-08-05 00:07:10.344501', '2015-08-05 00:07:10.344501', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1558, 27, 'http://johns.org', '2015-08-05 00:07:10.345655', '2015-08-05 00:07:10.345655', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1559, 27, 'http://botsford.biz', '2015-08-05 00:07:10.346894', '2015-08-05 00:07:10.346894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1560, 27, 'http://dicki.org', '2015-08-05 00:07:10.348066', '2015-08-05 00:07:10.348066', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1561, 27, 'http://corkery.biz', '2015-08-05 00:07:10.349156', '2015-08-05 00:07:10.349156', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1562, 27, 'http://rohan.info', '2015-08-05 00:07:10.350222', '2015-08-05 00:07:10.350222', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1563, 27, 'http://sauer.info', '2015-08-05 00:07:10.351489', '2015-08-05 00:07:10.351489', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1564, 27, 'http://conroy.org', '2015-08-05 00:07:10.352825', '2015-08-05 00:07:10.352825', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1565, 27, 'http://schulistthiel.name', '2015-08-05 00:07:10.354049', '2015-08-05 00:07:10.354049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1566, 27, 'http://mcclure.org', '2015-08-05 00:07:10.355335', '2015-08-05 00:07:10.355335', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1567, 27, 'http://torphy.name', '2015-08-05 00:07:10.356603', '2015-08-05 00:07:10.356603', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1568, 27, 'http://mcclurepurdy.info', '2015-08-05 00:07:10.357747', '2015-08-05 00:07:10.357747', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1569, 27, 'http://harber.biz', '2015-08-05 00:07:10.358766', '2015-08-05 00:07:10.358766', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1570, 27, 'http://herzog.com', '2015-08-05 00:07:10.359844', '2015-08-05 00:07:10.359844', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1571, 27, 'http://brakustorp.net', '2015-08-05 00:07:10.360948', '2015-08-05 00:07:10.360948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1572, 27, 'http://collins.info', '2015-08-05 00:07:10.362107', '2015-08-05 00:07:10.362107', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1573, 27, 'http://schummkutch.info', '2015-08-05 00:07:10.363196', '2015-08-05 00:07:10.363196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1574, 27, 'http://greenholttowne.org', '2015-08-05 00:07:10.36423', '2015-08-05 00:07:10.36423', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1575, 27, 'http://thielpaucek.biz', '2015-08-05 00:07:10.365235', '2015-08-05 00:07:10.365235', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1576, 27, 'http://jones.org', '2015-08-05 00:07:10.366314', '2015-08-05 00:07:10.366314', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1577, 27, 'http://nitzsche.com', '2015-08-05 00:07:10.367503', '2015-08-05 00:07:10.367503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1578, 27, 'http://hegmann.org', '2015-08-05 00:07:10.368669', '2015-08-05 00:07:10.368669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1579, 27, 'http://pfannerstilllehner.com', '2015-08-05 00:07:10.369688', '2015-08-05 00:07:10.369688', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1580, 27, 'http://deckowhermiston.info', '2015-08-05 00:07:10.371851', '2015-08-05 00:07:10.371851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1581, 27, 'http://okuneva.info', '2015-08-05 00:07:10.37397', '2015-08-05 00:07:10.37397', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1582, 27, 'http://armstrongrobel.net', '2015-08-05 00:07:10.375279', '2015-08-05 00:07:10.375279', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1583, 27, 'http://leffler.com', '2015-08-05 00:07:10.376643', '2015-08-05 00:07:10.376643', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1584, 27, 'http://bashirianhoppe.info', '2015-08-05 00:07:10.377816', '2015-08-05 00:07:10.377816', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1585, 27, 'http://rennerwalsh.net', '2015-08-05 00:07:10.379027', '2015-08-05 00:07:10.379027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1586, 28, 'http://schuster.biz', '2015-08-05 00:07:10.487099', '2015-08-05 00:07:10.487099', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1587, 28, 'http://thielabbott.info', '2015-08-05 00:07:10.488496', '2015-08-05 00:07:10.488496', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1588, 28, 'http://prohaskaerdman.com', '2015-08-05 00:07:10.489895', '2015-08-05 00:07:10.489895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1589, 28, 'http://daugherty.org', '2015-08-05 00:07:10.491204', '2015-08-05 00:07:10.491204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1590, 28, 'http://crooks.info', '2015-08-05 00:07:10.492552', '2015-08-05 00:07:10.492552', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1591, 28, 'http://mertzmills.info', '2015-08-05 00:07:10.493822', '2015-08-05 00:07:10.493822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1592, 28, 'http://nolan.name', '2015-08-05 00:07:10.495206', '2015-08-05 00:07:10.495206', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1593, 28, 'http://pacocha.org', '2015-08-05 00:07:10.496347', '2015-08-05 00:07:10.496347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1594, 28, 'http://moorelind.info', '2015-08-05 00:07:10.497575', '2015-08-05 00:07:10.497575', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1595, 28, 'http://bernhardkautzer.name', '2015-08-05 00:07:10.498944', '2015-08-05 00:07:10.498944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1596, 28, 'http://kuhlman.biz', '2015-08-05 00:07:10.500477', '2015-08-05 00:07:10.500477', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1597, 28, 'http://lehner.name', '2015-08-05 00:07:10.501921', '2015-08-05 00:07:10.501921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1598, 28, 'http://cummerata.biz', '2015-08-05 00:07:10.503006', '2015-08-05 00:07:10.503006', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1599, 28, 'http://klockookuneva.name', '2015-08-05 00:07:10.504073', '2015-08-05 00:07:10.504073', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1600, 28, 'http://murazik.name', '2015-08-05 00:07:10.505136', '2015-08-05 00:07:10.505136', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1601, 28, 'http://friesentorphy.org', '2015-08-05 00:07:10.506239', '2015-08-05 00:07:10.506239', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1602, 28, 'http://dibbert.com', '2015-08-05 00:07:10.507507', '2015-08-05 00:07:10.507507', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1603, 28, 'http://considine.net', '2015-08-05 00:07:10.508614', '2015-08-05 00:07:10.508614', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1604, 28, 'http://oreillyframi.biz', '2015-08-05 00:07:10.509827', '2015-08-05 00:07:10.509827', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1605, 28, 'http://jacobibahringer.org', '2015-08-05 00:07:10.511799', '2015-08-05 00:07:10.511799', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1606, 28, 'http://harvey.biz', '2015-08-05 00:07:10.513882', '2015-08-05 00:07:10.513882', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1607, 28, 'http://kub.name', '2015-08-05 00:07:10.515255', '2015-08-05 00:07:10.515255', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1608, 28, 'http://koelpinbartell.com', '2015-08-05 00:07:10.516598', '2015-08-05 00:07:10.516598', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1609, 28, 'http://davis.name', '2015-08-05 00:07:10.517961', '2015-08-05 00:07:10.517961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1610, 28, 'http://maggio.biz', '2015-08-05 00:07:10.519108', '2015-08-05 00:07:10.519108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1611, 28, 'http://littel.name', '2015-08-05 00:07:10.520388', '2015-08-05 00:07:10.520388', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1612, 28, 'http://runolfon.biz', '2015-08-05 00:07:10.521662', '2015-08-05 00:07:10.521662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1613, 28, 'http://sawayn.name', '2015-08-05 00:07:10.523002', '2015-08-05 00:07:10.523002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1614, 28, 'http://marvin.net', '2015-08-05 00:07:10.52414', '2015-08-05 00:07:10.52414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1615, 28, 'http://ferryfay.info', '2015-08-05 00:07:10.525496', '2015-08-05 00:07:10.525496', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1616, 28, 'http://durgan.name', '2015-08-05 00:07:10.526826', '2015-08-05 00:07:10.526826', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1617, 28, 'http://greenfeldersteuber.biz', '2015-08-05 00:07:10.528086', '2015-08-05 00:07:10.528086', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1618, 28, 'http://keeblerbechtelar.com', '2015-08-05 00:07:10.529534', '2015-08-05 00:07:10.529534', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1619, 28, 'http://marks.org', '2015-08-05 00:07:10.530878', '2015-08-05 00:07:10.530878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1620, 28, 'http://cummeratabartoletti.info', '2015-08-05 00:07:10.532124', '2015-08-05 00:07:10.532124', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1621, 28, 'http://paucekbailey.net', '2015-08-05 00:07:10.533199', '2015-08-05 00:07:10.533199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1622, 28, 'http://batz.biz', '2015-08-05 00:07:10.534517', '2015-08-05 00:07:10.534517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1623, 28, 'http://watsicalind.org', '2015-08-05 00:07:10.53579', '2015-08-05 00:07:10.53579', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1624, 28, 'http://okon.name', '2015-08-05 00:07:10.537118', '2015-08-05 00:07:10.537118', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1625, 28, 'http://wiegandbechtelar.biz', '2015-08-05 00:07:10.538374', '2015-08-05 00:07:10.538374', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1626, 28, 'http://lowe.net', '2015-08-05 00:07:10.53971', '2015-08-05 00:07:10.53971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1627, 28, 'http://reynolds.org', '2015-08-05 00:07:10.541925', '2015-08-05 00:07:10.541925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1628, 28, 'http://harvey.org', '2015-08-05 00:07:10.544099', '2015-08-05 00:07:10.544099', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1629, 28, 'http://dickenstremblay.name', '2015-08-05 00:07:10.545428', '2015-08-05 00:07:10.545428', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1630, 28, 'http://mertz.com', '2015-08-05 00:07:10.546698', '2015-08-05 00:07:10.546698', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1631, 28, 'http://bogisichhamill.biz', '2015-08-05 00:07:10.547948', '2015-08-05 00:07:10.547948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1632, 28, 'http://rippin.name', '2015-08-05 00:07:10.549069', '2015-08-05 00:07:10.549069', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1633, 28, 'http://buckridgeschneider.name', '2015-08-05 00:07:10.550429', '2015-08-05 00:07:10.550429', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1634, 28, 'http://hayes.name', '2015-08-05 00:07:10.551549', '2015-08-05 00:07:10.551549', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1635, 28, 'http://donnelly.net', '2015-08-05 00:07:10.552747', '2015-08-05 00:07:10.552747', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1636, 28, 'http://gerlach.info', '2015-08-05 00:07:10.553886', '2015-08-05 00:07:10.553886', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1637, 28, 'http://pagacleannon.net', '2015-08-05 00:07:10.555185', '2015-08-05 00:07:10.555185', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1638, 28, 'http://bogan.info', '2015-08-05 00:07:10.556443', '2015-08-05 00:07:10.556443', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1639, 28, 'http://welch.net', '2015-08-05 00:07:10.557649', '2015-08-05 00:07:10.557649', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1640, 28, 'http://schultz.org', '2015-08-05 00:07:10.558851', '2015-08-05 00:07:10.558851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1641, 28, 'http://kreiger.info', '2015-08-05 00:07:10.560318', '2015-08-05 00:07:10.560318', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1642, 28, 'http://okuneva.info', '2015-08-05 00:07:10.561916', '2015-08-05 00:07:10.561916', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1643, 28, 'http://pagac.net', '2015-08-05 00:07:10.563171', '2015-08-05 00:07:10.563171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1644, 28, 'http://weimann.name', '2015-08-05 00:07:10.564548', '2015-08-05 00:07:10.564548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1645, 28, 'http://ziemannblock.org', '2015-08-05 00:07:10.565886', '2015-08-05 00:07:10.565886', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1646, 29, 'http://yost.net', '2015-08-05 00:07:13.392234', '2015-08-05 00:07:13.392234', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1647, 29, 'http://kuphal.info', '2015-08-05 00:07:13.393709', '2015-08-05 00:07:13.393709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1648, 29, 'http://erdmanmann.info', '2015-08-05 00:07:13.394988', '2015-08-05 00:07:13.394988', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1649, 29, 'http://johnsoreilly.biz', '2015-08-05 00:07:13.396326', '2015-08-05 00:07:13.396326', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1650, 29, 'http://gleason.net', '2015-08-05 00:07:13.397516', '2015-08-05 00:07:13.397516', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1651, 29, 'http://hyatt.net', '2015-08-05 00:07:13.398732', '2015-08-05 00:07:13.398732', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1652, 29, 'http://colerodriguez.name', '2015-08-05 00:07:13.399994', '2015-08-05 00:07:13.399994', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1653, 29, 'http://rice.net', '2015-08-05 00:07:13.401133', '2015-08-05 00:07:13.401133', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1654, 29, 'http://lowe.biz', '2015-08-05 00:07:13.40243', '2015-08-05 00:07:13.40243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1655, 29, 'http://johnson.com', '2015-08-05 00:07:13.403667', '2015-08-05 00:07:13.403667', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1656, 29, 'http://mraz.net', '2015-08-05 00:07:13.404811', '2015-08-05 00:07:13.404811', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1657, 29, 'http://mitchell.info', '2015-08-05 00:07:13.40588', '2015-08-05 00:07:13.40588', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1658, 29, 'http://reinger.com', '2015-08-05 00:07:13.406993', '2015-08-05 00:07:13.406993', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1659, 29, 'http://batz.net', '2015-08-05 00:07:13.408214', '2015-08-05 00:07:13.408214', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1660, 29, 'http://murray.org', '2015-08-05 00:07:13.409406', '2015-08-05 00:07:13.409406', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1661, 29, 'http://pagac.net', '2015-08-05 00:07:13.411795', '2015-08-05 00:07:13.411795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1662, 29, 'http://nitzsche.biz', '2015-08-05 00:07:13.413941', '2015-08-05 00:07:13.413941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1663, 29, 'http://kohler.info', '2015-08-05 00:07:13.415244', '2015-08-05 00:07:13.415244', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1664, 29, 'http://mccullough.com', '2015-08-05 00:07:13.41657', '2015-08-05 00:07:13.41657', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1665, 29, 'http://block.org', '2015-08-05 00:07:13.417821', '2015-08-05 00:07:13.417821', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1666, 29, 'http://bruen.info', '2015-08-05 00:07:13.41917', '2015-08-05 00:07:13.41917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1667, 29, 'http://weinat.org', '2015-08-05 00:07:13.420579', '2015-08-05 00:07:13.420579', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1668, 29, 'http://jenkins.biz', '2015-08-05 00:07:13.421888', '2015-08-05 00:07:13.421888', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1669, 30, 'http://schulist.biz', '2015-08-05 00:07:13.560567', '2015-08-05 00:07:13.560567', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1670, 30, 'http://cain.info', '2015-08-05 00:07:13.562107', '2015-08-05 00:07:13.562107', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1671, 30, 'http://hettingerbarton.name', '2015-08-05 00:07:13.563607', '2015-08-05 00:07:13.563607', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1672, 30, 'http://stark.com', '2015-08-05 00:07:13.565034', '2015-08-05 00:07:13.565034', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1673, 30, 'http://franecki.com', '2015-08-05 00:07:13.566394', '2015-08-05 00:07:13.566394', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1674, 30, 'http://casper.info', '2015-08-05 00:07:13.567592', '2015-08-05 00:07:13.567592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1675, 30, 'http://mills.biz', '2015-08-05 00:07:13.568863', '2015-08-05 00:07:13.568863', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1676, 30, 'http://nolansenger.com', '2015-08-05 00:07:13.5701', '2015-08-05 00:07:13.5701', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1677, 30, 'http://krajcikwilderman.info', '2015-08-05 00:07:13.571257', '2015-08-05 00:07:13.571257', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1678, 30, 'http://effertz.biz', '2015-08-05 00:07:13.572672', '2015-08-05 00:07:13.572672', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1679, 30, 'http://aufderhar.net', '2015-08-05 00:07:13.573784', '2015-08-05 00:07:13.573784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1680, 30, 'http://lakin.name', '2015-08-05 00:07:13.57491', '2015-08-05 00:07:13.57491', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1681, 30, 'http://kuphalheller.info', '2015-08-05 00:07:13.576187', '2015-08-05 00:07:13.576187', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1682, 30, 'http://kunze.org', '2015-08-05 00:07:13.577372', '2015-08-05 00:07:13.577372', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1683, 30, 'http://schmidt.name', '2015-08-05 00:07:13.578621', '2015-08-05 00:07:13.578621', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1684, 30, 'http://cain.org', '2015-08-05 00:07:13.579677', '2015-08-05 00:07:13.579677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1685, 30, 'http://cummerata.name', '2015-08-05 00:07:13.581778', '2015-08-05 00:07:13.581778', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1686, 30, 'http://barrowsbeatty.net', '2015-08-05 00:07:13.583671', '2015-08-05 00:07:13.583671', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1687, 30, 'http://zboncak.com', '2015-08-05 00:07:13.585054', '2015-08-05 00:07:13.585054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1688, 30, 'http://kozey.com', '2015-08-05 00:07:13.586347', '2015-08-05 00:07:13.586347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1689, 30, 'http://ziemann.info', '2015-08-05 00:07:13.587652', '2015-08-05 00:07:13.587652', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1690, 30, 'http://kunze.biz', '2015-08-05 00:07:13.588907', '2015-08-05 00:07:13.588907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1691, 30, 'http://barton.org', '2015-08-05 00:07:13.590159', '2015-08-05 00:07:13.590159', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1692, 30, 'http://ornfritsch.biz', '2015-08-05 00:07:13.591663', '2015-08-05 00:07:13.591663', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1693, 30, 'http://jaskolski.biz', '2015-08-05 00:07:13.59301', '2015-08-05 00:07:13.59301', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1694, 30, 'http://nicolasromaguera.org', '2015-08-05 00:07:13.594253', '2015-08-05 00:07:13.594253', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1695, 30, 'http://white.net', '2015-08-05 00:07:13.595434', '2015-08-05 00:07:13.595434', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1696, 30, 'http://connelly.info', '2015-08-05 00:07:13.596751', '2015-08-05 00:07:13.596751', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1697, 30, 'http://harris.name', '2015-08-05 00:07:13.597957', '2015-08-05 00:07:13.597957', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1698, 30, 'http://bauch.com', '2015-08-05 00:07:13.599189', '2015-08-05 00:07:13.599189', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1699, 30, 'http://cainrunte.name', '2015-08-05 00:07:13.600461', '2015-08-05 00:07:13.600461', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1700, 30, 'http://koelpinmarvin.biz', '2015-08-05 00:07:13.601719', '2015-08-05 00:07:13.601719', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1701, 30, 'http://will.name', '2015-08-05 00:07:13.602882', '2015-08-05 00:07:13.602882', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1702, 30, 'http://schuster.com', '2015-08-05 00:07:13.604173', '2015-08-05 00:07:13.604173', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1703, 30, 'http://funkhammes.name', '2015-08-05 00:07:13.605397', '2015-08-05 00:07:13.605397', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1704, 30, 'http://mcdermottchamplin.org', '2015-08-05 00:07:13.606558', '2015-08-05 00:07:13.606558', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1705, 30, 'http://sporer.net', '2015-08-05 00:07:13.607821', '2015-08-05 00:07:13.607821', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1706, 30, 'http://marksjaskolski.name', '2015-08-05 00:07:13.609042', '2015-08-05 00:07:13.609042', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1707, 30, 'http://abbottbogisich.name', '2015-08-05 00:07:13.610075', '2015-08-05 00:07:13.610075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1708, 30, 'http://eichmannroberts.net', '2015-08-05 00:07:13.612021', '2015-08-05 00:07:13.612021', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1709, 30, 'http://pagachickle.name', '2015-08-05 00:07:13.61395', '2015-08-05 00:07:13.61395', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1710, 30, 'http://zemlakkris.name', '2015-08-05 00:07:13.614964', '2015-08-05 00:07:13.614964', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1711, 30, 'http://volkman.net', '2015-08-05 00:07:13.616052', '2015-08-05 00:07:13.616052', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1712, 30, 'http://cummingswilliamson.com', '2015-08-05 00:07:13.617287', '2015-08-05 00:07:13.617287', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1713, 30, 'http://prohaskarau.org', '2015-08-05 00:07:13.618391', '2015-08-05 00:07:13.618391', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1714, 30, 'http://mante.com', '2015-08-05 00:07:13.619833', '2015-08-05 00:07:13.619833', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1715, 30, 'http://murazik.org', '2015-08-05 00:07:13.621126', '2015-08-05 00:07:13.621126', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1716, 30, 'http://bins.net', '2015-08-05 00:07:13.622218', '2015-08-05 00:07:13.622218', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1717, 30, 'http://wolffbailey.org', '2015-08-05 00:07:13.62345', '2015-08-05 00:07:13.62345', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1718, 30, 'http://torproberts.org', '2015-08-05 00:07:13.62483', '2015-08-05 00:07:13.62483', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1719, 30, 'http://walter.biz', '2015-08-05 00:07:13.626045', '2015-08-05 00:07:13.626045', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1720, 30, 'http://stamm.info', '2015-08-05 00:07:13.627424', '2015-08-05 00:07:13.627424', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1721, 30, 'http://gerlachjohnston.net', '2015-08-05 00:07:13.628649', '2015-08-05 00:07:13.628649', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1722, 30, 'http://hackett.com', '2015-08-05 00:07:13.629993', '2015-08-05 00:07:13.629993', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1723, 30, 'http://kozey.name', '2015-08-05 00:07:13.63125', '2015-08-05 00:07:13.63125', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1724, 30, 'http://moore.biz', '2015-08-05 00:07:13.632584', '2015-08-05 00:07:13.632584', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1725, 30, 'http://tromp.biz', '2015-08-05 00:07:13.633737', '2015-08-05 00:07:13.633737', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1726, 31, 'http://casper.org', '2015-08-05 00:07:15.049581', '2015-08-05 00:07:15.049581', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1727, 31, 'http://kuphal.net', '2015-08-05 00:07:15.051079', '2015-08-05 00:07:15.051079', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1728, 31, 'http://kuvalis.name', '2015-08-05 00:07:15.052579', '2015-08-05 00:07:15.052579', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1729, 31, 'http://pouros.org', '2015-08-05 00:07:15.054077', '2015-08-05 00:07:15.054077', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1730, 31, 'http://emardmoen.info', '2015-08-05 00:07:15.055465', '2015-08-05 00:07:15.055465', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1731, 31, 'http://huelledner.info', '2015-08-05 00:07:15.056853', '2015-08-05 00:07:15.056853', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1732, 31, 'http://smithweimann.name', '2015-08-05 00:07:15.058244', '2015-08-05 00:07:15.058244', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1733, 31, 'http://kemmer.org', '2015-08-05 00:07:15.059581', '2015-08-05 00:07:15.059581', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1734, 31, 'http://hirthe.net', '2015-08-05 00:07:15.060965', '2015-08-05 00:07:15.060965', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1735, 31, 'http://hirthegoyette.org', '2015-08-05 00:07:15.062264', '2015-08-05 00:07:15.062264', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1736, 31, 'http://schowaltermclaughlin.name', '2015-08-05 00:07:15.06348', '2015-08-05 00:07:15.06348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1737, 31, 'http://trantow.com', '2015-08-05 00:07:15.064706', '2015-08-05 00:07:15.064706', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1738, 31, 'http://veum.info', '2015-08-05 00:07:15.065813', '2015-08-05 00:07:15.065813', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1739, 31, 'http://schmidt.biz', '2015-08-05 00:07:15.067018', '2015-08-05 00:07:15.067018', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1740, 32, 'http://green.info', '2015-08-05 00:07:15.716304', '2015-08-05 00:07:15.716304', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1741, 32, 'http://mills.name', '2015-08-05 00:07:15.717732', '2015-08-05 00:07:15.717732', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1742, 32, 'http://langosh.biz', '2015-08-05 00:07:15.71893', '2015-08-05 00:07:15.71893', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1743, 32, 'http://denesik.com', '2015-08-05 00:07:15.72032', '2015-08-05 00:07:15.72032', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1744, 32, 'http://marquardtspencer.info', '2015-08-05 00:07:15.721682', '2015-08-05 00:07:15.721682', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1745, 32, 'http://cummings.org', '2015-08-05 00:07:15.723081', '2015-08-05 00:07:15.723081', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1746, 32, 'http://bogan.org', '2015-08-05 00:07:15.724491', '2015-08-05 00:07:15.724491', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1747, 32, 'http://ankunding.info', '2015-08-05 00:07:15.725717', '2015-08-05 00:07:15.725717', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1748, 32, 'http://pollich.info', '2015-08-05 00:07:15.726948', '2015-08-05 00:07:15.726948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1749, 32, 'http://kertzmann.name', '2015-08-05 00:07:15.728402', '2015-08-05 00:07:15.728402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1750, 32, 'http://hayes.com', '2015-08-05 00:07:15.730094', '2015-08-05 00:07:15.730094', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1751, 32, 'http://wisoky.info', '2015-08-05 00:07:15.731464', '2015-08-05 00:07:15.731464', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1752, 32, 'http://stroman.net', '2015-08-05 00:07:15.733098', '2015-08-05 00:07:15.733098', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1753, 32, 'http://corkerybahringer.name', '2015-08-05 00:07:15.734564', '2015-08-05 00:07:15.734564', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1754, 32, 'http://grimes.info', '2015-08-05 00:07:15.736068', '2015-08-05 00:07:15.736068', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1755, 32, 'http://metzokeefe.org', '2015-08-05 00:07:15.737398', '2015-08-05 00:07:15.737398', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1756, 32, 'http://baumbach.biz', '2015-08-05 00:07:15.738716', '2015-08-05 00:07:15.738716', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1757, 32, 'http://bergnaum.com', '2015-08-05 00:07:15.740159', '2015-08-05 00:07:15.740159', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1758, 32, 'http://ziemannbalistreri.info', '2015-08-05 00:07:15.741664', '2015-08-05 00:07:15.741664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1759, 32, 'http://crist.name', '2015-08-05 00:07:15.743135', '2015-08-05 00:07:15.743135', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1760, 32, 'http://waters.name', '2015-08-05 00:07:15.744907', '2015-08-05 00:07:15.744907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1761, 32, 'http://treutel.net', '2015-08-05 00:07:15.746365', '2015-08-05 00:07:15.746365', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1762, 32, 'http://klockofeest.com', '2015-08-05 00:07:15.74769', '2015-08-05 00:07:15.74769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1763, 32, 'http://parkerpacocha.info', '2015-08-05 00:07:15.74903', '2015-08-05 00:07:15.74903', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1764, 32, 'http://fahey.net', '2015-08-05 00:07:15.750361', '2015-08-05 00:07:15.750361', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1765, 32, 'http://tremblay.net', '2015-08-05 00:07:15.752694', '2015-08-05 00:07:15.752694', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1766, 32, 'http://boyle.biz', '2015-08-05 00:07:15.754267', '2015-08-05 00:07:15.754267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1767, 32, 'http://collierboyer.info', '2015-08-05 00:07:15.755576', '2015-08-05 00:07:15.755576', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1768, 32, 'http://pagac.net', '2015-08-05 00:07:15.756998', '2015-08-05 00:07:15.756998', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1769, 32, 'http://gibsonzieme.biz', '2015-08-05 00:07:15.758384', '2015-08-05 00:07:15.758384', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1770, 32, 'http://nikolaus.com', '2015-08-05 00:07:15.759766', '2015-08-05 00:07:15.759766', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1771, 32, 'http://kuhnbradtke.org', '2015-08-05 00:07:15.761192', '2015-08-05 00:07:15.761192', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1772, 32, 'http://jerde.com', '2015-08-05 00:07:15.762655', '2015-08-05 00:07:15.762655', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1773, 32, 'http://strosin.biz', '2015-08-05 00:07:15.763803', '2015-08-05 00:07:15.763803', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1774, 32, 'http://bailey.info', '2015-08-05 00:07:15.766299', '2015-08-05 00:07:15.766299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1775, 32, 'http://bashirian.info', '2015-08-05 00:07:15.76807', '2015-08-05 00:07:15.76807', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1776, 32, 'http://lockmankling.info', '2015-08-05 00:07:15.769352', '2015-08-05 00:07:15.769352', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1777, 32, 'http://damore.name', '2015-08-05 00:07:15.770645', '2015-08-05 00:07:15.770645', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1778, 32, 'http://funkcummings.org', '2015-08-05 00:07:15.771948', '2015-08-05 00:07:15.771948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1779, 32, 'http://dickenswuckert.com', '2015-08-05 00:07:15.773122', '2015-08-05 00:07:15.773122', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1780, 32, 'http://mueller.biz', '2015-08-05 00:07:15.774245', '2015-08-05 00:07:15.774245', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1781, 32, 'http://sipes.biz', '2015-08-05 00:07:15.775376', '2015-08-05 00:07:15.775376', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1782, 32, 'http://okon.org', '2015-08-05 00:07:15.776733', '2015-08-05 00:07:15.776733', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1783, 32, 'http://lebsackpadberg.biz', '2015-08-05 00:07:15.777945', '2015-08-05 00:07:15.777945', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1784, 32, 'http://fay.net', '2015-08-05 00:07:15.779131', '2015-08-05 00:07:15.779131', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1785, 32, 'http://hansen.biz', '2015-08-05 00:07:15.781858', '2015-08-05 00:07:15.781858', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1786, 32, 'http://rosenbaum.info', '2015-08-05 00:07:15.783877', '2015-08-05 00:07:15.783877', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1787, 32, 'http://tillman.info', '2015-08-05 00:07:15.785188', '2015-08-05 00:07:15.785188', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1788, 32, 'http://weimann.net', '2015-08-05 00:07:15.786508', '2015-08-05 00:07:15.786508', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1789, 32, 'http://ritchie.org', '2015-08-05 00:07:15.78776', '2015-08-05 00:07:15.78776', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1790, 32, 'http://schaden.name', '2015-08-05 00:07:15.788923', '2015-08-05 00:07:15.788923', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1791, 32, 'http://vandervort.net', '2015-08-05 00:07:15.790158', '2015-08-05 00:07:15.790158', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1792, 32, 'http://runolfsdottirpfeffer.net', '2015-08-05 00:07:15.791528', '2015-08-05 00:07:15.791528', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1793, 32, 'http://schmidt.net', '2015-08-05 00:07:15.79287', '2015-08-05 00:07:15.79287', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1794, 32, 'http://jacobson.info', '2015-08-05 00:07:15.794022', '2015-08-05 00:07:15.794022', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1795, 32, 'http://mante.com', '2015-08-05 00:07:15.795161', '2015-08-05 00:07:15.795161', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1796, 32, 'http://howell.net', '2015-08-05 00:07:15.796313', '2015-08-05 00:07:15.796313', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1797, 32, 'http://witting.com', '2015-08-05 00:07:15.797403', '2015-08-05 00:07:15.797403', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1798, 32, 'http://cartwrightwhite.info', '2015-08-05 00:07:15.798514', '2015-08-05 00:07:15.798514', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1799, 32, 'http://williamson.info', '2015-08-05 00:07:15.79954', '2015-08-05 00:07:15.79954', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1800, 32, 'http://parisianbotsford.biz', '2015-08-05 00:07:15.800598', '2015-08-05 00:07:15.800598', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1801, 33, 'http://carroll.org', '2015-08-05 00:07:16.101186', '2015-08-05 00:07:16.101186', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1802, 33, 'http://schneider.net', '2015-08-05 00:07:16.102644', '2015-08-05 00:07:16.102644', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1803, 33, 'http://herman.net', '2015-08-05 00:07:16.104109', '2015-08-05 00:07:16.104109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1804, 33, 'http://erdman.name', '2015-08-05 00:07:16.105387', '2015-08-05 00:07:16.105387', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1805, 33, 'http://kirlinschulist.name', '2015-08-05 00:07:16.106845', '2015-08-05 00:07:16.106845', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1806, 33, 'http://carrollziemann.com', '2015-08-05 00:07:16.108155', '2015-08-05 00:07:16.108155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1807, 33, 'http://cartwright.com', '2015-08-05 00:07:16.109609', '2015-08-05 00:07:16.109609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1808, 33, 'http://champlinhirthe.net', '2015-08-05 00:07:16.111913', '2015-08-05 00:07:16.111913', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1809, 33, 'http://wyman.info', '2015-08-05 00:07:16.114163', '2015-08-05 00:07:16.114163', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1810, 33, 'http://legrospfannerstill.name', '2015-08-05 00:07:16.115421', '2015-08-05 00:07:16.115421', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1811, 33, 'http://schuster.com', '2015-08-05 00:07:16.116869', '2015-08-05 00:07:16.116869', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1812, 33, 'http://skiles.biz', '2015-08-05 00:07:16.11814', '2015-08-05 00:07:16.11814', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1813, 33, 'http://hermannreynolds.biz', '2015-08-05 00:07:16.119439', '2015-08-05 00:07:16.119439', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1814, 33, 'http://champlin.info', '2015-08-05 00:07:16.120709', '2015-08-05 00:07:16.120709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1815, 33, 'http://hudsonmarvin.com', '2015-08-05 00:07:16.121961', '2015-08-05 00:07:16.121961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1816, 33, 'http://okunevasipes.name', '2015-08-05 00:07:16.123258', '2015-08-05 00:07:16.123258', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1817, 33, 'http://stracke.info', '2015-08-05 00:07:16.124543', '2015-08-05 00:07:16.124543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1818, 33, 'http://stroman.info', '2015-08-05 00:07:16.125761', '2015-08-05 00:07:16.125761', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1819, 33, 'http://bergetoy.info', '2015-08-05 00:07:16.126974', '2015-08-05 00:07:16.126974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1820, 33, 'http://kohler.net', '2015-08-05 00:07:16.128331', '2015-08-05 00:07:16.128331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1821, 33, 'http://braun.name', '2015-08-05 00:07:16.12969', '2015-08-05 00:07:16.12969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1822, 33, 'http://kozey.org', '2015-08-05 00:07:16.130907', '2015-08-05 00:07:16.130907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1823, 33, 'http://boscoaltenwerth.com', '2015-08-05 00:07:16.132075', '2015-08-05 00:07:16.132075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1824, 33, 'http://miller.name', '2015-08-05 00:07:16.133342', '2015-08-05 00:07:16.133342', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1825, 33, 'http://mohrtoy.name', '2015-08-05 00:07:16.134537', '2015-08-05 00:07:16.134537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1826, 33, 'http://stammheel.biz', '2015-08-05 00:07:16.135762', '2015-08-05 00:07:16.135762', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1827, 33, 'http://dach.biz', '2015-08-05 00:07:16.137106', '2015-08-05 00:07:16.137106', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1828, 33, 'http://prohaska.name', '2015-08-05 00:07:16.138303', '2015-08-05 00:07:16.138303', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1829, 33, 'http://kunze.biz', '2015-08-05 00:07:16.139531', '2015-08-05 00:07:16.139531', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1830, 33, 'http://jakubowski.org', '2015-08-05 00:07:16.141947', '2015-08-05 00:07:16.141947', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1831, 33, 'http://lehner.biz', '2015-08-05 00:07:16.144954', '2015-08-05 00:07:16.144954', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1832, 33, 'http://klocko.biz', '2015-08-05 00:07:16.146255', '2015-08-05 00:07:16.146255', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1833, 33, 'http://naderbeer.name', '2015-08-05 00:07:16.147547', '2015-08-05 00:07:16.147547', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1834, 33, 'http://cruickshank.net', '2015-08-05 00:07:16.148881', '2015-08-05 00:07:16.148881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1835, 33, 'http://hirthe.com', '2015-08-05 00:07:16.150277', '2015-08-05 00:07:16.150277', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1836, 33, 'http://labadie.info', '2015-08-05 00:07:16.15145', '2015-08-05 00:07:16.15145', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1837, 33, 'http://bernhard.info', '2015-08-05 00:07:16.152736', '2015-08-05 00:07:16.152736', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1838, 33, 'http://smith.org', '2015-08-05 00:07:16.153808', '2015-08-05 00:07:16.153808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1839, 33, 'http://leuschkevolkman.net', '2015-08-05 00:07:16.154861', '2015-08-05 00:07:16.154861', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1840, 33, 'http://bednar.net', '2015-08-05 00:07:16.156075', '2015-08-05 00:07:16.156075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1841, 33, 'http://adams.com', '2015-08-05 00:07:16.15721', '2015-08-05 00:07:16.15721', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1842, 33, 'http://feeney.info', '2015-08-05 00:07:16.158361', '2015-08-05 00:07:16.158361', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1843, 33, 'http://oberbrunner.info', '2015-08-05 00:07:16.159751', '2015-08-05 00:07:16.159751', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1844, 33, 'http://grimes.biz', '2015-08-05 00:07:16.161091', '2015-08-05 00:07:16.161091', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1845, 33, 'http://smith.com', '2015-08-05 00:07:16.162375', '2015-08-05 00:07:16.162375', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1846, 33, 'http://moore.biz', '2015-08-05 00:07:16.16356', '2015-08-05 00:07:16.16356', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1847, 33, 'http://conn.com', '2015-08-05 00:07:16.164722', '2015-08-05 00:07:16.164722', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1848, 33, 'http://graham.info', '2015-08-05 00:07:16.165807', '2015-08-05 00:07:16.165807', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1849, 33, 'http://kihn.info', '2015-08-05 00:07:16.166842', '2015-08-05 00:07:16.166842', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1850, 33, 'http://price.org', '2015-08-05 00:07:16.16801', '2015-08-05 00:07:16.16801', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1851, 33, 'http://rutherford.biz', '2015-08-05 00:07:16.169258', '2015-08-05 00:07:16.169258', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1852, 33, 'http://balistreri.biz', '2015-08-05 00:07:16.171829', '2015-08-05 00:07:16.171829', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1853, 33, 'http://hodkiewicz.name', '2015-08-05 00:07:16.173921', '2015-08-05 00:07:16.173921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1854, 33, 'http://walker.org', '2015-08-05 00:07:16.175179', '2015-08-05 00:07:16.175179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1855, 33, 'http://reilly.org', '2015-08-05 00:07:16.176414', '2015-08-05 00:07:16.176414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1856, 33, 'http://lehnermedhurst.com', '2015-08-05 00:07:16.177587', '2015-08-05 00:07:16.177587', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1857, 33, 'http://abernathy.net', '2015-08-05 00:07:16.178677', '2015-08-05 00:07:16.178677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1858, 33, 'http://pagac.info', '2015-08-05 00:07:16.179743', '2015-08-05 00:07:16.179743', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1859, 33, 'http://moriette.org', '2015-08-05 00:07:16.180982', '2015-08-05 00:07:16.180982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1860, 33, 'http://schulist.info', '2015-08-05 00:07:16.182364', '2015-08-05 00:07:16.182364', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1861, 33, 'http://terry.net', '2015-08-05 00:07:16.183675', '2015-08-05 00:07:16.183675', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1862, 33, 'http://lednerconnelly.net', '2015-08-05 00:07:16.184912', '2015-08-05 00:07:16.184912', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1863, 33, 'http://predoviccollins.biz', '2015-08-05 00:07:16.186337', '2015-08-05 00:07:16.186337', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1864, 33, 'http://ebertmcglynn.info', '2015-08-05 00:07:16.187488', '2015-08-05 00:07:16.187488', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1865, 33, 'http://jenkins.net', '2015-08-05 00:07:16.188761', '2015-08-05 00:07:16.188761', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1866, 33, 'http://mann.org', '2015-08-05 00:07:16.190269', '2015-08-05 00:07:16.190269', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1867, 33, 'http://hackettconroy.name', '2015-08-05 00:07:16.191701', '2015-08-05 00:07:16.191701', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1868, 33, 'http://kuvalisnienow.com', '2015-08-05 00:07:16.193093', '2015-08-05 00:07:16.193093', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1869, 33, 'http://smitham.info', '2015-08-05 00:07:16.194405', '2015-08-05 00:07:16.194405', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1870, 33, 'http://schummpadberg.net', '2015-08-05 00:07:16.195859', '2015-08-05 00:07:16.195859', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1871, 33, 'http://lind.name', '2015-08-05 00:07:16.197363', '2015-08-05 00:07:16.197363', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1872, 33, 'http://terry.com', '2015-08-05 00:07:16.198969', '2015-08-05 00:07:16.198969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1873, 33, 'http://oberbrunner.name', '2015-08-05 00:07:16.201841', '2015-08-05 00:07:16.201841', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1874, 33, 'http://reynoldslarkin.com', '2015-08-05 00:07:16.203634', '2015-08-05 00:07:16.203634', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1875, 33, 'http://powlowski.net', '2015-08-05 00:07:16.20528', '2015-08-05 00:07:16.20528', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1876, 33, 'http://schuppespencer.biz', '2015-08-05 00:07:16.206662', '2015-08-05 00:07:16.206662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1877, 33, 'http://lockman.biz', '2015-08-05 00:07:16.207993', '2015-08-05 00:07:16.207993', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1878, 33, 'http://carrollkulas.org', '2015-08-05 00:07:16.209357', '2015-08-05 00:07:16.209357', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1879, 33, 'http://okeefe.info', '2015-08-05 00:07:16.2106', '2015-08-05 00:07:16.2106', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1880, 33, 'http://hoppe.info', '2015-08-05 00:07:16.211792', '2015-08-05 00:07:16.211792', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1881, 33, 'http://bosco.info', '2015-08-05 00:07:16.213094', '2015-08-05 00:07:16.213094', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1882, 33, 'http://lang.com', '2015-08-05 00:07:16.21424', '2015-08-05 00:07:16.21424', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1883, 33, 'http://reichert.name', '2015-08-05 00:07:16.215368', '2015-08-05 00:07:16.215368', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1884, 34, 'http://mcglynnrath.info', '2015-08-05 00:07:16.786557', '2015-08-05 00:07:16.786557', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1885, 34, 'http://funk.info', '2015-08-05 00:07:16.788119', '2015-08-05 00:07:16.788119', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1886, 34, 'http://mcculloughvandervort.net', '2015-08-05 00:07:16.789486', '2015-08-05 00:07:16.789486', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1887, 34, 'http://eichmannherzog.org', '2015-08-05 00:07:16.790709', '2015-08-05 00:07:16.790709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1888, 34, 'http://okunevaturner.biz', '2015-08-05 00:07:16.792087', '2015-08-05 00:07:16.792087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1889, 34, 'http://runolfon.info', '2015-08-05 00:07:16.793701', '2015-08-05 00:07:16.793701', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1890, 34, 'http://carroll.info', '2015-08-05 00:07:16.794999', '2015-08-05 00:07:16.794999', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1891, 34, 'http://stehr.name', '2015-08-05 00:07:16.796337', '2015-08-05 00:07:16.796337', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1892, 34, 'http://boehm.name', '2015-08-05 00:07:16.79766', '2015-08-05 00:07:16.79766', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1893, 34, 'http://feilswaniawski.name', '2015-08-05 00:07:16.799287', '2015-08-05 00:07:16.799287', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1894, 34, 'http://davismoore.net', '2015-08-05 00:07:16.800593', '2015-08-05 00:07:16.800593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1895, 34, 'http://mcculloughstroman.com', '2015-08-05 00:07:16.80183', '2015-08-05 00:07:16.80183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1896, 34, 'http://bauchbotsford.biz', '2015-08-05 00:07:16.80313', '2015-08-05 00:07:16.80313', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1897, 34, 'http://mcculloughkautzer.biz', '2015-08-05 00:07:16.80439', '2015-08-05 00:07:16.80439', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1898, 34, 'http://lueilwitz.org', '2015-08-05 00:07:16.805552', '2015-08-05 00:07:16.805552', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1899, 34, 'http://luettgen.info', '2015-08-05 00:07:16.80689', '2015-08-05 00:07:16.80689', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1900, 34, 'http://treutel.name', '2015-08-05 00:07:16.808117', '2015-08-05 00:07:16.808117', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1901, 34, 'http://stroman.org', '2015-08-05 00:07:16.813978', '2015-08-05 00:07:16.813978', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1902, 34, 'http://dickinsonbashirian.net', '2015-08-05 00:07:16.815574', '2015-08-05 00:07:16.815574', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1903, 34, 'http://hageneshalvorson.biz', '2015-08-05 00:07:16.816986', '2015-08-05 00:07:16.816986', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1904, 34, 'http://gloverfritsch.name', '2015-08-05 00:07:16.81828', '2015-08-05 00:07:16.81828', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1905, 34, 'http://kunzehaley.com', '2015-08-05 00:07:16.819409', '2015-08-05 00:07:16.819409', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1906, 34, 'http://dare.biz', '2015-08-05 00:07:16.821959', '2015-08-05 00:07:16.821959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1907, 34, 'http://cormier.org', '2015-08-05 00:07:16.824109', '2015-08-05 00:07:16.824109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1908, 34, 'http://streich.org', '2015-08-05 00:07:16.825343', '2015-08-05 00:07:16.825343', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1909, 34, 'http://keebler.name', '2015-08-05 00:07:16.826523', '2015-08-05 00:07:16.826523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1910, 34, 'http://tillman.net', '2015-08-05 00:07:16.827739', '2015-08-05 00:07:16.827739', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1911, 34, 'http://krajcik.info', '2015-08-05 00:07:16.829041', '2015-08-05 00:07:16.829041', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1912, 34, 'http://keler.net', '2015-08-05 00:07:16.830371', '2015-08-05 00:07:16.830371', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1913, 34, 'http://ward.name', '2015-08-05 00:07:16.831838', '2015-08-05 00:07:16.831838', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1914, 34, 'http://hegmann.name', '2015-08-05 00:07:16.833196', '2015-08-05 00:07:16.833196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1915, 34, 'http://wolf.name', '2015-08-05 00:07:16.834545', '2015-08-05 00:07:16.834545', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1916, 34, 'http://frami.name', '2015-08-05 00:07:16.835852', '2015-08-05 00:07:16.835852', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1917, 34, 'http://skiles.biz', '2015-08-05 00:07:16.837144', '2015-08-05 00:07:16.837144', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1918, 34, 'http://zboncak.net', '2015-08-05 00:07:16.838317', '2015-08-05 00:07:16.838317', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1919, 34, 'http://swift.name', '2015-08-05 00:07:16.839595', '2015-08-05 00:07:16.839595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1920, 34, 'http://schiller.info', '2015-08-05 00:07:16.841131', '2015-08-05 00:07:16.841131', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1921, 34, 'http://hansen.info', '2015-08-05 00:07:16.842693', '2015-08-05 00:07:16.842693', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1922, 34, 'http://cronahayes.net', '2015-08-05 00:07:16.843906', '2015-08-05 00:07:16.843906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1923, 34, 'http://kautzer.org', '2015-08-05 00:07:16.845232', '2015-08-05 00:07:16.845232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1924, 34, 'http://towneosinski.com', '2015-08-05 00:07:16.846652', '2015-08-05 00:07:16.846652', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1925, 34, 'http://yundt.name', '2015-08-05 00:07:16.847887', '2015-08-05 00:07:16.847887', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1926, 34, 'http://dickinson.info', '2015-08-05 00:07:16.848987', '2015-08-05 00:07:16.848987', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1927, 34, 'http://harris.name', '2015-08-05 00:07:16.84999', '2015-08-05 00:07:16.84999', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1928, 34, 'http://price.net', '2015-08-05 00:07:16.851858', '2015-08-05 00:07:16.851858', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1929, 34, 'http://effertzwelch.org', '2015-08-05 00:07:16.853762', '2015-08-05 00:07:16.853762', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1930, 34, 'http://nicolas.com', '2015-08-05 00:07:16.854763', '2015-08-05 00:07:16.854763', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1931, 34, 'http://jones.org', '2015-08-05 00:07:16.855921', '2015-08-05 00:07:16.855921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1932, 34, 'http://lehnerkutch.com', '2015-08-05 00:07:16.857288', '2015-08-05 00:07:16.857288', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1933, 34, 'http://jenkins.biz', '2015-08-05 00:07:16.858718', '2015-08-05 00:07:16.858718', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1934, 34, 'http://hilperthermann.net', '2015-08-05 00:07:16.860054', '2015-08-05 00:07:16.860054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1935, 34, 'http://rosenbaum.net', '2015-08-05 00:07:16.861185', '2015-08-05 00:07:16.861185', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1936, 34, 'http://hilpertluettgen.info', '2015-08-05 00:07:16.862299', '2015-08-05 00:07:16.862299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1937, 34, 'http://armstrong.biz', '2015-08-05 00:07:16.863409', '2015-08-05 00:07:16.863409', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1938, 34, 'http://auer.org', '2015-08-05 00:07:16.864464', '2015-08-05 00:07:16.864464', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1939, 34, 'http://schuppeblick.name', '2015-08-05 00:07:16.865472', '2015-08-05 00:07:16.865472', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1940, 34, 'http://larkin.biz', '2015-08-05 00:07:16.866598', '2015-08-05 00:07:16.866598', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1941, 34, 'http://breitenberg.name', '2015-08-05 00:07:16.867753', '2015-08-05 00:07:16.867753', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1942, 34, 'http://emard.net', '2015-08-05 00:07:16.868868', '2015-08-05 00:07:16.868868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1943, 34, 'http://aufderharprice.com', '2015-08-05 00:07:16.869881', '2015-08-05 00:07:16.869881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1944, 34, 'http://murphyrowe.net', '2015-08-05 00:07:16.870871', '2015-08-05 00:07:16.870871', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1945, 34, 'http://senger.net', '2015-08-05 00:07:16.871887', '2015-08-05 00:07:16.871887', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1946, 34, 'http://mraz.net', '2015-08-05 00:07:16.872899', '2015-08-05 00:07:16.872899', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1947, 34, 'http://little.com', '2015-08-05 00:07:16.873899', '2015-08-05 00:07:16.873899', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1948, 34, 'http://ruelmayer.name', '2015-08-05 00:07:16.874983', '2015-08-05 00:07:16.874983', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1949, 34, 'http://rohan.biz', '2015-08-05 00:07:16.876404', '2015-08-05 00:07:16.876404', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1950, 34, 'http://ernserstamm.biz', '2015-08-05 00:07:16.877836', '2015-08-05 00:07:16.877836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1951, 34, 'http://welch.name', '2015-08-05 00:07:16.879168', '2015-08-05 00:07:16.879168', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1952, 34, 'http://considine.biz', '2015-08-05 00:07:16.881828', '2015-08-05 00:07:16.881828', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1953, 34, 'http://bernhard.info', '2015-08-05 00:07:16.883773', '2015-08-05 00:07:16.883773', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1954, 34, 'http://bradtke.com', '2015-08-05 00:07:16.885087', '2015-08-05 00:07:16.885087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1955, 34, 'http://huel.org', '2015-08-05 00:07:16.886365', '2015-08-05 00:07:16.886365', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1956, 34, 'http://kshlerin.name', '2015-08-05 00:07:16.887606', '2015-08-05 00:07:16.887606', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1957, 34, 'http://hoppebeer.biz', '2015-08-05 00:07:16.888784', '2015-08-05 00:07:16.888784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1958, 34, 'http://lindgren.biz', '2015-08-05 00:07:16.890135', '2015-08-05 00:07:16.890135', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1959, 34, 'http://corkery.name', '2015-08-05 00:07:16.891227', '2015-08-05 00:07:16.891227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1960, 34, 'http://bailey.net', '2015-08-05 00:07:16.892388', '2015-08-05 00:07:16.892388', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1961, 34, 'http://spencer.com', '2015-08-05 00:07:16.893493', '2015-08-05 00:07:16.893493', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1962, 34, 'http://jakubowski.org', '2015-08-05 00:07:16.894664', '2015-08-05 00:07:16.894664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1963, 34, 'http://feest.net', '2015-08-05 00:07:16.895978', '2015-08-05 00:07:16.895978', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1964, 34, 'http://shanahan.biz', '2015-08-05 00:07:16.897175', '2015-08-05 00:07:16.897175', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1965, 34, 'http://stehr.net', '2015-08-05 00:07:16.898452', '2015-08-05 00:07:16.898452', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1966, 34, 'http://oreilly.net', '2015-08-05 00:07:16.899781', '2015-08-05 00:07:16.899781', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1967, 35, 'http://bradtke.info', '2015-08-05 00:07:16.999711', '2015-08-05 00:07:16.999711', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1968, 35, 'http://ankundinghaley.com', '2015-08-05 00:07:17.001268', '2015-08-05 00:07:17.001268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1969, 35, 'http://hoppe.name', '2015-08-05 00:07:17.002774', '2015-08-05 00:07:17.002774', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1970, 35, 'http://heller.biz', '2015-08-05 00:07:17.004275', '2015-08-05 00:07:17.004275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1971, 35, 'http://hirthe.com', '2015-08-05 00:07:17.005704', '2015-08-05 00:07:17.005704', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1972, 35, 'http://larkin.name', '2015-08-05 00:07:17.006854', '2015-08-05 00:07:17.006854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1973, 35, 'http://pfeffer.net', '2015-08-05 00:07:17.00803', '2015-08-05 00:07:17.00803', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1974, 35, 'http://croninnolan.biz', '2015-08-05 00:07:17.009353', '2015-08-05 00:07:17.009353', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1975, 35, 'http://botsford.name', '2015-08-05 00:07:17.011966', '2015-08-05 00:07:17.011966', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1976, 35, 'http://kemmer.com', '2015-08-05 00:07:17.014348', '2015-08-05 00:07:17.014348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1977, 35, 'http://bodefay.net', '2015-08-05 00:07:17.01572', '2015-08-05 00:07:17.01572', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1978, 35, 'http://rau.name', '2015-08-05 00:07:17.017005', '2015-08-05 00:07:17.017005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1979, 35, 'http://hansen.net', '2015-08-05 00:07:17.01836', '2015-08-05 00:07:17.01836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1980, 35, 'http://prosacco.name', '2015-08-05 00:07:17.019762', '2015-08-05 00:07:17.019762', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1981, 35, 'http://bahringervonrueden.biz', '2015-08-05 00:07:17.021036', '2015-08-05 00:07:17.021036', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1982, 35, 'http://pfeffer.com', '2015-08-05 00:07:17.022249', '2015-08-05 00:07:17.022249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1983, 35, 'http://pacocha.info', '2015-08-05 00:07:17.023604', '2015-08-05 00:07:17.023604', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1984, 35, 'http://satterfield.com', '2015-08-05 00:07:17.025001', '2015-08-05 00:07:17.025001', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1985, 35, 'http://jacobs.biz', '2015-08-05 00:07:17.02627', '2015-08-05 00:07:17.02627', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1986, 35, 'http://reynoldsmccullough.com', '2015-08-05 00:07:17.027672', '2015-08-05 00:07:17.027672', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1987, 35, 'http://dooley.name', '2015-08-05 00:07:17.028904', '2015-08-05 00:07:17.028904', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1988, 35, 'http://mante.name', '2015-08-05 00:07:17.030205', '2015-08-05 00:07:17.030205', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1989, 35, 'http://beckerbayer.org', '2015-08-05 00:07:17.03147', '2015-08-05 00:07:17.03147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1990, 35, 'http://ortiz.com', '2015-08-05 00:07:17.032815', '2015-08-05 00:07:17.032815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1991, 35, 'http://reynolds.info', '2015-08-05 00:07:17.034158', '2015-08-05 00:07:17.034158', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1992, 35, 'http://little.net', '2015-08-05 00:07:17.035402', '2015-08-05 00:07:17.035402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1993, 35, 'http://schambergerconsidine.net', '2015-08-05 00:07:17.036502', '2015-08-05 00:07:17.036502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1994, 35, 'http://armstrong.net', '2015-08-05 00:07:17.037694', '2015-08-05 00:07:17.037694', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1995, 35, 'http://langosh.name', '2015-08-05 00:07:17.03908', '2015-08-05 00:07:17.03908', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1996, 35, 'http://denesik.name', '2015-08-05 00:07:17.041892', '2015-08-05 00:07:17.041892', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1997, 35, 'http://hahn.net', '2015-08-05 00:07:17.04332', '2015-08-05 00:07:17.04332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1998, 35, 'http://dach.org', '2015-08-05 00:07:17.044652', '2015-08-05 00:07:17.044652', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (1999, 35, 'http://von.biz', '2015-08-05 00:07:17.045912', '2015-08-05 00:07:17.045912', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2000, 35, 'http://rath.net', '2015-08-05 00:07:17.04717', '2015-08-05 00:07:17.04717', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2001, 35, 'http://predovic.info', '2015-08-05 00:07:17.048549', '2015-08-05 00:07:17.048549', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2002, 36, 'http://brown.name', '2015-08-05 00:07:17.551534', '2015-08-05 00:07:17.551534', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2003, 36, 'http://harvey.com', '2015-08-05 00:07:17.553134', '2015-08-05 00:07:17.553134', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2004, 36, 'http://romaguera.name', '2015-08-05 00:07:17.554556', '2015-08-05 00:07:17.554556', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2005, 36, 'http://stamm.info', '2015-08-05 00:07:17.556084', '2015-08-05 00:07:17.556084', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2006, 36, 'http://oharakuhic.info', '2015-08-05 00:07:17.557448', '2015-08-05 00:07:17.557448', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2007, 36, 'http://connstroman.biz', '2015-08-05 00:07:17.558778', '2015-08-05 00:07:17.558778', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2008, 36, 'http://borerhaag.name', '2015-08-05 00:07:17.560127', '2015-08-05 00:07:17.560127', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2009, 36, 'http://stiedemann.com', '2015-08-05 00:07:17.561403', '2015-08-05 00:07:17.561403', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2010, 36, 'http://hettinger.name', '2015-08-05 00:07:17.562721', '2015-08-05 00:07:17.562721', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2011, 36, 'http://zieme.com', '2015-08-05 00:07:17.564304', '2015-08-05 00:07:17.564304', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2012, 36, 'http://kubgerhold.com', '2015-08-05 00:07:17.565608', '2015-08-05 00:07:17.565608', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2013, 36, 'http://bechtelarmonahan.name', '2015-08-05 00:07:17.566949', '2015-08-05 00:07:17.566949', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2014, 36, 'http://vandervort.name', '2015-08-05 00:07:17.568205', '2015-08-05 00:07:17.568205', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2015, 36, 'http://deckow.com', '2015-08-05 00:07:17.569645', '2015-08-05 00:07:17.569645', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2016, 36, 'http://becker.biz', '2015-08-05 00:07:17.571045', '2015-08-05 00:07:17.571045', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2017, 36, 'http://volkman.com', '2015-08-05 00:07:17.572326', '2015-08-05 00:07:17.572326', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2018, 36, 'http://herman.name', '2015-08-05 00:07:17.573642', '2015-08-05 00:07:17.573642', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2019, 36, 'http://jones.biz', '2015-08-05 00:07:17.574832', '2015-08-05 00:07:17.574832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2020, 36, 'http://ernser.info', '2015-08-05 00:07:17.57589', '2015-08-05 00:07:17.57589', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2021, 36, 'http://andersonhodkiewicz.com', '2015-08-05 00:07:17.576961', '2015-08-05 00:07:17.576961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2022, 36, 'http://feil.net', '2015-08-05 00:07:17.578126', '2015-08-05 00:07:17.578126', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2023, 36, 'http://wisozk.biz', '2015-08-05 00:07:17.579861', '2015-08-05 00:07:17.579861', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2024, 36, 'http://raynor.net', '2015-08-05 00:07:17.582005', '2015-08-05 00:07:17.582005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2025, 36, 'http://crookshauck.net', '2015-08-05 00:07:17.583399', '2015-08-05 00:07:17.583399', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2026, 36, 'http://ruellubowitz.biz', '2015-08-05 00:07:17.584492', '2015-08-05 00:07:17.584492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2027, 36, 'http://nader.info', '2015-08-05 00:07:17.585539', '2015-08-05 00:07:17.585539', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2028, 36, 'http://ritchie.info', '2015-08-05 00:07:17.586563', '2015-08-05 00:07:17.586563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2029, 36, 'http://weimann.org', '2015-08-05 00:07:17.587671', '2015-08-05 00:07:17.587671', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2030, 36, 'http://waters.info', '2015-08-05 00:07:17.588791', '2015-08-05 00:07:17.588791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2031, 36, 'http://willmsmurazik.info', '2015-08-05 00:07:17.589924', '2015-08-05 00:07:17.589924', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2032, 36, 'http://kleinsimonis.com', '2015-08-05 00:07:17.590957', '2015-08-05 00:07:17.590957', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2033, 36, 'http://kleingraham.info', '2015-08-05 00:07:17.592137', '2015-08-05 00:07:17.592137', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2034, 36, 'http://mannhegmann.org', '2015-08-05 00:07:17.59335', '2015-08-05 00:07:17.59335', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2035, 36, 'http://huelsboyer.net', '2015-08-05 00:07:17.594728', '2015-08-05 00:07:17.594728', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2036, 36, 'http://schuster.info', '2015-08-05 00:07:17.595987', '2015-08-05 00:07:17.595987', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2037, 36, 'http://champlin.name', '2015-08-05 00:07:17.59731', '2015-08-05 00:07:17.59731', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2038, 36, 'http://effertzbergstrom.com', '2015-08-05 00:07:17.598703', '2015-08-05 00:07:17.598703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2039, 36, 'http://hyatt.biz', '2015-08-05 00:07:17.600049', '2015-08-05 00:07:17.600049', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2040, 36, 'http://kshlerin.com', '2015-08-05 00:07:17.601207', '2015-08-05 00:07:17.601207', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2041, 36, 'http://boganlabadie.org', '2015-08-05 00:07:17.602378', '2015-08-05 00:07:17.602378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2042, 36, 'http://walsh.net', '2015-08-05 00:07:17.603447', '2015-08-05 00:07:17.603447', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2043, 36, 'http://cremin.name', '2015-08-05 00:07:17.604735', '2015-08-05 00:07:17.604735', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2044, 36, 'http://ritchiecummings.info', '2015-08-05 00:07:17.606058', '2015-08-05 00:07:17.606058', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2045, 36, 'http://kertzmann.info', '2015-08-05 00:07:17.607155', '2015-08-05 00:07:17.607155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2046, 36, 'http://keler.net', '2015-08-05 00:07:17.608229', '2015-08-05 00:07:17.608229', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2047, 36, 'http://robel.net', '2015-08-05 00:07:17.60931', '2015-08-05 00:07:17.60931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2048, 36, 'http://abshireshields.net', '2015-08-05 00:07:17.612153', '2015-08-05 00:07:17.612153', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2049, 36, 'http://goldner.net', '2015-08-05 00:07:17.613587', '2015-08-05 00:07:17.613587', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2050, 36, 'http://king.info', '2015-08-05 00:07:17.61493', '2015-08-05 00:07:17.61493', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2051, 36, 'http://klocko.net', '2015-08-05 00:07:17.616038', '2015-08-05 00:07:17.616038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2052, 36, 'http://kozeynader.name', '2015-08-05 00:07:17.617096', '2015-08-05 00:07:17.617096', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2053, 36, 'http://kub.biz', '2015-08-05 00:07:17.618153', '2015-08-05 00:07:17.618153', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2054, 36, 'http://green.org', '2015-08-05 00:07:17.619147', '2015-08-05 00:07:17.619147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2055, 36, 'http://gutkowskirogahn.com', '2015-08-05 00:07:17.620202', '2015-08-05 00:07:17.620202', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2056, 36, 'http://hayes.net', '2015-08-05 00:07:17.621272', '2015-08-05 00:07:17.621272', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2057, 36, 'http://feest.biz', '2015-08-05 00:07:17.622348', '2015-08-05 00:07:17.622348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2058, 36, 'http://little.biz', '2015-08-05 00:07:17.623524', '2015-08-05 00:07:17.623524', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2059, 36, 'http://bahringer.name', '2015-08-05 00:07:17.624583', '2015-08-05 00:07:17.624583', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2060, 36, 'http://quitzon.info', '2015-08-05 00:07:17.625756', '2015-08-05 00:07:17.625756', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2061, 36, 'http://zulauf.com', '2015-08-05 00:07:17.627073', '2015-08-05 00:07:17.627073', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2062, 36, 'http://franeckigrant.name', '2015-08-05 00:07:17.628502', '2015-08-05 00:07:17.628502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2063, 36, 'http://schimmel.com', '2015-08-05 00:07:17.629883', '2015-08-05 00:07:17.629883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2064, 36, 'http://walker.biz', '2015-08-05 00:07:17.631047', '2015-08-05 00:07:17.631047', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2065, 36, 'http://sauer.org', '2015-08-05 00:07:17.632223', '2015-08-05 00:07:17.632223', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2066, 36, 'http://macejkovic.net', '2015-08-05 00:07:17.633578', '2015-08-05 00:07:17.633578', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2067, 36, 'http://cronineffertz.biz', '2015-08-05 00:07:17.63475', '2015-08-05 00:07:17.63475', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2068, 36, 'http://jakubowski.name', '2015-08-05 00:07:17.635866', '2015-08-05 00:07:17.635866', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2069, 36, 'http://roberts.net', '2015-08-05 00:07:17.63696', '2015-08-05 00:07:17.63696', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2070, 36, 'http://wilkinson.net', '2015-08-05 00:07:17.638323', '2015-08-05 00:07:17.638323', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2071, 36, 'http://paucek.org', '2015-08-05 00:07:17.639629', '2015-08-05 00:07:17.639629', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2072, 36, 'http://larsonmorar.biz', '2015-08-05 00:07:17.640891', '2015-08-05 00:07:17.640891', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2073, 36, 'http://veumwindler.biz', '2015-08-05 00:07:17.643083', '2015-08-05 00:07:17.643083', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2074, 36, 'http://mcclure.name', '2015-08-05 00:07:17.644519', '2015-08-05 00:07:17.644519', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2075, 36, 'http://gleasonjohnston.net', '2015-08-05 00:07:17.645584', '2015-08-05 00:07:17.645584', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2076, 36, 'http://schummgutkowski.com', '2015-08-05 00:07:17.646757', '2015-08-05 00:07:17.646757', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2077, 36, 'http://effertzyundt.name', '2015-08-05 00:07:17.648107', '2015-08-05 00:07:17.648107', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2078, 36, 'http://gerlach.info', '2015-08-05 00:07:17.649453', '2015-08-05 00:07:17.649453', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2079, 36, 'http://mosciski.biz', '2015-08-05 00:07:17.650755', '2015-08-05 00:07:17.650755', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2080, 36, 'http://fritsch.biz', '2015-08-05 00:07:17.652122', '2015-08-05 00:07:17.652122', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2081, 36, 'http://barton.net', '2015-08-05 00:07:17.653457', '2015-08-05 00:07:17.653457', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2082, 36, 'http://rowepredovic.com', '2015-08-05 00:07:17.65455', '2015-08-05 00:07:17.65455', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2083, 36, 'http://adams.biz', '2015-08-05 00:07:17.655674', '2015-08-05 00:07:17.655674', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2084, 36, 'http://andersonlind.name', '2015-08-05 00:07:17.656944', '2015-08-05 00:07:17.656944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2085, 37, 'http://stiedemanndoyle.net', '2015-08-05 00:07:18.048605', '2015-08-05 00:07:18.048605', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2086, 37, 'http://damore.name', '2015-08-05 00:07:18.05003', '2015-08-05 00:07:18.05003', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2087, 37, 'http://upton.net', '2015-08-05 00:07:18.051494', '2015-08-05 00:07:18.051494', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2088, 37, 'http://cartwrightstoltenberg.name', '2015-08-05 00:07:18.052943', '2015-08-05 00:07:18.052943', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2089, 37, 'http://greenholtjacobson.name', '2015-08-05 00:07:18.054199', '2015-08-05 00:07:18.054199', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2090, 37, 'http://auerheller.com', '2015-08-05 00:07:18.055502', '2015-08-05 00:07:18.055502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2091, 37, 'http://fritsch.biz', '2015-08-05 00:07:18.056939', '2015-08-05 00:07:18.056939', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2092, 37, 'http://pacocha.info', '2015-08-05 00:07:18.058265', '2015-08-05 00:07:18.058265', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2093, 37, 'http://klein.net', '2015-08-05 00:07:18.05976', '2015-08-05 00:07:18.05976', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2094, 37, 'http://hamillbradtke.com', '2015-08-05 00:07:18.061108', '2015-08-05 00:07:18.061108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2095, 37, 'http://reilly.org', '2015-08-05 00:07:18.062262', '2015-08-05 00:07:18.062262', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2096, 37, 'http://botsford.org', '2015-08-05 00:07:18.0634', '2015-08-05 00:07:18.0634', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2097, 37, 'http://runte.name', '2015-08-05 00:07:18.064512', '2015-08-05 00:07:18.064512', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2098, 37, 'http://wolff.net', '2015-08-05 00:07:18.065832', '2015-08-05 00:07:18.065832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2099, 37, 'http://franecki.net', '2015-08-05 00:07:18.067064', '2015-08-05 00:07:18.067064', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2100, 37, 'http://tillman.biz', '2015-08-05 00:07:18.068477', '2015-08-05 00:07:18.068477', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2101, 37, 'http://mertz.org', '2015-08-05 00:07:18.069598', '2015-08-05 00:07:18.069598', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2102, 37, 'http://johns.net', '2015-08-05 00:07:18.071068', '2015-08-05 00:07:18.071068', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2103, 37, 'http://stokesfay.name', '2015-08-05 00:07:18.072138', '2015-08-05 00:07:18.072138', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2104, 37, 'http://oconnerwolf.info', '2015-08-05 00:07:18.073213', '2015-08-05 00:07:18.073213', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2105, 37, 'http://bogisich.name', '2015-08-05 00:07:18.074454', '2015-08-05 00:07:18.074454', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2106, 37, 'http://ebertbrown.net', '2015-08-05 00:07:18.075906', '2015-08-05 00:07:18.075906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2107, 37, 'http://jacobs.org', '2015-08-05 00:07:18.077271', '2015-08-05 00:07:18.077271', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2108, 37, 'http://stroman.biz', '2015-08-05 00:07:18.078489', '2015-08-05 00:07:18.078489', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2109, 37, 'http://will.org', '2015-08-05 00:07:18.079674', '2015-08-05 00:07:18.079674', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2110, 37, 'http://pagacmonahan.org', '2015-08-05 00:07:18.081784', '2015-08-05 00:07:18.081784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2111, 37, 'http://rosenbaum.name', '2015-08-05 00:07:18.083669', '2015-08-05 00:07:18.083669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2112, 37, 'http://schuppe.com', '2015-08-05 00:07:18.084955', '2015-08-05 00:07:18.084955', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2113, 37, 'http://ledner.info', '2015-08-05 00:07:18.086227', '2015-08-05 00:07:18.086227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2114, 37, 'http://donnellybeer.net', '2015-08-05 00:07:18.0874', '2015-08-05 00:07:18.0874', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2115, 37, 'http://smith.info', '2015-08-05 00:07:18.088641', '2015-08-05 00:07:18.088641', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2116, 37, 'http://blandacain.name', '2015-08-05 00:07:18.089972', '2015-08-05 00:07:18.089972', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2117, 37, 'http://cain.org', '2015-08-05 00:07:18.091177', '2015-08-05 00:07:18.091177', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2118, 37, 'http://rosenbaum.com', '2015-08-05 00:07:18.09235', '2015-08-05 00:07:18.09235', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2119, 37, 'http://grimes.com', '2015-08-05 00:07:18.09342', '2015-08-05 00:07:18.09342', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2120, 37, 'http://glover.org', '2015-08-05 00:07:18.098433', '2015-08-05 00:07:18.098433', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2121, 37, 'http://ko.biz', '2015-08-05 00:07:18.100024', '2015-08-05 00:07:18.100024', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2122, 37, 'http://walker.net', '2015-08-05 00:07:18.101427', '2015-08-05 00:07:18.101427', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2123, 37, 'http://labadiehickle.org', '2015-08-05 00:07:18.102696', '2015-08-05 00:07:18.102696', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2124, 37, 'http://heel.com', '2015-08-05 00:07:18.104022', '2015-08-05 00:07:18.104022', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2125, 37, 'http://kiehnkertzmann.info', '2015-08-05 00:07:18.105176', '2015-08-05 00:07:18.105176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2126, 37, 'http://hartmann.info', '2015-08-05 00:07:18.106457', '2015-08-05 00:07:18.106457', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2127, 37, 'http://gusikowski.net', '2015-08-05 00:07:18.107832', '2015-08-05 00:07:18.107832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2128, 37, 'http://nitzsche.biz', '2015-08-05 00:07:18.1092', '2015-08-05 00:07:18.1092', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2129, 37, 'http://jacobs.info', '2015-08-05 00:07:18.110439', '2015-08-05 00:07:18.110439', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2130, 37, 'http://rogahn.org', '2015-08-05 00:07:18.111921', '2015-08-05 00:07:18.111921', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2131, 37, 'http://block.net', '2015-08-05 00:07:18.113249', '2015-08-05 00:07:18.113249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2132, 37, 'http://ferry.org', '2015-08-05 00:07:18.114466', '2015-08-05 00:07:18.114466', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2133, 37, 'http://reilly.biz', '2015-08-05 00:07:18.115817', '2015-08-05 00:07:18.115817', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2134, 37, 'http://jakubowski.name', '2015-08-05 00:07:18.117064', '2015-08-05 00:07:18.117064', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2135, 37, 'http://luettgenrunolfon.org', '2015-08-05 00:07:18.118266', '2015-08-05 00:07:18.118266', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2136, 37, 'http://gerhold.biz', '2015-08-05 00:07:18.119408', '2015-08-05 00:07:18.119408', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2137, 37, 'http://fadelpaucek.name', '2015-08-05 00:07:18.121874', '2015-08-05 00:07:18.121874', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2138, 37, 'http://bins.name', '2015-08-05 00:07:18.123815', '2015-08-05 00:07:18.123815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2139, 37, 'http://terryhodkiewicz.org', '2015-08-05 00:07:18.125124', '2015-08-05 00:07:18.125124', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2140, 37, 'http://marquardtblick.net', '2015-08-05 00:07:18.126396', '2015-08-05 00:07:18.126396', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2141, 38, 'http://kuvalismante.com', '2015-08-05 00:07:18.919798', '2015-08-05 00:07:18.919798', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2142, 38, 'http://keebler.info', '2015-08-05 00:07:18.921274', '2015-08-05 00:07:18.921274', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2143, 38, 'http://padbergmurphy.net', '2015-08-05 00:07:18.922696', '2015-08-05 00:07:18.922696', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2144, 38, 'http://rempel.info', '2015-08-05 00:07:18.924099', '2015-08-05 00:07:18.924099', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2145, 38, 'http://macejkovic.net', '2015-08-05 00:07:18.92551', '2015-08-05 00:07:18.92551', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2146, 38, 'http://schroederdietrich.com', '2015-08-05 00:07:18.926835', '2015-08-05 00:07:18.926835', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2147, 38, 'http://bruen.org', '2015-08-05 00:07:18.928248', '2015-08-05 00:07:18.928248', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2148, 38, 'http://howellschaefer.info', '2015-08-05 00:07:18.929503', '2015-08-05 00:07:18.929503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2149, 38, 'http://bartellpollich.info', '2015-08-05 00:07:18.930791', '2015-08-05 00:07:18.930791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2150, 38, 'http://hills.name', '2015-08-05 00:07:18.93228', '2015-08-05 00:07:18.93228', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2151, 38, 'http://schultz.info', '2015-08-05 00:07:18.933665', '2015-08-05 00:07:18.933665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2152, 38, 'http://kuhic.net', '2015-08-05 00:07:18.935006', '2015-08-05 00:07:18.935006', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2153, 38, 'http://mantesporer.com', '2015-08-05 00:07:18.936462', '2015-08-05 00:07:18.936462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2154, 38, 'http://mayertmonahan.biz', '2015-08-05 00:07:18.937818', '2015-08-05 00:07:18.937818', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2155, 38, 'http://beerhowe.name', '2015-08-05 00:07:18.939084', '2015-08-05 00:07:18.939084', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2156, 38, 'http://jacobi.info', '2015-08-05 00:07:18.940171', '2015-08-05 00:07:18.940171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2157, 38, 'http://baileymetz.net', '2015-08-05 00:07:18.942168', '2015-08-05 00:07:18.942168', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2158, 38, 'http://hilpert.name', '2015-08-05 00:07:18.943437', '2015-08-05 00:07:18.943437', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2159, 38, 'http://kaulke.biz', '2015-08-05 00:07:18.944857', '2015-08-05 00:07:18.944857', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2160, 38, 'http://yostbruen.org', '2015-08-05 00:07:18.946173', '2015-08-05 00:07:18.946173', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2161, 38, 'http://heidenreichbaumbach.biz', '2015-08-05 00:07:18.947475', '2015-08-05 00:07:18.947475', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2162, 38, 'http://sporer.org', '2015-08-05 00:07:18.949039', '2015-08-05 00:07:18.949039', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2163, 38, 'http://lindgren.org', '2015-08-05 00:07:18.950523', '2015-08-05 00:07:18.950523', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2164, 38, 'http://romaguera.org', '2015-08-05 00:07:18.951786', '2015-08-05 00:07:18.951786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2165, 38, 'http://leffler.biz', '2015-08-05 00:07:18.952951', '2015-08-05 00:07:18.952951', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2166, 38, 'http://purdychamplin.name', '2015-08-05 00:07:18.954182', '2015-08-05 00:07:18.954182', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2167, 38, 'http://armstrong.biz', '2015-08-05 00:07:18.955424', '2015-08-05 00:07:18.955424', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2168, 38, 'http://cruickshank.name', '2015-08-05 00:07:18.956662', '2015-08-05 00:07:18.956662', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2169, 38, 'http://blanda.net', '2015-08-05 00:07:18.957941', '2015-08-05 00:07:18.957941', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2170, 38, 'http://conroy.com', '2015-08-05 00:07:18.959114', '2015-08-05 00:07:18.959114', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2171, 38, 'http://heel.org', '2015-08-05 00:07:18.960389', '2015-08-05 00:07:18.960389', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2172, 38, 'http://turner.info', '2015-08-05 00:07:18.961593', '2015-08-05 00:07:18.961593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2173, 38, 'http://corkery.name', '2015-08-05 00:07:18.962822', '2015-08-05 00:07:18.962822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2174, 38, 'http://beatty.net', '2015-08-05 00:07:18.963979', '2015-08-05 00:07:18.963979', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2175, 38, 'http://gerholdtromp.biz', '2015-08-05 00:07:18.96504', '2015-08-05 00:07:18.96504', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2176, 38, 'http://ziemeshields.info', '2015-08-05 00:07:18.966388', '2015-08-05 00:07:18.966388', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2177, 38, 'http://maggio.info', '2015-08-05 00:07:18.967669', '2015-08-05 00:07:18.967669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2178, 38, 'http://wilkinson.org', '2015-08-05 00:07:18.969046', '2015-08-05 00:07:18.969046', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2179, 38, 'http://roob.biz', '2015-08-05 00:07:18.970298', '2015-08-05 00:07:18.970298', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2180, 38, 'http://howe.biz', '2015-08-05 00:07:18.972415', '2015-08-05 00:07:18.972415', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2181, 38, 'http://oconnellcremin.org', '2015-08-05 00:07:18.973925', '2015-08-05 00:07:18.973925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2182, 38, 'http://stehr.com', '2015-08-05 00:07:18.975428', '2015-08-05 00:07:18.975428', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2183, 38, 'http://leannon.org', '2015-08-05 00:07:18.97668', '2015-08-05 00:07:18.97668', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2184, 38, 'http://hayesprohaska.com', '2015-08-05 00:07:18.978024', '2015-08-05 00:07:18.978024', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2185, 38, 'http://runolfsdottir.net', '2015-08-05 00:07:18.979368', '2015-08-05 00:07:18.979368', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2186, 38, 'http://gleichner.info', '2015-08-05 00:07:18.980779', '2015-08-05 00:07:18.980779', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2187, 38, 'http://mosciski.org', '2015-08-05 00:07:18.982065', '2015-08-05 00:07:18.982065', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2188, 38, 'http://weber.biz', '2015-08-05 00:07:18.983332', '2015-08-05 00:07:18.983332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2189, 38, 'http://hudsonledner.net', '2015-08-05 00:07:18.984615', '2015-08-05 00:07:18.984615', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2190, 38, 'http://strackegleichner.biz', '2015-08-05 00:07:18.985894', '2015-08-05 00:07:18.985894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2191, 38, 'http://haley.info', '2015-08-05 00:07:18.987123', '2015-08-05 00:07:18.987123', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2192, 38, 'http://mcglynn.org', '2015-08-05 00:07:18.988371', '2015-08-05 00:07:18.988371', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2193, 38, 'http://sanfordpollich.info', '2015-08-05 00:07:18.989658', '2015-08-05 00:07:18.989658', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2194, 38, 'http://smithamcorwin.biz', '2015-08-05 00:07:18.99098', '2015-08-05 00:07:18.99098', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2195, 38, 'http://bradtke.net', '2015-08-05 00:07:18.992075', '2015-08-05 00:07:18.992075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2196, 38, 'http://aufderhar.org', '2015-08-05 00:07:18.993308', '2015-08-05 00:07:18.993308', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2197, 38, 'http://harrisgreenholt.com', '2015-08-05 00:07:18.994492', '2015-08-05 00:07:18.994492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2198, 38, 'http://ullrichfisher.biz', '2015-08-05 00:07:18.99561', '2015-08-05 00:07:18.99561', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2199, 38, 'http://willmsrobel.com', '2015-08-05 00:07:18.996828', '2015-08-05 00:07:18.996828', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2200, 38, 'http://howeoconner.com', '2015-08-05 00:07:18.997966', '2015-08-05 00:07:18.997966', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2201, 38, 'http://abernathyolson.org', '2015-08-05 00:07:18.99922', '2015-08-05 00:07:18.99922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2202, 38, 'http://treutel.com', '2015-08-05 00:07:19.001868', '2015-08-05 00:07:19.001868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2203, 38, 'http://breitenberg.net', '2015-08-05 00:07:19.003837', '2015-08-05 00:07:19.003837', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2204, 38, 'http://koelpin.biz', '2015-08-05 00:07:19.00514', '2015-08-05 00:07:19.00514', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2205, 38, 'http://friesen.info', '2015-08-05 00:07:19.006401', '2015-08-05 00:07:19.006401', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2206, 38, 'http://lemke.biz', '2015-08-05 00:07:19.007629', '2015-08-05 00:07:19.007629', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2207, 38, 'http://rogahntowne.biz', '2015-08-05 00:07:19.008914', '2015-08-05 00:07:19.008914', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2208, 38, 'http://turcotte.biz', '2015-08-05 00:07:19.010275', '2015-08-05 00:07:19.010275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2209, 38, 'http://schneiderhermiston.org', '2015-08-05 00:07:19.011456', '2015-08-05 00:07:19.011456', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2210, 38, 'http://koepp.name', '2015-08-05 00:07:19.01252', '2015-08-05 00:07:19.01252', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2211, 38, 'http://willms.biz', '2015-08-05 00:07:19.013825', '2015-08-05 00:07:19.013825', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2212, 39, 'http://cole.name', '2015-08-05 00:07:19.173037', '2015-08-05 00:07:19.173037', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2213, 39, 'http://leuschke.com', '2015-08-05 00:07:19.174474', '2015-08-05 00:07:19.174474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2214, 39, 'http://hintz.biz', '2015-08-05 00:07:19.175724', '2015-08-05 00:07:19.175724', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2215, 39, 'http://langworth.biz', '2015-08-05 00:07:19.177151', '2015-08-05 00:07:19.177151', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2216, 39, 'http://daniel.name', '2015-08-05 00:07:19.178547', '2015-08-05 00:07:19.178547', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2217, 39, 'http://boyle.com', '2015-08-05 00:07:19.179857', '2015-08-05 00:07:19.179857', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2218, 39, 'http://batz.net', '2015-08-05 00:07:19.181133', '2015-08-05 00:07:19.181133', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2219, 39, 'http://bartongleichner.biz', '2015-08-05 00:07:19.182423', '2015-08-05 00:07:19.182423', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2220, 39, 'http://quigleymohr.info', '2015-08-05 00:07:19.183578', '2015-08-05 00:07:19.183578', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2221, 39, 'http://simonis.net', '2015-08-05 00:07:19.185179', '2015-08-05 00:07:19.185179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2222, 39, 'http://fisherkilback.biz', '2015-08-05 00:07:19.18648', '2015-08-05 00:07:19.18648', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2223, 39, 'http://abbott.net', '2015-08-05 00:07:19.187597', '2015-08-05 00:07:19.187597', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2224, 39, 'http://vonruedennitzsche.net', '2015-08-05 00:07:19.188805', '2015-08-05 00:07:19.188805', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2225, 39, 'http://wuckert.org', '2015-08-05 00:07:19.189979', '2015-08-05 00:07:19.189979', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2226, 39, 'http://jacobsonmetz.info', '2015-08-05 00:07:19.192024', '2015-08-05 00:07:19.192024', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2227, 39, 'http://schiller.name', '2015-08-05 00:07:19.193348', '2015-08-05 00:07:19.193348', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2228, 39, 'http://mertzconsidine.org', '2015-08-05 00:07:19.194689', '2015-08-05 00:07:19.194689', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2229, 39, 'http://thompson.biz', '2015-08-05 00:07:19.195936', '2015-08-05 00:07:19.195936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2230, 39, 'http://trantowspencer.info', '2015-08-05 00:07:19.197045', '2015-08-05 00:07:19.197045', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2231, 39, 'http://marks.info', '2015-08-05 00:07:19.198121', '2015-08-05 00:07:19.198121', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2232, 39, 'http://kozey.info', '2015-08-05 00:07:19.199424', '2015-08-05 00:07:19.199424', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2233, 39, 'http://kaulkestanton.net', '2015-08-05 00:07:19.200791', '2015-08-05 00:07:19.200791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2234, 39, 'http://schimmel.com', '2015-08-05 00:07:19.201954', '2015-08-05 00:07:19.201954', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2235, 39, 'http://bartell.name', '2015-08-05 00:07:19.203213', '2015-08-05 00:07:19.203213', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2236, 39, 'http://kulas.name', '2015-08-05 00:07:19.204413', '2015-08-05 00:07:19.204413', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2237, 39, 'http://boyer.net', '2015-08-05 00:07:19.20567', '2015-08-05 00:07:19.20567', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2238, 39, 'http://stammblick.biz', '2015-08-05 00:07:19.206816', '2015-08-05 00:07:19.206816', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2239, 39, 'http://cummings.com', '2015-08-05 00:07:19.208057', '2015-08-05 00:07:19.208057', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2240, 39, 'http://boyer.biz', '2015-08-05 00:07:19.209281', '2015-08-05 00:07:19.209281', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2241, 39, 'http://lubowitz.biz', '2015-08-05 00:07:19.210423', '2015-08-05 00:07:19.210423', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2242, 39, 'http://beckerlockman.name', '2015-08-05 00:07:19.211482', '2015-08-05 00:07:19.211482', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2243, 39, 'http://hermannbradtke.info', '2015-08-05 00:07:19.212593', '2015-08-05 00:07:19.212593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2244, 39, 'http://franeckigrant.com', '2015-08-05 00:07:19.21378', '2015-08-05 00:07:19.21378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2245, 39, 'http://rutherford.biz', '2015-08-05 00:07:19.214993', '2015-08-05 00:07:19.214993', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2246, 39, 'http://carter.com', '2015-08-05 00:07:19.216151', '2015-08-05 00:07:19.216151', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2247, 39, 'http://shanahan.org', '2015-08-05 00:07:19.21735', '2015-08-05 00:07:19.21735', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2248, 39, 'http://haleykozey.com', '2015-08-05 00:07:19.218562', '2015-08-05 00:07:19.218562', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2249, 39, 'http://hilllwalker.net', '2015-08-05 00:07:19.219665', '2015-08-05 00:07:19.219665', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2250, 39, 'http://thielleffler.name', '2015-08-05 00:07:19.221818', '2015-08-05 00:07:19.221818', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2251, 39, 'http://baumbach.info', '2015-08-05 00:07:19.223714', '2015-08-05 00:07:19.223714', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2252, 39, 'http://mante.biz', '2015-08-05 00:07:19.224929', '2015-08-05 00:07:19.224929', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2253, 39, 'http://hellerdenesik.name', '2015-08-05 00:07:19.226193', '2015-08-05 00:07:19.226193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2254, 39, 'http://schultz.com', '2015-08-05 00:07:19.227444', '2015-08-05 00:07:19.227444', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2255, 39, 'http://schulistcorkery.net', '2015-08-05 00:07:19.228887', '2015-08-05 00:07:19.228887', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2256, 39, 'http://grant.com', '2015-08-05 00:07:19.230282', '2015-08-05 00:07:19.230282', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2257, 39, 'http://ruel.com', '2015-08-05 00:07:19.231599', '2015-08-05 00:07:19.231599', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2258, 39, 'http://stracke.net', '2015-08-05 00:07:19.233017', '2015-08-05 00:07:19.233017', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2259, 39, 'http://mitchell.name', '2015-08-05 00:07:19.234251', '2015-08-05 00:07:19.234251', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2260, 39, 'http://jakubowski.info', '2015-08-05 00:07:19.235778', '2015-08-05 00:07:19.235778', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2261, 39, 'http://gorczanybergstrom.name', '2015-08-05 00:07:19.237036', '2015-08-05 00:07:19.237036', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2262, 39, 'http://little.name', '2015-08-05 00:07:19.238236', '2015-08-05 00:07:19.238236', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2263, 39, 'http://lindgren.name', '2015-08-05 00:07:19.2394', '2015-08-05 00:07:19.2394', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2264, 39, 'http://larkincummings.org', '2015-08-05 00:07:19.240543', '2015-08-05 00:07:19.240543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2265, 39, 'http://vonmohr.info', '2015-08-05 00:07:19.241768', '2015-08-05 00:07:19.241768', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2266, 39, 'http://ryanlabadie.org', '2015-08-05 00:07:19.24305', '2015-08-05 00:07:19.24305', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2267, 39, 'http://hansen.biz', '2015-08-05 00:07:19.244224', '2015-08-05 00:07:19.244224', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2268, 39, 'http://thompsongoodwin.com', '2015-08-05 00:07:19.245514', '2015-08-05 00:07:19.245514', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2269, 39, 'http://hermistonmoen.com', '2015-08-05 00:07:19.246802', '2015-08-05 00:07:19.246802', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2270, 39, 'http://treutellittel.net', '2015-08-05 00:07:19.248165', '2015-08-05 00:07:19.248165', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2271, 39, 'http://runolfon.com', '2015-08-05 00:07:19.249232', '2015-08-05 00:07:19.249232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2272, 39, 'http://reynoldsokeefe.info', '2015-08-05 00:07:19.251738', '2015-08-05 00:07:19.251738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2273, 39, 'http://borerhilpert.name', '2015-08-05 00:07:19.253804', '2015-08-05 00:07:19.253804', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2274, 39, 'http://runolfsdottirleffler.org', '2015-08-05 00:07:19.255126', '2015-08-05 00:07:19.255126', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2275, 40, 'http://wyman.info', '2015-08-05 00:07:19.657807', '2015-08-05 00:07:19.657807', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2276, 40, 'http://koepp.biz', '2015-08-05 00:07:19.659272', '2015-08-05 00:07:19.659272', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2277, 40, 'http://jacobson.biz', '2015-08-05 00:07:19.660685', '2015-08-05 00:07:19.660685', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2278, 40, 'http://cruickshankpouros.org', '2015-08-05 00:07:19.661977', '2015-08-05 00:07:19.661977', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2279, 40, 'http://turcottebergstrom.net', '2015-08-05 00:07:19.663278', '2015-08-05 00:07:19.663278', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2280, 40, 'http://considine.org', '2015-08-05 00:07:19.664569', '2015-08-05 00:07:19.664569', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2281, 40, 'http://lakin.net', '2015-08-05 00:07:19.665792', '2015-08-05 00:07:19.665792', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2282, 40, 'http://pourosnicolas.info', '2015-08-05 00:07:19.667042', '2015-08-05 00:07:19.667042', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2283, 40, 'http://kulas.name', '2015-08-05 00:07:19.668261', '2015-08-05 00:07:19.668261', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2284, 40, 'http://gorczanyoconnell.name', '2015-08-05 00:07:19.670026', '2015-08-05 00:07:19.670026', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2285, 40, 'http://dietrich.com', '2015-08-05 00:07:19.671442', '2015-08-05 00:07:19.671442', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2286, 40, 'http://fisher.name', '2015-08-05 00:07:19.672543', '2015-08-05 00:07:19.672543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2287, 40, 'http://schoen.info', '2015-08-05 00:07:19.673695', '2015-08-05 00:07:19.673695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2288, 40, 'http://okongraham.net', '2015-08-05 00:07:19.674831', '2015-08-05 00:07:19.674831', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2289, 40, 'http://leuschke.net', '2015-08-05 00:07:19.67613', '2015-08-05 00:07:19.67613', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2290, 40, 'http://feest.name', '2015-08-05 00:07:19.67722', '2015-08-05 00:07:19.67722', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2291, 40, 'http://goldner.org', '2015-08-05 00:07:19.678336', '2015-08-05 00:07:19.678336', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2292, 40, 'http://lang.org', '2015-08-05 00:07:19.679573', '2015-08-05 00:07:19.679573', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2293, 40, 'http://kilback.net', '2015-08-05 00:07:19.681901', '2015-08-05 00:07:19.681901', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2294, 40, 'http://walkerkohler.net', '2015-08-05 00:07:19.683971', '2015-08-05 00:07:19.683971', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2295, 40, 'http://runolfonortiz.name', '2015-08-05 00:07:19.685255', '2015-08-05 00:07:19.685255', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2296, 40, 'http://spencer.info', '2015-08-05 00:07:19.686595', '2015-08-05 00:07:19.686595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2297, 40, 'http://nikolaus.com', '2015-08-05 00:07:19.688179', '2015-08-05 00:07:19.688179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2298, 40, 'http://bahringersanford.org', '2015-08-05 00:07:19.689592', '2015-08-05 00:07:19.689592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2299, 40, 'http://bartoletti.net', '2015-08-05 00:07:19.691127', '2015-08-05 00:07:19.691127', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2300, 40, 'http://barrows.biz', '2015-08-05 00:07:19.692537', '2015-08-05 00:07:19.692537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2301, 40, 'http://davishintz.com', '2015-08-05 00:07:19.693815', '2015-08-05 00:07:19.693815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2302, 40, 'http://kleinferry.net', '2015-08-05 00:07:19.695072', '2015-08-05 00:07:19.695072', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2303, 40, 'http://walsh.name', '2015-08-05 00:07:19.696174', '2015-08-05 00:07:19.696174', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2304, 40, 'http://armstrongjerde.com', '2015-08-05 00:07:19.697279', '2015-08-05 00:07:19.697279', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2305, 40, 'http://cole.org', '2015-08-05 00:07:19.698518', '2015-08-05 00:07:19.698518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2306, 40, 'http://schroederschaden.biz', '2015-08-05 00:07:19.6996', '2015-08-05 00:07:19.6996', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2307, 40, 'http://quitzon.com', '2015-08-05 00:07:19.701961', '2015-08-05 00:07:19.701961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2308, 40, 'http://pacocha.biz', '2015-08-05 00:07:19.703495', '2015-08-05 00:07:19.703495', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2309, 40, 'http://marvinbeier.net', '2015-08-05 00:07:19.704764', '2015-08-05 00:07:19.704764', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2310, 40, 'http://dibbert.name', '2015-08-05 00:07:19.706081', '2015-08-05 00:07:19.706081', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2311, 40, 'http://sengerreilly.net', '2015-08-05 00:07:19.707411', '2015-08-05 00:07:19.707411', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2312, 40, 'http://casperschimmel.net', '2015-08-05 00:07:19.708679', '2015-08-05 00:07:19.708679', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2313, 40, 'http://jakubowski.name', '2015-08-05 00:07:19.709894', '2015-08-05 00:07:19.709894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2314, 40, 'http://mohr.net', '2015-08-05 00:07:19.712087', '2015-08-05 00:07:19.712087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2315, 40, 'http://schroeder.org', '2015-08-05 00:07:19.713378', '2015-08-05 00:07:19.713378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2316, 40, 'http://osinski.net', '2015-08-05 00:07:19.714462', '2015-08-05 00:07:19.714462', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2317, 40, 'http://grimes.biz', '2015-08-05 00:07:19.71576', '2015-08-05 00:07:19.71576', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2318, 40, 'http://buckridge.biz', '2015-08-05 00:07:19.717191', '2015-08-05 00:07:19.717191', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2319, 40, 'http://howegutmann.org', '2015-08-05 00:07:19.718382', '2015-08-05 00:07:19.718382', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2320, 40, 'http://goyette.name', '2015-08-05 00:07:19.719731', '2015-08-05 00:07:19.719731', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2321, 40, 'http://reinger.biz', '2015-08-05 00:07:19.720879', '2015-08-05 00:07:19.720879', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2322, 40, 'http://halvorsonharvey.info', '2015-08-05 00:07:19.722095', '2015-08-05 00:07:19.722095', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2323, 40, 'http://veumcole.org', '2015-08-05 00:07:19.723428', '2015-08-05 00:07:19.723428', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2324, 40, 'http://rolfsonlangworth.net', '2015-08-05 00:07:19.724612', '2015-08-05 00:07:19.724612', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2325, 40, 'http://schulistblock.info', '2015-08-05 00:07:19.725754', '2015-08-05 00:07:19.725754', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2326, 40, 'http://koelpinbashirian.net', '2015-08-05 00:07:19.726869', '2015-08-05 00:07:19.726869', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2327, 40, 'http://spencer.biz', '2015-08-05 00:07:19.727998', '2015-08-05 00:07:19.727998', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2328, 40, 'http://leffler.com', '2015-08-05 00:07:19.729371', '2015-08-05 00:07:19.729371', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2329, 40, 'http://kuphal.com', '2015-08-05 00:07:19.730541', '2015-08-05 00:07:19.730541', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2330, 40, 'http://lubowitzwaters.org', '2015-08-05 00:07:19.73171', '2015-08-05 00:07:19.73171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2331, 40, 'http://reillybednar.net', '2015-08-05 00:07:19.732847', '2015-08-05 00:07:19.732847', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2332, 40, 'http://borer.net', '2015-08-05 00:07:19.73389', '2015-08-05 00:07:19.73389', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2333, 40, 'http://kris.info', '2015-08-05 00:07:19.734952', '2015-08-05 00:07:19.734952', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2334, 40, 'http://grant.org', '2015-08-05 00:07:19.73609', '2015-08-05 00:07:19.73609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2335, 40, 'http://mclaughlinschuster.info', '2015-08-05 00:07:19.737336', '2015-08-05 00:07:19.737336', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2336, 40, 'http://lockman.com', '2015-08-05 00:07:19.738576', '2015-08-05 00:07:19.738576', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2337, 40, 'http://gorczanynitzsche.biz', '2015-08-05 00:07:19.739777', '2015-08-05 00:07:19.739777', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2338, 41, 'http://jacobsonmckenzie.org', '2015-08-05 00:07:19.86137', '2015-08-05 00:07:19.86137', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2339, 41, 'http://nienowgrady.net', '2015-08-05 00:07:19.862854', '2015-08-05 00:07:19.862854', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2340, 41, 'http://collier.org', '2015-08-05 00:07:19.864316', '2015-08-05 00:07:19.864316', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2341, 41, 'http://altenwerth.org', '2015-08-05 00:07:19.865785', '2015-08-05 00:07:19.865785', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2342, 41, 'http://conroymoriette.info', '2015-08-05 00:07:19.867217', '2015-08-05 00:07:19.867217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2343, 41, 'http://dibbertlind.org', '2015-08-05 00:07:19.868535', '2015-08-05 00:07:19.868535', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2344, 41, 'http://stantoneichmann.net', '2015-08-05 00:07:19.869826', '2015-08-05 00:07:19.869826', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2345, 41, 'http://ohara.info', '2015-08-05 00:07:19.871073', '2015-08-05 00:07:19.871073', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2346, 41, 'http://mclaughlin.biz', '2015-08-05 00:07:19.872289', '2015-08-05 00:07:19.872289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2347, 41, 'http://kling.com', '2015-08-05 00:07:19.873492', '2015-08-05 00:07:19.873492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2348, 41, 'http://leannon.net', '2015-08-05 00:07:19.874595', '2015-08-05 00:07:19.874595', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2349, 41, 'http://conn.org', '2015-08-05 00:07:19.875663', '2015-08-05 00:07:19.875663', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2350, 41, 'http://robelgutkowski.com', '2015-08-05 00:07:19.876761', '2015-08-05 00:07:19.876761', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2351, 41, 'http://reinger.com', '2015-08-05 00:07:19.877881', '2015-08-05 00:07:19.877881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2352, 41, 'http://jakubowski.info', '2015-08-05 00:07:19.878944', '2015-08-05 00:07:19.878944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2353, 41, 'http://hansenveum.net', '2015-08-05 00:07:19.880005', '2015-08-05 00:07:19.880005', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2354, 41, 'http://lakin.name', '2015-08-05 00:07:19.881009', '2015-08-05 00:07:19.881009', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2355, 41, 'http://osinski.name', '2015-08-05 00:07:19.882037', '2015-08-05 00:07:19.882037', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2356, 41, 'http://wardkiehn.info', '2015-08-05 00:07:19.883243', '2015-08-05 00:07:19.883243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2357, 41, 'http://heathcotebednar.info', '2015-08-05 00:07:19.884384', '2015-08-05 00:07:19.884384', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2358, 41, 'http://lang.com', '2015-08-05 00:07:19.885838', '2015-08-05 00:07:19.885838', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2359, 41, 'http://schroederhickle.name', '2015-08-05 00:07:19.886975', '2015-08-05 00:07:19.886975', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2360, 41, 'http://farrell.info', '2015-08-05 00:07:19.888135', '2015-08-05 00:07:19.888135', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2361, 41, 'http://kozey.net', '2015-08-05 00:07:19.889362', '2015-08-05 00:07:19.889362', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2362, 41, 'http://stammemard.com', '2015-08-05 00:07:19.891738', '2015-08-05 00:07:19.891738', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2363, 41, 'http://kub.com', '2015-08-05 00:07:19.893706', '2015-08-05 00:07:19.893706', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2364, 41, 'http://nolan.com', '2015-08-05 00:07:19.894877', '2015-08-05 00:07:19.894877', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2365, 41, 'http://boyerweimann.org', '2015-08-05 00:07:19.896056', '2015-08-05 00:07:19.896056', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2366, 41, 'http://connellyeichmann.name', '2015-08-05 00:07:19.897392', '2015-08-05 00:07:19.897392', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2367, 41, 'http://oconner.name', '2015-08-05 00:07:19.89855', '2015-08-05 00:07:19.89855', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2368, 41, 'http://lynch.net', '2015-08-05 00:07:19.89982', '2015-08-05 00:07:19.89982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2369, 41, 'http://larkinwalker.net', '2015-08-05 00:07:19.901208', '2015-08-05 00:07:19.901208', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2370, 41, 'http://breitenberglangworth.name', '2015-08-05 00:07:19.902505', '2015-08-05 00:07:19.902505', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2371, 41, 'http://volkman.biz', '2015-08-05 00:07:19.903865', '2015-08-05 00:07:19.903865', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2372, 41, 'http://west.com', '2015-08-05 00:07:19.905006', '2015-08-05 00:07:19.905006', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2373, 41, 'http://ratke.biz', '2015-08-05 00:07:19.906335', '2015-08-05 00:07:19.906335', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2374, 41, 'http://tillmanstreich.name', '2015-08-05 00:07:19.907678', '2015-08-05 00:07:19.907678', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2375, 41, 'http://wizaward.biz', '2015-08-05 00:07:19.908736', '2015-08-05 00:07:19.908736', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2376, 41, 'http://welch.net', '2015-08-05 00:07:19.909926', '2015-08-05 00:07:19.909926', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2377, 41, 'http://bradtkekutch.name', '2015-08-05 00:07:19.911144', '2015-08-05 00:07:19.911144', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2378, 41, 'http://gutkowski.info', '2015-08-05 00:07:19.912554', '2015-08-05 00:07:19.912554', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2379, 41, 'http://cremin.info', '2015-08-05 00:07:19.914555', '2015-08-05 00:07:19.914555', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2380, 41, 'http://bechtelar.net', '2015-08-05 00:07:19.916109', '2015-08-05 00:07:19.916109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2381, 41, 'http://cainohara.biz', '2015-08-05 00:07:19.917347', '2015-08-05 00:07:19.917347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2382, 41, 'http://bode.info', '2015-08-05 00:07:19.918668', '2015-08-05 00:07:19.918668', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2383, 41, 'http://moore.info', '2015-08-05 00:07:19.920193', '2015-08-05 00:07:19.920193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2384, 41, 'http://mayertbotsford.net', '2015-08-05 00:07:19.922305', '2015-08-05 00:07:19.922305', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2385, 41, 'http://turcotte.com', '2015-08-05 00:07:19.923564', '2015-08-05 00:07:19.923564', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2386, 41, 'http://cremin.info', '2015-08-05 00:07:19.924853', '2015-08-05 00:07:19.924853', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2387, 41, 'http://schumm.net', '2015-08-05 00:07:19.926133', '2015-08-05 00:07:19.926133', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2388, 41, 'http://cronin.net', '2015-08-05 00:07:19.92746', '2015-08-05 00:07:19.92746', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2389, 41, 'http://corkerypouros.com', '2015-08-05 00:07:19.928655', '2015-08-05 00:07:19.928655', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2390, 41, 'http://cole.info', '2015-08-05 00:07:19.929907', '2015-08-05 00:07:19.929907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2391, 41, 'http://hauck.biz', '2015-08-05 00:07:19.931257', '2015-08-05 00:07:19.931257', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2392, 41, 'http://parisian.net', '2015-08-05 00:07:19.932548', '2015-08-05 00:07:19.932548', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2393, 41, 'http://kreiger.name', '2015-08-05 00:07:19.933735', '2015-08-05 00:07:19.933735', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2394, 41, 'http://erdman.info', '2015-08-05 00:07:19.934791', '2015-08-05 00:07:19.934791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2395, 41, 'http://wisoky.biz', '2015-08-05 00:07:19.935996', '2015-08-05 00:07:19.935996', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2396, 42, 'http://mohr.org', '2015-08-05 00:07:20.056121', '2015-08-05 00:07:20.056121', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2397, 42, 'http://brekkestreich.com', '2015-08-05 00:07:20.057587', '2015-08-05 00:07:20.057587', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2398, 42, 'http://stokes.info', '2015-08-05 00:07:20.058976', '2015-08-05 00:07:20.058976', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2399, 42, 'http://ward.info', '2015-08-05 00:07:20.060267', '2015-08-05 00:07:20.060267', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2400, 42, 'http://leffler.org', '2015-08-05 00:07:20.061737', '2015-08-05 00:07:20.061737', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2401, 42, 'http://schneiderkozey.info', '2015-08-05 00:07:20.063183', '2015-08-05 00:07:20.063183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2402, 42, 'http://bauch.info', '2015-08-05 00:07:20.064781', '2015-08-05 00:07:20.064781', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2403, 42, 'http://lubowitz.org', '2015-08-05 00:07:20.066262', '2015-08-05 00:07:20.066262', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2404, 42, 'http://medhurst.com', '2015-08-05 00:07:20.067778', '2015-08-05 00:07:20.067778', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2405, 42, 'http://luettgenbernier.name', '2015-08-05 00:07:20.069034', '2015-08-05 00:07:20.069034', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2406, 42, 'http://monahanherzog.biz', '2015-08-05 00:07:20.071838', '2015-08-05 00:07:20.071838', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2407, 42, 'http://moen.name', '2015-08-05 00:07:20.073041', '2015-08-05 00:07:20.073041', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2408, 42, 'http://mitchell.org', '2015-08-05 00:07:20.074268', '2015-08-05 00:07:20.074268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2409, 42, 'http://feeney.com', '2015-08-05 00:07:20.075379', '2015-08-05 00:07:20.075379', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2410, 42, 'http://schiller.org', '2015-08-05 00:07:20.076576', '2015-08-05 00:07:20.076576', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2411, 42, 'http://emmerich.biz', '2015-08-05 00:07:20.077843', '2015-08-05 00:07:20.077843', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2412, 42, 'http://von.net', '2015-08-05 00:07:20.07907', '2015-08-05 00:07:20.07907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2413, 42, 'http://hyatt.net', '2015-08-05 00:07:20.080233', '2015-08-05 00:07:20.080233', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2414, 42, 'http://bauch.info', '2015-08-05 00:07:20.081313', '2015-08-05 00:07:20.081313', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2415, 42, 'http://lueilwitz.info', '2015-08-05 00:07:20.082537', '2015-08-05 00:07:20.082537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2416, 42, 'http://volkman.org', '2015-08-05 00:07:20.083709', '2015-08-05 00:07:20.083709', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2417, 42, 'http://deckowreichert.info', '2015-08-05 00:07:20.085063', '2015-08-05 00:07:20.085063', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2418, 42, 'http://hammes.name', '2015-08-05 00:07:20.086325', '2015-08-05 00:07:20.086325', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2419, 42, 'http://daregreenholt.org', '2015-08-05 00:07:20.087575', '2015-08-05 00:07:20.087575', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2420, 42, 'http://price.info', '2015-08-05 00:07:20.088997', '2015-08-05 00:07:20.088997', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2421, 42, 'http://labadiesenger.org', '2015-08-05 00:07:20.09013', '2015-08-05 00:07:20.09013', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2422, 42, 'http://daugherty.info', '2015-08-05 00:07:20.091518', '2015-08-05 00:07:20.091518', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2423, 42, 'http://auer.biz', '2015-08-05 00:07:20.092917', '2015-08-05 00:07:20.092917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2424, 42, 'http://lang.name', '2015-08-05 00:07:20.094161', '2015-08-05 00:07:20.094161', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2425, 42, 'http://okon.com', '2015-08-05 00:07:20.09537', '2015-08-05 00:07:20.09537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2426, 42, 'http://brakus.org', '2015-08-05 00:07:20.096526', '2015-08-05 00:07:20.096526', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2427, 42, 'http://bergnaum.org', '2015-08-05 00:07:20.097624', '2015-08-05 00:07:20.097624', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2428, 42, 'http://koelpin.biz', '2015-08-05 00:07:20.098907', '2015-08-05 00:07:20.098907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2429, 42, 'http://willstamm.org', '2015-08-05 00:07:20.100114', '2015-08-05 00:07:20.100114', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2430, 42, 'http://barrowsdavis.info', '2015-08-05 00:07:20.101212', '2015-08-05 00:07:20.101212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2431, 42, 'http://howemiller.org', '2015-08-05 00:07:20.102509', '2015-08-05 00:07:20.102509', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2432, 42, 'http://effertz.name', '2015-08-05 00:07:20.103781', '2015-08-05 00:07:20.103781', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2433, 42, 'http://rowe.biz', '2015-08-05 00:07:20.104973', '2015-08-05 00:07:20.104973', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2434, 42, 'http://batz.net', '2015-08-05 00:07:20.106234', '2015-08-05 00:07:20.106234', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2435, 42, 'http://mccullough.org', '2015-08-05 00:07:20.107484', '2015-08-05 00:07:20.107484', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2436, 42, 'http://schuppe.net', '2015-08-05 00:07:20.108743', '2015-08-05 00:07:20.108743', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2437, 42, 'http://erdman.com', '2015-08-05 00:07:20.109948', '2015-08-05 00:07:20.109948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2438, 42, 'http://kozeycummings.com', '2015-08-05 00:07:20.111119', '2015-08-05 00:07:20.111119', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2439, 42, 'http://krajcikfranecki.info', '2015-08-05 00:07:20.112324', '2015-08-05 00:07:20.112324', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2440, 42, 'http://swaniawskirowe.com', '2015-08-05 00:07:20.113516', '2015-08-05 00:07:20.113516', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2441, 42, 'http://hanegerlach.net', '2015-08-05 00:07:20.114884', '2015-08-05 00:07:20.114884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2442, 42, 'http://cormier.net', '2015-08-05 00:07:20.116089', '2015-08-05 00:07:20.116089', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2443, 42, 'http://quigleyortiz.biz', '2015-08-05 00:07:20.117242', '2015-08-05 00:07:20.117242', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2444, 42, 'http://adams.biz', '2015-08-05 00:07:20.118317', '2015-08-05 00:07:20.118317', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2445, 42, 'http://oharawill.name', '2015-08-05 00:07:20.119454', '2015-08-05 00:07:20.119454', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2446, 42, 'http://mckenziesawayn.name', '2015-08-05 00:07:20.120554', '2015-08-05 00:07:20.120554', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2447, 42, 'http://krajcik.biz', '2015-08-05 00:07:20.121664', '2015-08-05 00:07:20.121664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2448, 42, 'http://bogannienow.name', '2015-08-05 00:07:20.122984', '2015-08-05 00:07:20.122984', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2449, 42, 'http://ricestreich.org', '2015-08-05 00:07:20.124208', '2015-08-05 00:07:20.124208', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2450, 42, 'http://jonesboyle.name', '2015-08-05 00:07:20.125522', '2015-08-05 00:07:20.125522', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2451, 42, 'http://cummingslang.biz', '2015-08-05 00:07:20.126766', '2015-08-05 00:07:20.126766', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2452, 42, 'http://mraz.net', '2015-08-05 00:07:20.128076', '2015-08-05 00:07:20.128076', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2453, 42, 'http://gusikowski.org', '2015-08-05 00:07:20.129474', '2015-08-05 00:07:20.129474', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2454, 42, 'http://powlowski.net', '2015-08-05 00:07:20.130939', '2015-08-05 00:07:20.130939', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2455, 42, 'http://lueilwitz.info', '2015-08-05 00:07:20.132161', '2015-08-05 00:07:20.132161', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2456, 42, 'http://cremin.com', '2015-08-05 00:07:20.133505', '2015-08-05 00:07:20.133505', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2457, 42, 'http://lefflerrolfson.net', '2015-08-05 00:07:20.134744', '2015-08-05 00:07:20.134744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2458, 42, 'http://sporer.com', '2015-08-05 00:07:20.135885', '2015-08-05 00:07:20.135885', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2459, 42, 'http://ernser.com', '2015-08-05 00:07:20.137058', '2015-08-05 00:07:20.137058', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2460, 42, 'http://kutchcole.biz', '2015-08-05 00:07:20.138157', '2015-08-05 00:07:20.138157', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2461, 42, 'http://prosaccoheel.com', '2015-08-05 00:07:20.139305', '2015-08-05 00:07:20.139305', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2462, 42, 'http://sanford.com', '2015-08-05 00:07:20.140501', '2015-08-05 00:07:20.140501', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2463, 42, 'http://runolfon.org', '2015-08-05 00:07:20.141824', '2015-08-05 00:07:20.141824', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2464, 42, 'http://hirthemayert.info', '2015-08-05 00:07:20.142871', '2015-08-05 00:07:20.142871', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2465, 42, 'http://kirlinberge.net', '2015-08-05 00:07:20.143907', '2015-08-05 00:07:20.143907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2466, 42, 'http://pfannerstill.name', '2015-08-05 00:07:20.14535', '2015-08-05 00:07:20.14535', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2467, 42, 'http://botsford.name', '2015-08-05 00:07:20.146615', '2015-08-05 00:07:20.146615', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2468, 42, 'http://wiegand.org', '2015-08-05 00:07:20.147936', '2015-08-05 00:07:20.147936', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2469, 42, 'http://pfannerstill.info', '2015-08-05 00:07:20.14937', '2015-08-05 00:07:20.14937', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2470, 42, 'http://torp.info', '2015-08-05 00:07:20.150488', '2015-08-05 00:07:20.150488', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2471, 42, 'http://davis.net', '2015-08-05 00:07:20.15164', '2015-08-05 00:07:20.15164', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2472, 42, 'http://hintz.com', '2015-08-05 00:07:20.152891', '2015-08-05 00:07:20.152891', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2473, 42, 'http://crooks.name', '2015-08-05 00:07:20.153942', '2015-08-05 00:07:20.153942', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2474, 42, 'http://bechtelar.info', '2015-08-05 00:07:20.154956', '2015-08-05 00:07:20.154956', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2475, 42, 'http://champlinbrakus.name', '2015-08-05 00:07:20.156041', '2015-08-05 00:07:20.156041', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2476, 42, 'http://bartoletti.com', '2015-08-05 00:07:20.157057', '2015-08-05 00:07:20.157057', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2477, 42, 'http://jaskolskiondricka.info', '2015-08-05 00:07:20.158158', '2015-08-05 00:07:20.158158', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2478, 42, 'http://corkerybartell.com', '2015-08-05 00:07:20.159204', '2015-08-05 00:07:20.159204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2479, 42, 'http://breitenberg.org', '2015-08-05 00:07:20.16038', '2015-08-05 00:07:20.16038', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2480, 42, 'http://denesik.net', '2015-08-05 00:07:20.161469', '2015-08-05 00:07:20.161469', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2481, 42, 'http://watsica.name', '2015-08-05 00:07:20.162529', '2015-08-05 00:07:20.162529', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2482, 42, 'http://wolfframi.com', '2015-08-05 00:07:20.163629', '2015-08-05 00:07:20.163629', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2483, 42, 'http://moore.org', '2015-08-05 00:07:20.164749', '2015-08-05 00:07:20.164749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2484, 42, 'http://gutkowski.info', '2015-08-05 00:07:20.165798', '2015-08-05 00:07:20.165798', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2485, 42, 'http://monahanolson.com', '2015-08-05 00:07:20.167024', '2015-08-05 00:07:20.167024', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2486, 42, 'http://runolfon.info', '2015-08-05 00:07:20.168195', '2015-08-05 00:07:20.168195', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2487, 42, 'http://block.name', '2015-08-05 00:07:20.169676', '2015-08-05 00:07:20.169676', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2488, 42, 'http://danielhegmann.info', '2015-08-05 00:07:20.17182', '2015-08-05 00:07:20.17182', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2489, 42, 'http://champlin.biz', '2015-08-05 00:07:20.173695', '2015-08-05 00:07:20.173695', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2490, 42, 'http://langoshkoelpin.org', '2015-08-05 00:07:20.174787', '2015-08-05 00:07:20.174787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2491, 42, 'http://yundt.name', '2015-08-05 00:07:20.176287', '2015-08-05 00:07:20.176287', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2492, 43, 'http://keelinggreenholt.net', '2015-08-05 00:07:20.308731', '2015-08-05 00:07:20.308731', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2493, 43, 'http://rutherford.biz', '2015-08-05 00:07:20.310166', '2015-08-05 00:07:20.310166', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2494, 43, 'http://breitenberghamill.net', '2015-08-05 00:07:20.311519', '2015-08-05 00:07:20.311519', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2495, 43, 'http://oconnerwunsch.info', '2015-08-05 00:07:20.312966', '2015-08-05 00:07:20.312966', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2496, 43, 'http://runte.org', '2015-08-05 00:07:20.314226', '2015-08-05 00:07:20.314226', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2497, 43, 'http://schroederboehm.net', '2015-08-05 00:07:20.315461', '2015-08-05 00:07:20.315461', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2498, 43, 'http://creminko.biz', '2015-08-05 00:07:20.31679', '2015-08-05 00:07:20.31679', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2499, 43, 'http://mante.biz', '2015-08-05 00:07:20.318118', '2015-08-05 00:07:20.318118', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2500, 43, 'http://schulist.biz', '2015-08-05 00:07:20.319675', '2015-08-05 00:07:20.319675', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2501, 43, 'http://hansen.com', '2015-08-05 00:07:20.321371', '2015-08-05 00:07:20.321371', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2502, 43, 'http://heaneyauer.name', '2015-08-05 00:07:20.322584', '2015-08-05 00:07:20.322584', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2503, 43, 'http://jacobireichel.biz', '2015-08-05 00:07:20.323666', '2015-08-05 00:07:20.323666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2504, 43, 'http://kelersmitham.biz', '2015-08-05 00:07:20.324824', '2015-08-05 00:07:20.324824', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2505, 43, 'http://heathcote.info', '2015-08-05 00:07:20.325894', '2015-08-05 00:07:20.325894', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2506, 43, 'http://hintzschamberger.net', '2015-08-05 00:07:20.327169', '2015-08-05 00:07:20.327169', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2507, 43, 'http://goldner.biz', '2015-08-05 00:07:20.328466', '2015-08-05 00:07:20.328466', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2508, 43, 'http://bauch.info', '2015-08-05 00:07:20.329769', '2015-08-05 00:07:20.329769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2509, 43, 'http://schmidtwilliamson.info', '2015-08-05 00:07:20.331896', '2015-08-05 00:07:20.331896', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2510, 43, 'http://moen.net', '2015-08-05 00:07:20.334177', '2015-08-05 00:07:20.334177', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2511, 43, 'http://lemke.org', '2015-08-05 00:07:20.335441', '2015-08-05 00:07:20.335441', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2512, 43, 'http://weber.net', '2015-08-05 00:07:20.336837', '2015-08-05 00:07:20.336837', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2513, 43, 'http://welch.biz', '2015-08-05 00:07:20.338054', '2015-08-05 00:07:20.338054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2514, 43, 'http://abbottdouglas.info', '2015-08-05 00:07:20.339289', '2015-08-05 00:07:20.339289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2515, 43, 'http://stokeskemmer.com', '2015-08-05 00:07:20.340434', '2015-08-05 00:07:20.340434', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2516, 43, 'http://smith.net', '2015-08-05 00:07:20.341468', '2015-08-05 00:07:20.341468', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2517, 43, 'http://durgannolan.org', '2015-08-05 00:07:20.342489', '2015-08-05 00:07:20.342489', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2518, 43, 'http://donnellykaulke.name', '2015-08-05 00:07:20.343502', '2015-08-05 00:07:20.343502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2519, 43, 'http://considine.org', '2015-08-05 00:07:20.344786', '2015-08-05 00:07:20.344786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2520, 43, 'http://effertz.com', '2015-08-05 00:07:20.345915', '2015-08-05 00:07:20.345915', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2521, 43, 'http://ondricka.info', '2015-08-05 00:07:20.347054', '2015-08-05 00:07:20.347054', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2522, 43, 'http://smitham.name', '2015-08-05 00:07:20.348477', '2015-08-05 00:07:20.348477', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2523, 43, 'http://wiegand.org', '2015-08-05 00:07:20.349799', '2015-08-05 00:07:20.349799', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2524, 43, 'http://stehrratke.org', '2015-08-05 00:07:20.35103', '2015-08-05 00:07:20.35103', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2525, 43, 'http://abshire.name', '2015-08-05 00:07:20.352219', '2015-08-05 00:07:20.352219', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2526, 43, 'http://jacobs.net', '2015-08-05 00:07:20.353501', '2015-08-05 00:07:20.353501', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2527, 43, 'http://rolfson.name', '2015-08-05 00:07:20.354836', '2015-08-05 00:07:20.354836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2528, 43, 'http://watersanderson.net', '2015-08-05 00:07:20.356085', '2015-08-05 00:07:20.356085', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2529, 43, 'http://reichert.com', '2015-08-05 00:07:20.35744', '2015-08-05 00:07:20.35744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2530, 43, 'http://predovic.net', '2015-08-05 00:07:20.358524', '2015-08-05 00:07:20.358524', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2531, 43, 'http://hermiston.org', '2015-08-05 00:07:20.359636', '2015-08-05 00:07:20.359636', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2532, 43, 'http://grantyundt.biz', '2015-08-05 00:07:20.3618', '2015-08-05 00:07:20.3618', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2533, 43, 'http://marquardt.com', '2015-08-05 00:07:20.363713', '2015-08-05 00:07:20.363713', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2534, 43, 'http://glovermayer.biz', '2015-08-05 00:07:20.364928', '2015-08-05 00:07:20.364928', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2535, 43, 'http://thiel.org', '2015-08-05 00:07:20.366204', '2015-08-05 00:07:20.366204', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2536, 43, 'http://schinner.org', '2015-08-05 00:07:20.367669', '2015-08-05 00:07:20.367669', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2537, 43, 'http://kunde.name', '2015-08-05 00:07:20.368992', '2015-08-05 00:07:20.368992', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2538, 43, 'http://renner.biz', '2015-08-05 00:07:20.37019', '2015-08-05 00:07:20.37019', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2539, 43, 'http://bode.com', '2015-08-05 00:07:20.371331', '2015-08-05 00:07:20.371331', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2540, 43, 'http://hartmann.org', '2015-08-05 00:07:20.372839', '2015-08-05 00:07:20.372839', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2541, 43, 'http://morartorphy.com', '2015-08-05 00:07:20.374082', '2015-08-05 00:07:20.374082', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2542, 43, 'http://baumbach.org', '2015-08-05 00:07:20.375252', '2015-08-05 00:07:20.375252', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2543, 44, 'http://purdyhilll.com', '2015-08-05 00:07:20.503147', '2015-08-05 00:07:20.503147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2544, 44, 'http://sporer.org', '2015-08-05 00:07:20.504508', '2015-08-05 00:07:20.504508', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2545, 44, 'http://wolf.net', '2015-08-05 00:07:20.505883', '2015-08-05 00:07:20.505883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2546, 44, 'http://predovic.info', '2015-08-05 00:07:20.506994', '2015-08-05 00:07:20.506994', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2547, 44, 'http://okeefeheller.com', '2015-08-05 00:07:20.508155', '2015-08-05 00:07:20.508155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2548, 44, 'http://kohlerrolfson.org', '2015-08-05 00:07:20.509544', '2015-08-05 00:07:20.509544', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2549, 44, 'http://ernser.info', '2015-08-05 00:07:20.510666', '2015-08-05 00:07:20.510666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2550, 44, 'http://willwuckert.net', '2015-08-05 00:07:20.51179', '2015-08-05 00:07:20.51179', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2551, 44, 'http://effertz.org', '2015-08-05 00:07:20.51318', '2015-08-05 00:07:20.51318', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2552, 44, 'http://mosciski.biz', '2015-08-05 00:07:20.514593', '2015-08-05 00:07:20.514593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2553, 44, 'http://treutel.biz', '2015-08-05 00:07:20.515878', '2015-08-05 00:07:20.515878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2554, 44, 'http://ritchiejakubowski.name', '2015-08-05 00:07:20.517127', '2015-08-05 00:07:20.517127', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2555, 44, 'http://waters.name', '2015-08-05 00:07:20.518245', '2015-08-05 00:07:20.518245', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2556, 44, 'http://wolf.biz', '2015-08-05 00:07:20.51931', '2015-08-05 00:07:20.51931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2557, 44, 'http://macgyver.info', '2015-08-05 00:07:20.521784', '2015-08-05 00:07:20.521784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2558, 44, 'http://spinka.org', '2015-08-05 00:07:20.523753', '2015-08-05 00:07:20.523753', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2559, 44, 'http://klein.org', '2015-08-05 00:07:20.524851', '2015-08-05 00:07:20.524851', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2560, 44, 'http://durganabshire.com', '2015-08-05 00:07:20.526087', '2015-08-05 00:07:20.526087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2561, 44, 'http://spinka.info', '2015-08-05 00:07:20.527329', '2015-08-05 00:07:20.527329', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2562, 44, 'http://rutherfordkohler.info', '2015-08-05 00:07:20.528583', '2015-08-05 00:07:20.528583', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2563, 44, 'http://parisian.org', '2015-08-05 00:07:20.530748', '2015-08-05 00:07:20.530748', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2564, 44, 'http://marquardt.org', '2015-08-05 00:07:20.532148', '2015-08-05 00:07:20.532148', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2565, 44, 'http://reingerwuckert.org', '2015-08-05 00:07:20.533409', '2015-08-05 00:07:20.533409', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2566, 44, 'http://armstrongsauer.biz', '2015-08-05 00:07:20.534793', '2015-08-05 00:07:20.534793', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2567, 44, 'http://weber.com', '2015-08-05 00:07:20.536284', '2015-08-05 00:07:20.536284', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2568, 44, 'http://harber.name', '2015-08-05 00:07:20.537596', '2015-08-05 00:07:20.537596', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2569, 44, 'http://king.org', '2015-08-05 00:07:20.53881', '2015-08-05 00:07:20.53881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2570, 44, 'http://schambergererdman.org', '2015-08-05 00:07:20.539944', '2015-08-05 00:07:20.539944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2571, 44, 'http://hyatt.org', '2015-08-05 00:07:20.541215', '2015-08-05 00:07:20.541215', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2572, 44, 'http://littel.info', '2015-08-05 00:07:20.54254', '2015-08-05 00:07:20.54254', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2573, 44, 'http://morarjaskolski.name', '2015-08-05 00:07:20.54359', '2015-08-05 00:07:20.54359', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2574, 44, 'http://dickinson.name', '2015-08-05 00:07:20.544756', '2015-08-05 00:07:20.544756', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2575, 44, 'http://harvey.info', '2015-08-05 00:07:20.54613', '2015-08-05 00:07:20.54613', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2576, 44, 'http://prosaccogoldner.name', '2015-08-05 00:07:20.547404', '2015-08-05 00:07:20.547404', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2577, 44, 'http://ruecker.name', '2015-08-05 00:07:20.548685', '2015-08-05 00:07:20.548685', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2578, 44, 'http://nitzschebaumbach.info', '2015-08-05 00:07:20.549834', '2015-08-05 00:07:20.549834', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2579, 44, 'http://collins.name', '2015-08-05 00:07:20.551885', '2015-08-05 00:07:20.551885', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2580, 44, 'http://ward.com', '2015-08-05 00:07:20.553838', '2015-08-05 00:07:20.553838', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2581, 44, 'http://hartmann.name', '2015-08-05 00:07:20.555109', '2015-08-05 00:07:20.555109', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2582, 44, 'http://mclaughlin.info', '2015-08-05 00:07:20.556275', '2015-08-05 00:07:20.556275', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2583, 44, 'http://hoegerabbott.name', '2015-08-05 00:07:20.55757', '2015-08-05 00:07:20.55757', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2584, 44, 'http://runolfsdottir.net', '2015-08-05 00:07:20.558744', '2015-08-05 00:07:20.558744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2585, 44, 'http://bogisich.biz', '2015-08-05 00:07:20.559914', '2015-08-05 00:07:20.559914', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2586, 44, 'http://mayertlehner.org', '2015-08-05 00:07:20.561164', '2015-08-05 00:07:20.561164', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2587, 44, 'http://olsonrunolfsdottir.net', '2015-08-05 00:07:20.562703', '2015-08-05 00:07:20.562703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2588, 44, 'http://reillybernier.com', '2015-08-05 00:07:20.564012', '2015-08-05 00:07:20.564012', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2589, 44, 'http://kris.name', '2015-08-05 00:07:20.565352', '2015-08-05 00:07:20.565352', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2590, 44, 'http://greenfelder.info', '2015-08-05 00:07:20.566556', '2015-08-05 00:07:20.566556', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2591, 44, 'http://cummings.net', '2015-08-05 00:07:20.567944', '2015-08-05 00:07:20.567944', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2592, 44, 'http://swaniawski.org', '2015-08-05 00:07:20.569225', '2015-08-05 00:07:20.569225', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2593, 44, 'http://treutel.net', '2015-08-05 00:07:20.570473', '2015-08-05 00:07:20.570473', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2594, 44, 'http://mayer.net', '2015-08-05 00:07:20.571714', '2015-08-05 00:07:20.571714', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2595, 44, 'http://fadel.org', '2015-08-05 00:07:20.572782', '2015-08-05 00:07:20.572782', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2596, 44, 'http://ruel.org', '2015-08-05 00:07:20.573805', '2015-08-05 00:07:20.573805', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2597, 44, 'http://zulauf.net', '2015-08-05 00:07:20.574828', '2015-08-05 00:07:20.574828', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2598, 44, 'http://denesikheidenreich.com', '2015-08-05 00:07:20.576289', '2015-08-05 00:07:20.576289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2599, 44, 'http://robel.name', '2015-08-05 00:07:20.577678', '2015-08-05 00:07:20.577678', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2600, 44, 'http://halvorson.info', '2015-08-05 00:07:20.578975', '2015-08-05 00:07:20.578975', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2601, 44, 'http://collins.name', '2015-08-05 00:07:20.580155', '2015-08-05 00:07:20.580155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2602, 44, 'http://pfannerstillward.org', '2015-08-05 00:07:20.582213', '2015-08-05 00:07:20.582213', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2603, 44, 'http://mertz.com', '2015-08-05 00:07:20.583546', '2015-08-05 00:07:20.583546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2604, 44, 'http://cremin.info', '2015-08-05 00:07:20.584922', '2015-08-05 00:07:20.584922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2605, 44, 'http://heaneygutmann.com', '2015-08-05 00:07:20.58624', '2015-08-05 00:07:20.58624', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2606, 44, 'http://upton.info', '2015-08-05 00:07:20.587609', '2015-08-05 00:07:20.587609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2607, 44, 'http://hartmann.info', '2015-08-05 00:07:20.588908', '2015-08-05 00:07:20.588908', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2608, 44, 'http://kris.org', '2015-08-05 00:07:20.590268', '2015-08-05 00:07:20.590268', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2609, 44, 'http://ullrich.org', '2015-08-05 00:07:20.591609', '2015-08-05 00:07:20.591609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2610, 44, 'http://lynch.biz', '2015-08-05 00:07:20.593082', '2015-08-05 00:07:20.593082', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2611, 44, 'http://pagac.org', '2015-08-05 00:07:20.594223', '2015-08-05 00:07:20.594223', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2612, 45, 'http://haag.net', '2015-08-05 00:07:21.010146', '2015-08-05 00:07:21.010146', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2613, 45, 'http://larson.biz', '2015-08-05 00:07:21.011573', '2015-08-05 00:07:21.011573', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2614, 45, 'http://dooley.name', '2015-08-05 00:07:21.012969', '2015-08-05 00:07:21.012969', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2615, 45, 'http://wisoky.org', '2015-08-05 00:07:21.01418', '2015-08-05 00:07:21.01418', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2616, 45, 'http://reilly.net', '2015-08-05 00:07:21.015306', '2015-08-05 00:07:21.015306', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2617, 45, 'http://ledner.name', '2015-08-05 00:07:21.016519', '2015-08-05 00:07:21.016519', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2618, 45, 'http://johnsonschiller.biz', '2015-08-05 00:07:21.01772', '2015-08-05 00:07:21.01772', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2619, 45, 'http://rolfsonhand.name', '2015-08-05 00:07:21.018884', '2015-08-05 00:07:21.018884', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2620, 45, 'http://mueller.com', '2015-08-05 00:07:21.020171', '2015-08-05 00:07:21.020171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2621, 45, 'http://abernathy.info', '2015-08-05 00:07:21.022435', '2015-08-05 00:07:21.022435', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2622, 45, 'http://konopelski.name', '2015-08-05 00:07:21.023961', '2015-08-05 00:07:21.023961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2623, 45, 'http://macejkovic.org', '2015-08-05 00:07:21.025205', '2015-08-05 00:07:21.025205', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2624, 45, 'http://lebsackkerluke.biz', '2015-08-05 00:07:21.026372', '2015-08-05 00:07:21.026372', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2625, 45, 'http://emard.net', '2015-08-05 00:07:21.027744', '2015-08-05 00:07:21.027744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2626, 45, 'http://hand.org', '2015-08-05 00:07:21.028933', '2015-08-05 00:07:21.028933', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2627, 45, 'http://turcotte.com', '2015-08-05 00:07:21.030327', '2015-08-05 00:07:21.030327', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2628, 45, 'http://kilback.com', '2015-08-05 00:07:21.031713', '2015-08-05 00:07:21.031713', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2629, 45, 'http://hartmannjast.name', '2015-08-05 00:07:21.032948', '2015-08-05 00:07:21.032948', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2630, 45, 'http://wolff.com', '2015-08-05 00:07:21.03418', '2015-08-05 00:07:21.03418', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2631, 45, 'http://breitenberg.biz', '2015-08-05 00:07:21.035351', '2015-08-05 00:07:21.035351', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2632, 45, 'http://miller.net', '2015-08-05 00:07:21.036559', '2015-08-05 00:07:21.036559', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2633, 45, 'http://fisherbrown.net', '2015-08-05 00:07:21.03782', '2015-08-05 00:07:21.03782', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2634, 45, 'http://wuckertkonopelski.org', '2015-08-05 00:07:21.03908', '2015-08-05 00:07:21.03908', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2635, 45, 'http://greenholt.net', '2015-08-05 00:07:21.040383', '2015-08-05 00:07:21.040383', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2636, 45, 'http://zboncaklind.org', '2015-08-05 00:07:21.041703', '2015-08-05 00:07:21.041703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2637, 45, 'http://heel.org', '2015-08-05 00:07:21.042887', '2015-08-05 00:07:21.042887', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2638, 45, 'http://marquardt.name', '2015-08-05 00:07:21.044074', '2015-08-05 00:07:21.044074', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2639, 45, 'http://heidenreich.com', '2015-08-05 00:07:21.045217', '2015-08-05 00:07:21.045217', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2640, 45, 'http://watsica.biz', '2015-08-05 00:07:21.046379', '2015-08-05 00:07:21.046379', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2641, 45, 'http://miller.name', '2015-08-05 00:07:21.047672', '2015-08-05 00:07:21.047672', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2642, 45, 'http://abshirestreich.name', '2015-08-05 00:07:21.048883', '2015-08-05 00:07:21.048883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2643, 45, 'http://weimannnienow.com', '2015-08-05 00:07:21.050078', '2015-08-05 00:07:21.050078', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2644, 45, 'http://koepp.net', '2015-08-05 00:07:21.051981', '2015-08-05 00:07:21.051981', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2645, 45, 'http://ritchiekohler.org', '2015-08-05 00:07:21.053269', '2015-08-05 00:07:21.053269', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2646, 45, 'http://swift.name', '2015-08-05 00:07:21.054563', '2015-08-05 00:07:21.054563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2647, 45, 'http://schultz.info', '2015-08-05 00:07:21.055808', '2015-08-05 00:07:21.055808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2648, 45, 'http://trompwolff.net', '2015-08-05 00:07:21.057061', '2015-08-05 00:07:21.057061', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2649, 45, 'http://bergstrom.info', '2015-08-05 00:07:21.058351', '2015-08-05 00:07:21.058351', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2650, 45, 'http://gleasonmetz.net', '2015-08-05 00:07:21.059592', '2015-08-05 00:07:21.059592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2651, 45, 'http://gloverprosacco.biz', '2015-08-05 00:07:21.060876', '2015-08-05 00:07:21.060876', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2652, 45, 'http://pollich.org', '2015-08-05 00:07:21.062102', '2015-08-05 00:07:21.062102', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2653, 45, 'http://auer.biz', '2015-08-05 00:07:21.063383', '2015-08-05 00:07:21.063383', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2654, 45, 'http://macgyver.net', '2015-08-05 00:07:21.064749', '2015-08-05 00:07:21.064749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2655, 45, 'http://reichel.net', '2015-08-05 00:07:21.065961', '2015-08-05 00:07:21.065961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2656, 45, 'http://durganullrich.info', '2015-08-05 00:07:21.067055', '2015-08-05 00:07:21.067055', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2657, 45, 'http://denesik.name', '2015-08-05 00:07:21.068381', '2015-08-05 00:07:21.068381', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2658, 45, 'http://harberblock.org', '2015-08-05 00:07:21.069703', '2015-08-05 00:07:21.069703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2659, 45, 'http://hoppewalker.info', '2015-08-05 00:07:21.070932', '2015-08-05 00:07:21.070932', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2660, 45, 'http://swaniawski.net', '2015-08-05 00:07:21.072227', '2015-08-05 00:07:21.072227', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2661, 45, 'http://simonis.biz', '2015-08-05 00:07:21.073538', '2015-08-05 00:07:21.073538', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2662, 45, 'http://nicolasmills.biz', '2015-08-05 00:07:21.074726', '2015-08-05 00:07:21.074726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2663, 45, 'http://larkin.biz', '2015-08-05 00:07:21.075933', '2015-08-05 00:07:21.075933', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2664, 45, 'http://will.name', '2015-08-05 00:07:21.077125', '2015-08-05 00:07:21.077125', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2665, 45, 'http://kemmerboyer.biz', '2015-08-05 00:07:21.078165', '2015-08-05 00:07:21.078165', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2666, 45, 'http://collierebert.net', '2015-08-05 00:07:21.079399', '2015-08-05 00:07:21.079399', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2667, 45, 'http://bernier.biz', '2015-08-05 00:07:21.081772', '2015-08-05 00:07:21.081772', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2668, 45, 'http://runolfon.info', '2015-08-05 00:07:21.08383', '2015-08-05 00:07:21.08383', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2669, 45, 'http://okeefebernhard.net', '2015-08-05 00:07:21.085254', '2015-08-05 00:07:21.085254', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2670, 45, 'http://cole.name', '2015-08-05 00:07:21.086729', '2015-08-05 00:07:21.086729', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2671, 45, 'http://auer.biz', '2015-08-05 00:07:21.088114', '2015-08-05 00:07:21.088114', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2672, 45, 'http://beckervonrueden.name', '2015-08-05 00:07:21.089404', '2015-08-05 00:07:21.089404', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2673, 45, 'http://kutch.com', '2015-08-05 00:07:21.090739', '2015-08-05 00:07:21.090739', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2674, 45, 'http://morarmayert.biz', '2015-08-05 00:07:21.091876', '2015-08-05 00:07:21.091876', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2675, 45, 'http://ward.net', '2015-08-05 00:07:21.093194', '2015-08-05 00:07:21.093194', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2676, 45, 'http://parisianmueller.biz', '2015-08-05 00:07:21.09434', '2015-08-05 00:07:21.09434', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2677, 45, 'http://hoeger.net', '2015-08-05 00:07:21.095555', '2015-08-05 00:07:21.095555', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2678, 45, 'http://carroll.name', '2015-08-05 00:07:21.096811', '2015-08-05 00:07:21.096811', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2679, 45, 'http://wintheiserwilderman.name', '2015-08-05 00:07:21.097891', '2015-08-05 00:07:21.097891', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2680, 45, 'http://reichert.info', '2015-08-05 00:07:21.098967', '2015-08-05 00:07:21.098967', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2681, 45, 'http://wunsch.name', '2015-08-05 00:07:21.100221', '2015-08-05 00:07:21.100221', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2682, 45, 'http://little.info', '2015-08-05 00:07:21.101593', '2015-08-05 00:07:21.101593', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2683, 45, 'http://ryan.net', '2015-08-05 00:07:21.103157', '2015-08-05 00:07:21.103157', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2684, 45, 'http://bartell.org', '2015-08-05 00:07:21.104795', '2015-08-05 00:07:21.104795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2685, 45, 'http://tromp.biz', '2015-08-05 00:07:21.106108', '2015-08-05 00:07:21.106108', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2686, 45, 'http://glover.info', '2015-08-05 00:07:21.107175', '2015-08-05 00:07:21.107175', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2687, 45, 'http://baileystoltenberg.info', '2015-08-05 00:07:21.108409', '2015-08-05 00:07:21.108409', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2688, 45, 'http://bradtkesimonis.info', '2015-08-05 00:07:21.109747', '2015-08-05 00:07:21.109747', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2689, 45, 'http://kilback.net', '2015-08-05 00:07:21.111914', '2015-08-05 00:07:21.111914', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2690, 45, 'http://krajcik.net', '2015-08-05 00:07:21.114007', '2015-08-05 00:07:21.114007', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2691, 45, 'http://beattydeckow.org', '2015-08-05 00:07:21.115414', '2015-08-05 00:07:21.115414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2692, 45, 'http://pagac.name', '2015-08-05 00:07:21.116596', '2015-08-05 00:07:21.116596', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2693, 45, 'http://conncarroll.org', '2015-08-05 00:07:21.117783', '2015-08-05 00:07:21.117783', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2694, 45, 'http://nitzsche.info', '2015-08-05 00:07:21.118861', '2015-08-05 00:07:21.118861', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2695, 45, 'http://feeneystoltenberg.org', '2015-08-05 00:07:21.119987', '2015-08-05 00:07:21.119987', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2696, 45, 'http://watsica.biz', '2015-08-05 00:07:21.121046', '2015-08-05 00:07:21.121046', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2697, 45, 'http://lemkelubowitz.org', '2015-08-05 00:07:21.122039', '2015-08-05 00:07:21.122039', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2698, 45, 'http://damore.net', '2015-08-05 00:07:21.123102', '2015-08-05 00:07:21.123102', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2699, 45, 'http://luettgen.net', '2015-08-05 00:07:21.124176', '2015-08-05 00:07:21.124176', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2700, 45, 'http://stehr.biz', '2015-08-05 00:07:21.125392', '2015-08-05 00:07:21.125392', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2701, 45, 'http://larson.info', '2015-08-05 00:07:21.126611', '2015-08-05 00:07:21.126611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2702, 45, 'http://dare.name', '2015-08-05 00:07:21.12784', '2015-08-05 00:07:21.12784', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2703, 45, 'http://farrell.name', '2015-08-05 00:07:21.128967', '2015-08-05 00:07:21.128967', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2704, 45, 'http://bergnaumdicki.com', '2015-08-05 00:07:21.130154', '2015-08-05 00:07:21.130154', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2705, 45, 'http://dickihane.info', '2015-08-05 00:07:21.13162', '2015-08-05 00:07:21.13162', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2706, 45, 'http://zulaufpfannerstill.name', '2015-08-05 00:07:21.133085', '2015-08-05 00:07:21.133085', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2707, 45, 'http://vonrueden.org', '2015-08-05 00:07:21.134417', '2015-08-05 00:07:21.134417', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2708, 45, 'http://feeneyhamill.net', '2015-08-05 00:07:21.135877', '2015-08-05 00:07:21.135877', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2709, 45, 'http://klocko.biz', '2015-08-05 00:07:21.137378', '2015-08-05 00:07:21.137378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2710, 45, 'http://wehner.org', '2015-08-05 00:07:21.138741', '2015-08-05 00:07:21.138741', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2711, 46, 'http://rice.name', '2015-08-05 00:07:21.32452', '2015-08-05 00:07:21.32452', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2712, 46, 'http://kertzmann.info', '2015-08-05 00:07:21.326112', '2015-08-05 00:07:21.326112', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2713, 46, 'http://olson.net', '2015-08-05 00:07:21.32757', '2015-08-05 00:07:21.32757', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2714, 46, 'http://cruickshank.com', '2015-08-05 00:07:21.329015', '2015-08-05 00:07:21.329015', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2715, 46, 'http://dietrich.biz', '2015-08-05 00:07:21.330555', '2015-08-05 00:07:21.330555', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2716, 46, 'http://hoppe.name', '2015-08-05 00:07:21.332079', '2015-08-05 00:07:21.332079', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2717, 46, 'http://bogangibson.com', '2015-08-05 00:07:21.333546', '2015-08-05 00:07:21.333546', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2718, 46, 'http://fritsch.info', '2015-08-05 00:07:21.334808', '2015-08-05 00:07:21.334808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2719, 46, 'http://gibson.net', '2015-08-05 00:07:21.336234', '2015-08-05 00:07:21.336234', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2720, 46, 'http://mueller.info', '2015-08-05 00:07:21.337675', '2015-08-05 00:07:21.337675', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2721, 46, 'http://sauer.biz', '2015-08-05 00:07:21.338919', '2015-08-05 00:07:21.338919', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2722, 46, 'http://fadeljerde.org', '2015-08-05 00:07:21.340196', '2015-08-05 00:07:21.340196', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2723, 46, 'http://damore.biz', '2015-08-05 00:07:21.341517', '2015-08-05 00:07:21.341517', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2724, 46, 'http://rempeldenesik.biz', '2015-08-05 00:07:21.342883', '2015-08-05 00:07:21.342883', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2725, 46, 'http://whiteprosacco.info', '2015-08-05 00:07:21.344229', '2015-08-05 00:07:21.344229', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2726, 46, 'http://heaneyhowe.com', '2015-08-05 00:07:21.345317', '2015-08-05 00:07:21.345317', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2727, 46, 'http://brakusrempel.com', '2015-08-05 00:07:21.346418', '2015-08-05 00:07:21.346418', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2728, 46, 'http://connelly.org', '2015-08-05 00:07:21.347732', '2015-08-05 00:07:21.347732', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2729, 46, 'http://pacocha.biz', '2015-08-05 00:07:21.348885', '2015-08-05 00:07:21.348885', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2730, 46, 'http://robelpaucek.com', '2015-08-05 00:07:21.349989', '2015-08-05 00:07:21.349989', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2731, 46, 'http://maggio.org', '2015-08-05 00:07:21.352203', '2015-08-05 00:07:21.352203', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2732, 46, 'http://haag.biz', '2015-08-05 00:07:21.353447', '2015-08-05 00:07:21.353447', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2733, 46, 'http://runolfon.name', '2015-08-05 00:07:21.354774', '2015-08-05 00:07:21.354774', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2734, 46, 'http://dibbertyost.com', '2015-08-05 00:07:21.35609', '2015-08-05 00:07:21.35609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2735, 46, 'http://franeckicrooks.biz', '2015-08-05 00:07:21.357466', '2015-08-05 00:07:21.357466', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2736, 46, 'http://hayes.net', '2015-08-05 00:07:21.358732', '2015-08-05 00:07:21.358732', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2737, 46, 'http://shanahan.net', '2015-08-05 00:07:21.359818', '2015-08-05 00:07:21.359818', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2738, 46, 'http://mosciski.biz', '2015-08-05 00:07:21.361021', '2015-08-05 00:07:21.361021', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2739, 46, 'http://framischmeler.org', '2015-08-05 00:07:21.362155', '2015-08-05 00:07:21.362155', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2740, 46, 'http://stiedemann.net', '2015-08-05 00:07:21.363463', '2015-08-05 00:07:21.363463', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2741, 46, 'http://gaylord.biz', '2015-08-05 00:07:21.364839', '2015-08-05 00:07:21.364839', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2742, 46, 'http://terryconn.net', '2015-08-05 00:07:21.36592', '2015-08-05 00:07:21.36592', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2743, 46, 'http://armstrongortiz.net', '2015-08-05 00:07:21.367069', '2015-08-05 00:07:21.367069', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2744, 46, 'http://lehner.org', '2015-08-05 00:07:21.368246', '2015-08-05 00:07:21.368246', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2745, 46, 'http://keeblerschmidt.com', '2015-08-05 00:07:21.369345', '2015-08-05 00:07:21.369345', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2746, 46, 'http://koelpin.info', '2015-08-05 00:07:21.370567', '2015-08-05 00:07:21.370567', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2747, 46, 'http://feil.name', '2015-08-05 00:07:21.371795', '2015-08-05 00:07:21.371795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2748, 46, 'http://wolfkuvalis.biz', '2015-08-05 00:07:21.372931', '2015-08-05 00:07:21.372931', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2749, 46, 'http://herman.com', '2015-08-05 00:07:21.374307', '2015-08-05 00:07:21.374307', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2750, 46, 'http://borer.com', '2015-08-05 00:07:21.375646', '2015-08-05 00:07:21.375646', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2751, 46, 'http://mills.com', '2015-08-05 00:07:21.376992', '2015-08-05 00:07:21.376992', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2752, 46, 'http://hickle.org', '2015-08-05 00:07:21.378218', '2015-08-05 00:07:21.378218', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2753, 46, 'http://haleyherzog.net', '2015-08-05 00:07:21.379334', '2015-08-05 00:07:21.379334', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2754, 46, 'http://schamberger.net', '2015-08-05 00:07:21.38181', '2015-08-05 00:07:21.38181', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2755, 46, 'http://wolfwalsh.com', '2015-08-05 00:07:21.384126', '2015-08-05 00:07:21.384126', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2756, 47, 'http://lebsackbartoletti.net', '2015-08-05 00:07:21.486369', '2015-08-05 00:07:21.486369', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2757, 47, 'http://yostwuckert.name', '2015-08-05 00:07:21.487791', '2015-08-05 00:07:21.487791', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2758, 47, 'http://schuppe.biz', '2015-08-05 00:07:21.489205', '2015-08-05 00:07:21.489205', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2759, 47, 'http://quigleyrutherford.org', '2015-08-05 00:07:21.490585', '2015-08-05 00:07:21.490585', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2760, 47, 'http://effertz.info', '2015-08-05 00:07:21.491938', '2015-08-05 00:07:21.491938', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2761, 47, 'http://tromp.org', '2015-08-05 00:07:21.493183', '2015-08-05 00:07:21.493183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2762, 47, 'http://ohara.com', '2015-08-05 00:07:21.494447', '2015-08-05 00:07:21.494447', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2763, 47, 'http://oconnerdietrich.info', '2015-08-05 00:07:21.495666', '2015-08-05 00:07:21.495666', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2764, 47, 'http://stromanlesch.name', '2015-08-05 00:07:21.496868', '2015-08-05 00:07:21.496868', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2765, 47, 'http://carter.biz', '2015-08-05 00:07:21.498352', '2015-08-05 00:07:21.498352', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2766, 47, 'http://mraz.net', '2015-08-05 00:07:21.499866', '2015-08-05 00:07:21.499866', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2767, 47, 'http://champlin.org', '2015-08-05 00:07:21.501211', '2015-08-05 00:07:21.501211', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2768, 47, 'http://blick.org', '2015-08-05 00:07:21.502599', '2015-08-05 00:07:21.502599', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2769, 47, 'http://carroll.name', '2015-08-05 00:07:21.503938', '2015-08-05 00:07:21.503938', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2770, 47, 'http://prosacco.com', '2015-08-05 00:07:21.505118', '2015-08-05 00:07:21.505118', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2771, 47, 'http://hagenesdaugherty.info', '2015-08-05 00:07:21.506347', '2015-08-05 00:07:21.506347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2772, 47, 'http://pouros.org', '2015-08-05 00:07:21.507409', '2015-08-05 00:07:21.507409', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2773, 47, 'http://mayer.biz', '2015-08-05 00:07:21.508699', '2015-08-05 00:07:21.508699', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2774, 47, 'http://hagenes.name', '2015-08-05 00:07:21.510081', '2015-08-05 00:07:21.510081', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2775, 47, 'http://bruen.name', '2015-08-05 00:07:21.512104', '2015-08-05 00:07:21.512104', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2776, 47, 'http://okeefe.name', '2015-08-05 00:07:21.513542', '2015-08-05 00:07:21.513542', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2777, 47, 'http://ferrygrimes.info', '2015-08-05 00:07:21.514786', '2015-08-05 00:07:21.514786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2778, 47, 'http://stehrbotsford.org', '2015-08-05 00:07:21.515959', '2015-08-05 00:07:21.515959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2779, 47, 'http://smith.info', '2015-08-05 00:07:21.517184', '2015-08-05 00:07:21.517184', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2780, 47, 'http://moore.org', '2015-08-05 00:07:21.51823', '2015-08-05 00:07:21.51823', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2781, 47, 'http://purdy.org', '2015-08-05 00:07:21.519344', '2015-08-05 00:07:21.519344', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2782, 47, 'http://homenick.com', '2015-08-05 00:07:21.520502', '2015-08-05 00:07:21.520502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2783, 47, 'http://quitzonwilkinson.com', '2015-08-05 00:07:21.52171', '2015-08-05 00:07:21.52171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2784, 47, 'http://bayerbednar.net', '2015-08-05 00:07:21.522981', '2015-08-05 00:07:21.522981', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2785, 47, 'http://leuschke.name', '2015-08-05 00:07:21.524091', '2015-08-05 00:07:21.524091', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2786, 47, 'http://schoenthiel.com', '2015-08-05 00:07:21.525341', '2015-08-05 00:07:21.525341', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2787, 47, 'http://zemlak.info', '2015-08-05 00:07:21.526496', '2015-08-05 00:07:21.526496', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2788, 47, 'http://mrazbrekke.info', '2015-08-05 00:07:21.527525', '2015-08-05 00:07:21.527525', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2789, 47, 'http://mann.biz', '2015-08-05 00:07:21.531899', '2015-08-05 00:07:21.531899', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2790, 47, 'http://casper.biz', '2015-08-05 00:07:21.53344', '2015-08-05 00:07:21.53344', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2791, 47, 'http://anderson.net', '2015-08-05 00:07:21.534667', '2015-08-05 00:07:21.534667', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2792, 47, 'http://schustersmitham.info', '2015-08-05 00:07:21.535878', '2015-08-05 00:07:21.535878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2793, 47, 'http://oconnerhettinger.net', '2015-08-05 00:07:21.537153', '2015-08-05 00:07:21.537153', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2794, 47, 'http://ondrickabeatty.name', '2015-08-05 00:07:21.538336', '2015-08-05 00:07:21.538336', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2795, 47, 'http://keelingstokes.biz', '2015-08-05 00:07:21.539402', '2015-08-05 00:07:21.539402', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2796, 47, 'http://steuberkub.name', '2015-08-05 00:07:21.541832', '2015-08-05 00:07:21.541832', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2797, 47, 'http://walsh.org', '2015-08-05 00:07:21.543834', '2015-08-05 00:07:21.543834', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2798, 47, 'http://koelpinwindler.biz', '2015-08-05 00:07:21.545299', '2015-08-05 00:07:21.545299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2799, 47, 'http://kelercremin.name', '2015-08-05 00:07:21.546786', '2015-08-05 00:07:21.546786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2800, 47, 'http://kelerkemmer.org', '2015-08-05 00:07:21.548343', '2015-08-05 00:07:21.548343', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2801, 47, 'http://klein.biz', '2015-08-05 00:07:21.549667', '2015-08-05 00:07:21.549667', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2802, 47, 'http://jenkins.net', '2015-08-05 00:07:21.551091', '2015-08-05 00:07:21.551091', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2803, 47, 'http://larson.com', '2015-08-05 00:07:21.552392', '2015-08-05 00:07:21.552392', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2804, 47, 'http://effertz.net', '2015-08-05 00:07:21.55363', '2015-08-05 00:07:21.55363', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2805, 47, 'http://vandervort.biz', '2015-08-05 00:07:21.554797', '2015-08-05 00:07:21.554797', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2806, 47, 'http://brekke.info', '2015-08-05 00:07:21.55597', '2015-08-05 00:07:21.55597', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2807, 47, 'http://kerlukehagenes.name', '2015-08-05 00:07:21.557128', '2015-08-05 00:07:21.557128', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2808, 47, 'http://towne.net', '2015-08-05 00:07:21.558261', '2015-08-05 00:07:21.558261', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2809, 47, 'http://schambergerkohler.name', '2015-08-05 00:07:21.559508', '2015-08-05 00:07:21.559508', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2810, 47, 'http://ryan.biz', '2015-08-05 00:07:21.560981', '2015-08-05 00:07:21.560981', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2811, 47, 'http://greenholt.com', '2015-08-05 00:07:21.562322', '2015-08-05 00:07:21.562322', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2812, 47, 'http://hammes.net', '2015-08-05 00:07:21.563623', '2015-08-05 00:07:21.563623', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2813, 47, 'http://maggiopagac.com', '2015-08-05 00:07:21.564844', '2015-08-05 00:07:21.564844', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2814, 47, 'http://halvorson.biz', '2015-08-05 00:07:21.565909', '2015-08-05 00:07:21.565909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2815, 47, 'http://torphycremin.org', '2015-08-05 00:07:21.567057', '2015-08-05 00:07:21.567057', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2816, 47, 'http://ortizoconnell.net', '2015-08-05 00:07:21.568249', '2015-08-05 00:07:21.568249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2817, 47, 'http://handfeil.org', '2015-08-05 00:07:21.569621', '2015-08-05 00:07:21.569621', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2818, 47, 'http://keler.net', '2015-08-05 00:07:21.571935', '2015-08-05 00:07:21.571935', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2819, 47, 'http://weimanndaniel.org', '2015-08-05 00:07:21.573312', '2015-08-05 00:07:21.573312', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2820, 47, 'http://casperboyer.name', '2015-08-05 00:07:21.574726', '2015-08-05 00:07:21.574726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2821, 47, 'http://veum.name', '2015-08-05 00:07:21.576098', '2015-08-05 00:07:21.576098', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2822, 47, 'http://rogahnwilliamson.biz', '2015-08-05 00:07:21.577212', '2015-08-05 00:07:21.577212', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2823, 47, 'http://casper.net', '2015-08-05 00:07:21.578537', '2015-08-05 00:07:21.578537', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2824, 47, 'http://schaden.org', '2015-08-05 00:07:21.579673', '2015-08-05 00:07:21.579673', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2825, 47, 'http://kuhic.org', '2015-08-05 00:07:21.581068', '2015-08-05 00:07:21.581068', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2826, 47, 'http://bergstromkilback.org', '2015-08-05 00:07:21.582355', '2015-08-05 00:07:21.582355', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2827, 47, 'http://harvey.name', '2015-08-05 00:07:21.583571', '2015-08-05 00:07:21.583571', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2828, 47, 'http://abshire.com', '2015-08-05 00:07:21.584712', '2015-08-05 00:07:21.584712', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2829, 47, 'http://metz.org', '2015-08-05 00:07:21.58609', '2015-08-05 00:07:21.58609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2830, 47, 'http://hackett.org', '2015-08-05 00:07:21.587316', '2015-08-05 00:07:21.587316', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2831, 47, 'http://hoppeankunding.info', '2015-08-05 00:07:21.588417', '2015-08-05 00:07:21.588417', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2832, 47, 'http://thompson.com', '2015-08-05 00:07:21.589478', '2015-08-05 00:07:21.589478', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2833, 47, 'http://bahringerhane.name', '2015-08-05 00:07:21.590552', '2015-08-05 00:07:21.590552', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2834, 47, 'http://greenfelderkuhn.name', '2015-08-05 00:07:21.591794', '2015-08-05 00:07:21.591794', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2835, 47, 'http://johnstonschamberger.name', '2015-08-05 00:07:21.59289', '2015-08-05 00:07:21.59289', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2836, 47, 'http://littel.com', '2015-08-05 00:07:21.593891', '2015-08-05 00:07:21.593891', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2837, 47, 'http://ratkealtenwerth.info', '2015-08-05 00:07:21.594897', '2015-08-05 00:07:21.594897', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2838, 47, 'http://treutel.biz', '2015-08-05 00:07:21.596243', '2015-08-05 00:07:21.596243', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2839, 47, 'http://kilback.net', '2015-08-05 00:07:21.597756', '2015-08-05 00:07:21.597756', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2840, 47, 'http://armstrong.biz', '2015-08-05 00:07:21.599042', '2015-08-05 00:07:21.599042', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2841, 47, 'http://wuckert.com', '2015-08-05 00:07:21.600415', '2015-08-05 00:07:21.600415', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2842, 47, 'http://harveyokeefe.org', '2015-08-05 00:07:21.60168', '2015-08-05 00:07:21.60168', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2843, 47, 'http://cartwright.biz', '2015-08-05 00:07:21.602925', '2015-08-05 00:07:21.602925', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2844, 47, 'http://bergnaum.org', '2015-08-05 00:07:21.604171', '2015-08-05 00:07:21.604171', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2845, 47, 'http://gottlieblemke.org', '2015-08-05 00:07:21.605631', '2015-08-05 00:07:21.605631', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2846, 47, 'http://stamm.com', '2015-08-05 00:07:21.606983', '2015-08-05 00:07:21.606983', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2847, 47, 'http://kuvalis.org', '2015-08-05 00:07:21.608126', '2015-08-05 00:07:21.608126', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2848, 47, 'http://okon.biz', '2015-08-05 00:07:21.609187', '2015-08-05 00:07:21.609187', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2849, 47, 'http://padberg.info', '2015-08-05 00:07:21.610219', '2015-08-05 00:07:21.610219', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2850, 47, 'http://daugherty.biz', '2015-08-05 00:07:21.611251', '2015-08-05 00:07:21.611251', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2851, 47, 'http://ortiz.org', '2015-08-05 00:07:21.612364', '2015-08-05 00:07:21.612364', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2852, 48, 'http://anderson.name', '2015-08-05 00:07:21.753438', '2015-08-05 00:07:21.753438', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2853, 48, 'http://grady.name', '2015-08-05 00:07:21.75516', '2015-08-05 00:07:21.75516', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2854, 48, 'http://gutkowski.org', '2015-08-05 00:07:21.756633', '2015-08-05 00:07:21.756633', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2855, 48, 'http://jerde.biz', '2015-08-05 00:07:21.758056', '2015-08-05 00:07:21.758056', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2856, 48, 'http://huel.org', '2015-08-05 00:07:21.759471', '2015-08-05 00:07:21.759471', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2857, 48, 'http://fadel.net', '2015-08-05 00:07:21.760872', '2015-08-05 00:07:21.760872', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2858, 48, 'http://maggiorosenbaum.name', '2015-08-05 00:07:21.762213', '2015-08-05 00:07:21.762213', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2859, 48, 'http://bruen.info', '2015-08-05 00:07:21.763553', '2015-08-05 00:07:21.763553', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2860, 48, 'http://buckridge.biz', '2015-08-05 00:07:21.765031', '2015-08-05 00:07:21.765031', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2861, 48, 'http://johnstonemmerich.info', '2015-08-05 00:07:21.766365', '2015-08-05 00:07:21.766365', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2862, 48, 'http://kemmerbrown.info', '2015-08-05 00:07:21.767646', '2015-08-05 00:07:21.767646', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2863, 48, 'http://lehner.org', '2015-08-05 00:07:21.768959', '2015-08-05 00:07:21.768959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2864, 48, 'http://rosenbaummaggio.name', '2015-08-05 00:07:21.770193', '2015-08-05 00:07:21.770193', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2865, 48, 'http://denesik.com', '2015-08-05 00:07:21.771332', '2015-08-05 00:07:21.771332', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2866, 48, 'http://treutel.com', '2015-08-05 00:07:21.772764', '2015-08-05 00:07:21.772764', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2867, 48, 'http://kleintromp.net', '2015-08-05 00:07:21.774121', '2015-08-05 00:07:21.774121', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2868, 48, 'http://auer.org', '2015-08-05 00:07:21.775488', '2015-08-05 00:07:21.775488', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2869, 48, 'http://ruellowe.net', '2015-08-05 00:07:21.776808', '2015-08-05 00:07:21.776808', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2870, 48, 'http://lebsack.name', '2015-08-05 00:07:21.778063', '2015-08-05 00:07:21.778063', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2871, 48, 'http://sipes.name', '2015-08-05 00:07:21.779486', '2015-08-05 00:07:21.779486', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2872, 48, 'http://gislason.org', '2015-08-05 00:07:21.781978', '2015-08-05 00:07:21.781978', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2873, 48, 'http://heller.biz', '2015-08-05 00:07:21.783337', '2015-08-05 00:07:21.783337', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2874, 48, 'http://gutmanngusikowski.biz', '2015-08-05 00:07:21.784653', '2015-08-05 00:07:21.784653', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2875, 48, 'http://connswift.info', '2015-08-05 00:07:21.785934', '2015-08-05 00:07:21.785934', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2876, 48, 'http://stamm.com', '2015-08-05 00:07:21.787036', '2015-08-05 00:07:21.787036', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2877, 48, 'http://stiedemannhansen.name', '2015-08-05 00:07:21.78815', '2015-08-05 00:07:21.78815', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2878, 48, 'http://predovic.net', '2015-08-05 00:07:21.789414', '2015-08-05 00:07:21.789414', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2879, 48, 'http://hillsernser.name', '2015-08-05 00:07:21.79076', '2015-08-05 00:07:21.79076', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2880, 48, 'http://bernier.org', '2015-08-05 00:07:21.791895', '2015-08-05 00:07:21.791895', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2881, 48, 'http://johnsonoconner.biz', '2015-08-05 00:07:21.793043', '2015-08-05 00:07:21.793043', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2882, 48, 'http://aufderharfeest.org', '2015-08-05 00:07:21.794378', '2015-08-05 00:07:21.794378', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2883, 48, 'http://vonrueden.org', '2015-08-05 00:07:21.795577', '2015-08-05 00:07:21.795577', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2884, 48, 'http://johns.net', '2015-08-05 00:07:21.796822', '2015-08-05 00:07:21.796822', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2885, 48, 'http://kuhlmanstrosin.biz', '2015-08-05 00:07:21.798039', '2015-08-05 00:07:21.798039', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2886, 48, 'http://hodkiewicz.net', '2015-08-05 00:07:21.799127', '2015-08-05 00:07:21.799127', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2887, 48, 'http://schneider.info', '2015-08-05 00:07:21.800433', '2015-08-05 00:07:21.800433', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2888, 48, 'http://medhurstschaden.info', '2015-08-05 00:07:21.801686', '2015-08-05 00:07:21.801686', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2889, 48, 'http://grimescummings.com', '2015-08-05 00:07:21.802799', '2015-08-05 00:07:21.802799', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2890, 48, 'http://dach.com', '2015-08-05 00:07:21.803982', '2015-08-05 00:07:21.803982', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2891, 48, 'http://moenmetz.name', '2015-08-05 00:07:21.805347', '2015-08-05 00:07:21.805347', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2892, 48, 'http://corkery.com', '2015-08-05 00:07:21.806702', '2015-08-05 00:07:21.806702', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2893, 48, 'http://skiles.biz', '2015-08-05 00:07:21.80788', '2015-08-05 00:07:21.80788', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2894, 48, 'http://schinnerhackett.name', '2015-08-05 00:07:21.808984', '2015-08-05 00:07:21.808984', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2895, 48, 'http://goodwin.info', '2015-08-05 00:07:21.810078', '2015-08-05 00:07:21.810078', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2896, 48, 'http://boscohermann.info', '2015-08-05 00:07:21.811265', '2015-08-05 00:07:21.811265', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2897, 48, 'http://zulauf.net', '2015-08-05 00:07:21.812704', '2015-08-05 00:07:21.812704', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2898, 48, 'http://hilll.org', '2015-08-05 00:07:21.814083', '2015-08-05 00:07:21.814083', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2899, 48, 'http://mayer.com', '2015-08-05 00:07:21.815315', '2015-08-05 00:07:21.815315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2900, 48, 'http://ledner.net', '2015-08-05 00:07:21.817411', '2015-08-05 00:07:21.817411', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2901, 48, 'http://klingstoltenberg.net', '2015-08-05 00:07:21.818434', '2015-08-05 00:07:21.818434', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2902, 48, 'http://schmidt.biz', '2015-08-05 00:07:21.819437', '2015-08-05 00:07:21.819437', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2903, 48, 'http://yundt.net', '2015-08-05 00:07:21.82053', '2015-08-05 00:07:21.82053', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2904, 48, 'http://satterfield.org', '2015-08-05 00:07:21.821846', '2015-08-05 00:07:21.821846', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2905, 48, 'http://greenholtveum.com', '2015-08-05 00:07:21.823075', '2015-08-05 00:07:21.823075', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2906, 48, 'http://stiedemannharvey.net', '2015-08-05 00:07:21.824201', '2015-08-05 00:07:21.824201', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2907, 48, 'http://bayer.org', '2015-08-05 00:07:21.825276', '2015-08-05 00:07:21.825276', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2908, 48, 'http://parisian.org', '2015-08-05 00:07:21.826492', '2015-08-05 00:07:21.826492', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2909, 48, 'http://kuhlman.info', '2015-08-05 00:07:21.827604', '2015-08-05 00:07:21.827604', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2910, 48, 'http://hagenes.name', '2015-08-05 00:07:21.828744', '2015-08-05 00:07:21.828744', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2911, 48, 'http://hirthe.net', '2015-08-05 00:07:21.829886', '2015-08-05 00:07:21.829886', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2912, 48, 'http://senger.org', '2015-08-05 00:07:21.830984', '2015-08-05 00:07:21.830984', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2913, 48, 'http://metzmoriette.org', '2015-08-05 00:07:21.832066', '2015-08-05 00:07:21.832066', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2914, 48, 'http://oberbrunnerhilll.net', '2015-08-05 00:07:21.833173', '2015-08-05 00:07:21.833173', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2915, 48, 'http://durgan.com', '2015-08-05 00:07:21.834408', '2015-08-05 00:07:21.834408', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2916, 48, 'http://roob.name', '2015-08-05 00:07:21.835677', '2015-08-05 00:07:21.835677', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2917, 48, 'http://dubuque.net', '2015-08-05 00:07:21.836787', '2015-08-05 00:07:21.836787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2918, 48, 'http://schmittgleichner.name', '2015-08-05 00:07:21.83816', '2015-08-05 00:07:21.83816', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2919, 48, 'http://conroy.net', '2015-08-05 00:07:21.839442', '2015-08-05 00:07:21.839442', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2920, 48, 'http://moriettesporer.name', '2015-08-05 00:07:21.840777', '2015-08-05 00:07:21.840777', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2921, 48, 'http://rauwehner.net', '2015-08-05 00:07:21.842087', '2015-08-05 00:07:21.842087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2922, 48, 'http://kohlersmith.com', '2015-08-05 00:07:21.843306', '2015-08-05 00:07:21.843306', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2923, 48, 'http://glover.org', '2015-08-05 00:07:21.844661', '2015-08-05 00:07:21.844661', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2924, 48, 'http://upton.biz', '2015-08-05 00:07:21.845995', '2015-08-05 00:07:21.845995', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2925, 48, 'http://batz.com', '2015-08-05 00:07:21.847148', '2015-08-05 00:07:21.847148', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2926, 48, 'http://schaeferwilkinson.com', '2015-08-05 00:07:21.848215', '2015-08-05 00:07:21.848215', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2927, 48, 'http://kilback.org', '2015-08-05 00:07:21.849408', '2015-08-05 00:07:21.849408', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2928, 48, 'http://okuneva.biz', '2015-08-05 00:07:21.850611', '2015-08-05 00:07:21.850611', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2929, 48, 'http://schimmel.biz', '2015-08-05 00:07:21.851757', '2015-08-05 00:07:21.851757', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2930, 48, 'http://dare.net', '2015-08-05 00:07:21.85298', '2015-08-05 00:07:21.85298', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2931, 48, 'http://kuphal.org', '2015-08-05 00:07:21.854147', '2015-08-05 00:07:21.854147', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2932, 48, 'http://beier.name', '2015-08-05 00:07:21.855322', '2015-08-05 00:07:21.855322', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2933, 48, 'http://funk.name', '2015-08-05 00:07:21.856436', '2015-08-05 00:07:21.856436', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2934, 48, 'http://krajcik.biz', '2015-08-05 00:07:21.857543', '2015-08-05 00:07:21.857543', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2935, 48, 'http://kovacek.org', '2015-08-05 00:07:21.858605', '2015-08-05 00:07:21.858605', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2936, 48, 'http://hirthe.info', '2015-08-05 00:07:21.859909', '2015-08-05 00:07:21.859909', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2937, 48, 'http://blick.info', '2015-08-05 00:07:21.861247', '2015-08-05 00:07:21.861247', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2938, 48, 'http://hermann.com', '2015-08-05 00:07:21.862419', '2015-08-05 00:07:21.862419', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2939, 48, 'http://nitzschekunde.name', '2015-08-05 00:07:21.863831', '2015-08-05 00:07:21.863831', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2940, 48, 'http://lockman.net', '2015-08-05 00:07:21.86536', '2015-08-05 00:07:21.86536', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2941, 48, 'http://powlowski.biz', '2015-08-05 00:07:21.866845', '2015-08-05 00:07:21.866845', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2942, 48, 'http://anderson.net', '2015-08-05 00:07:21.868278', '2015-08-05 00:07:21.868278', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2943, 48, 'http://raynorlittle.net', '2015-08-05 00:07:21.86959', '2015-08-05 00:07:21.86959', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2944, 48, 'http://dooley.com', '2015-08-05 00:07:21.870867', '2015-08-05 00:07:21.870867', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2945, 48, 'http://lemke.net', '2015-08-05 00:07:21.872009', '2015-08-05 00:07:21.872009', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2946, 48, 'http://runolfon.info', '2015-08-05 00:07:21.873333', '2015-08-05 00:07:21.873333', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2947, 48, 'http://quigley.biz', '2015-08-05 00:07:21.874513', '2015-08-05 00:07:21.874513', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2948, 48, 'http://labadieoreilly.biz', '2015-08-05 00:07:21.875783', '2015-08-05 00:07:21.875783', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2949, 48, 'http://nicolas.com', '2015-08-05 00:07:21.876922', '2015-08-05 00:07:21.876922', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2950, 49, 'http://bernhardkuhlman.info', '2015-08-05 00:07:23.144216', '2015-08-05 00:07:23.144216', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2951, 49, 'http://emardmedhurst.net', '2015-08-05 00:07:23.145639', '2015-08-05 00:07:23.145639', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2952, 49, 'http://feil.name', '2015-08-05 00:07:23.147065', '2015-08-05 00:07:23.147065', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2953, 49, 'http://wilkinson.org', '2015-08-05 00:07:23.148493', '2015-08-05 00:07:23.148493', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2954, 49, 'http://blick.com', '2015-08-05 00:07:23.149786', '2015-08-05 00:07:23.149786', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2955, 49, 'http://bartell.info', '2015-08-05 00:07:23.150973', '2015-08-05 00:07:23.150973', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2956, 49, 'http://framihermann.net', '2015-08-05 00:07:23.152188', '2015-08-05 00:07:23.152188', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2957, 49, 'http://crona.name', '2015-08-05 00:07:23.153382', '2015-08-05 00:07:23.153382', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2958, 49, 'http://boyle.net', '2015-08-05 00:07:23.154502', '2015-08-05 00:07:23.154502', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2959, 49, 'http://botsford.net', '2015-08-05 00:07:23.155787', '2015-08-05 00:07:23.155787', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2960, 49, 'http://gleasonboyle.biz', '2015-08-05 00:07:23.157236', '2015-08-05 00:07:23.157236', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2961, 49, 'http://hermann.org', '2015-08-05 00:07:23.15837', '2015-08-05 00:07:23.15837', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2962, 49, 'http://schummklocko.biz', '2015-08-05 00:07:23.159612', '2015-08-05 00:07:23.159612', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2963, 49, 'http://mosciskiankunding.info', '2015-08-05 00:07:23.160749', '2015-08-05 00:07:23.160749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2964, 49, 'http://vonrueden.info', '2015-08-05 00:07:23.161836', '2015-08-05 00:07:23.161836', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2965, 49, 'http://krajcikpadberg.com', '2015-08-05 00:07:23.163035', '2015-08-05 00:07:23.163035', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2966, 49, 'http://funk.com', '2015-08-05 00:07:23.164216', '2015-08-05 00:07:23.164216', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2967, 49, 'http://ankunding.name', '2015-08-05 00:07:23.16552', '2015-08-05 00:07:23.16552', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2968, 49, 'http://boyer.org', '2015-08-05 00:07:23.166726', '2015-08-05 00:07:23.166726', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2969, 49, 'http://hermiston.biz', '2015-08-05 00:07:23.167795', '2015-08-05 00:07:23.167795', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2970, 49, 'http://green.info', '2015-08-05 00:07:23.168984', '2015-08-05 00:07:23.168984', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2971, 49, 'http://manteeichmann.com', '2015-08-05 00:07:23.171881', '2015-08-05 00:07:23.171881', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2972, 49, 'http://corkerygoyette.net', '2015-08-05 00:07:23.173282', '2015-08-05 00:07:23.173282', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2973, 49, 'http://heelwunsch.info', '2015-08-05 00:07:23.174664', '2015-08-05 00:07:23.174664', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2974, 49, 'http://jerde.org', '2015-08-05 00:07:23.17582', '2015-08-05 00:07:23.17582', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2975, 49, 'http://townejacobson.net', '2015-08-05 00:07:23.177117', '2015-08-05 00:07:23.177117', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2976, 49, 'http://schmelerpowlowski.net', '2015-08-05 00:07:23.178239', '2015-08-05 00:07:23.178239', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2977, 49, 'http://mueller.biz', '2015-08-05 00:07:23.179448', '2015-08-05 00:07:23.179448', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2978, 49, 'http://schamberger.net', '2015-08-05 00:07:23.180618', '2015-08-05 00:07:23.180618', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2979, 49, 'http://shields.net', '2015-08-05 00:07:23.181889', '2015-08-05 00:07:23.181889', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2980, 49, 'http://greenholt.name', '2015-08-05 00:07:23.182978', '2015-08-05 00:07:23.182978', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2981, 49, 'http://harrisnader.biz', '2015-08-05 00:07:23.184087', '2015-08-05 00:07:23.184087', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2982, 49, 'http://conn.com', '2015-08-05 00:07:23.185194', '2015-08-05 00:07:23.185194', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2983, 49, 'http://stehr.org', '2015-08-05 00:07:23.186382', '2015-08-05 00:07:23.186382', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2984, 49, 'http://swaniawski.name', '2015-08-05 00:07:23.187565', '2015-08-05 00:07:23.187565', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2985, 49, 'http://satterfield.org', '2015-08-05 00:07:23.188609', '2015-08-05 00:07:23.188609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2986, 49, 'http://reichertsmith.com', '2015-08-05 00:07:23.189656', '2015-08-05 00:07:23.189656', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2987, 49, 'http://mayer.name', '2015-08-05 00:07:23.190718', '2015-08-05 00:07:23.190718', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2988, 49, 'http://kub.org', '2015-08-05 00:07:23.191704', '2015-08-05 00:07:23.191704', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2989, 49, 'http://hodkiewicz.org', '2015-08-05 00:07:23.192742', '2015-08-05 00:07:23.192742', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2990, 49, 'http://ankundingtowne.name', '2015-08-05 00:07:23.193906', '2015-08-05 00:07:23.193906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2991, 49, 'http://stehr.org', '2015-08-05 00:07:23.195058', '2015-08-05 00:07:23.195058', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2992, 49, 'http://quigley.net', '2015-08-05 00:07:23.196195', '2015-08-05 00:07:23.196195', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2993, 49, 'http://treutelhermann.org', '2015-08-05 00:07:23.197279', '2015-08-05 00:07:23.197279', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2994, 49, 'http://cainhickle.net', '2015-08-05 00:07:23.198542', '2015-08-05 00:07:23.198542', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2995, 49, 'http://fay.name', '2015-08-05 00:07:23.199798', '2015-08-05 00:07:23.199798', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2996, 49, 'http://mills.net', '2015-08-05 00:07:23.200892', '2015-08-05 00:07:23.200892', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2997, 49, 'http://kuhlman.biz', '2015-08-05 00:07:23.201935', '2015-08-05 00:07:23.201935', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2998, 49, 'http://binsgleason.biz', '2015-08-05 00:07:23.203315', '2015-08-05 00:07:23.203315', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (2999, 49, 'http://pfannerstillnicolas.org', '2015-08-05 00:07:23.204878', '2015-08-05 00:07:23.204878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3000, 49, 'http://kohler.info', '2015-08-05 00:07:23.205966', '2015-08-05 00:07:23.205966', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3001, 49, 'http://considine.name', '2015-08-05 00:07:23.207081', '2015-08-05 00:07:23.207081', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3002, 49, 'http://keeling.org', '2015-08-05 00:07:23.208159', '2015-08-05 00:07:23.208159', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3003, 49, 'http://feeneykuhic.info', '2015-08-05 00:07:23.209282', '2015-08-05 00:07:23.209282', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3004, 49, 'http://jakubowski.info', '2015-08-05 00:07:23.210504', '2015-08-05 00:07:23.210504', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3005, 49, 'http://cruickshankjacobi.org', '2015-08-05 00:07:23.211623', '2015-08-05 00:07:23.211623', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3006, 49, 'http://gibson.info', '2015-08-05 00:07:23.212687', '2015-08-05 00:07:23.212687', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3007, 49, 'http://lockman.org', '2015-08-05 00:07:23.213824', '2015-08-05 00:07:23.213824', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3008, 49, 'http://hegmannsmith.name', '2015-08-05 00:07:23.214961', '2015-08-05 00:07:23.214961', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3009, 49, 'http://carter.name', '2015-08-05 00:07:23.216189', '2015-08-05 00:07:23.216189', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3010, 49, 'http://bergnaum.biz', '2015-08-05 00:07:23.21756', '2015-08-05 00:07:23.21756', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3011, 49, 'http://leschnader.biz', '2015-08-05 00:07:23.218782', '2015-08-05 00:07:23.218782', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3012, 49, 'http://wilderman.net', '2015-08-05 00:07:23.219918', '2015-08-05 00:07:23.219918', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3013, 49, 'http://lynch.name', '2015-08-05 00:07:23.221299', '2015-08-05 00:07:23.221299', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3014, 49, 'http://schmidt.info', '2015-08-05 00:07:23.222648', '2015-08-05 00:07:23.222648', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3015, 49, 'http://kuvalis.name', '2015-08-05 00:07:23.224007', '2015-08-05 00:07:23.224007', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3016, 49, 'http://veum.org', '2015-08-05 00:07:23.22541', '2015-08-05 00:07:23.22541', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3017, 49, 'http://lakinfadel.info', '2015-08-05 00:07:23.226663', '2015-08-05 00:07:23.226663', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3018, 49, 'http://luettgen.name', '2015-08-05 00:07:23.227972', '2015-08-05 00:07:23.227972', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3019, 49, 'http://nitzscheherzog.com', '2015-08-05 00:07:23.229137', '2015-08-05 00:07:23.229137', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3020, 49, 'http://ankundinglakin.com', '2015-08-05 00:07:23.230183', '2015-08-05 00:07:23.230183', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3021, 49, 'http://schumm.biz', '2015-08-05 00:07:23.231288', '2015-08-05 00:07:23.231288', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3022, 49, 'http://batzsimonis.com', '2015-08-05 00:07:23.232431', '2015-08-05 00:07:23.232431', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3023, 49, 'http://douglaslangworth.net', '2015-08-05 00:07:23.234498', '2015-08-05 00:07:23.234498', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3024, 49, 'http://adamsemmerich.org', '2015-08-05 00:07:23.235878', '2015-08-05 00:07:23.235878', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3025, 49, 'http://ritchie.com', '2015-08-05 00:07:23.237141', '2015-08-05 00:07:23.237141', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3026, 49, 'http://parisianraynor.biz', '2015-08-05 00:07:23.238293', '2015-08-05 00:07:23.238293', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3027, 49, 'http://christiansen.biz', '2015-08-05 00:07:23.239463', '2015-08-05 00:07:23.239463', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3028, 49, 'http://robertsleuschke.org', '2015-08-05 00:07:23.240625', '2015-08-05 00:07:23.240625', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3029, 49, 'http://daughertyschaefer.org', '2015-08-05 00:07:23.241785', '2015-08-05 00:07:23.241785', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3030, 49, 'http://herzog.org', '2015-08-05 00:07:23.243105', '2015-08-05 00:07:23.243105', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3031, 49, 'http://gorczanyfeeney.biz', '2015-08-05 00:07:23.244422', '2015-08-05 00:07:23.244422', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3032, 49, 'http://gibson.com', '2015-08-05 00:07:23.245721', '2015-08-05 00:07:23.245721', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3033, 49, 'http://emmerich.name', '2015-08-05 00:07:23.247027', '2015-08-05 00:07:23.247027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3034, 49, 'http://steubermedhurst.com', '2015-08-05 00:07:23.248339', '2015-08-05 00:07:23.248339', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3035, 50, 'http://okeefe.info', '2015-08-05 00:07:23.413438', '2015-08-05 00:07:23.413438', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3036, 50, 'http://christiansen.org', '2015-08-05 00:07:23.41503', '2015-08-05 00:07:23.41503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3037, 50, 'http://sporerpagac.net', '2015-08-05 00:07:23.416456', '2015-08-05 00:07:23.416456', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3038, 50, 'http://lebsack.com', '2015-08-05 00:07:23.41769', '2015-08-05 00:07:23.41769', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3039, 50, 'http://feeneykrajcik.com', '2015-08-05 00:07:23.419002', '2015-08-05 00:07:23.419002', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3040, 50, 'http://durganroberts.net', '2015-08-05 00:07:23.420351', '2015-08-05 00:07:23.420351', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3041, 50, 'http://mante.info', '2015-08-05 00:07:23.421682', '2015-08-05 00:07:23.421682', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3042, 50, 'http://klocko.info', '2015-08-05 00:07:23.422974', '2015-08-05 00:07:23.422974', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3043, 50, 'http://frami.name', '2015-08-05 00:07:23.424471', '2015-08-05 00:07:23.424471', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3044, 50, 'http://pacocha.biz', '2015-08-05 00:07:23.425696', '2015-08-05 00:07:23.425696', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3045, 50, 'http://corkeryondricka.info', '2015-08-05 00:07:23.426801', '2015-08-05 00:07:23.426801', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3046, 50, 'http://runolfsdottirrath.net', '2015-08-05 00:07:23.427907', '2015-08-05 00:07:23.427907', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3047, 50, 'http://fisherschaden.com', '2015-08-05 00:07:23.429031', '2015-08-05 00:07:23.429031', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3048, 50, 'http://cruickshank.org', '2015-08-05 00:07:23.430451', '2015-08-05 00:07:23.430451', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3049, 50, 'http://lubowitz.info', '2015-08-05 00:07:23.431614', '2015-08-05 00:07:23.431614', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3050, 50, 'http://yundtwisoky.net', '2015-08-05 00:07:23.432749', '2015-08-05 00:07:23.432749', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3051, 50, 'http://morietteschamberger.biz', '2015-08-05 00:07:23.434055', '2015-08-05 00:07:23.434055', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3052, 50, 'http://king.com', '2015-08-05 00:07:23.435232', '2015-08-05 00:07:23.435232', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3053, 50, 'http://ernser.com', '2015-08-05 00:07:23.436489', '2015-08-05 00:07:23.436489', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3054, 50, 'http://swaniawski.org', '2015-08-05 00:07:23.437563', '2015-08-05 00:07:23.437563', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3055, 50, 'http://leuschke.net', '2015-08-05 00:07:23.438699', '2015-08-05 00:07:23.438699', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3056, 50, 'http://abshire.com', '2015-08-05 00:07:23.440249', '2015-08-05 00:07:23.440249', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3057, 50, 'http://wiegand.biz', '2015-08-05 00:07:23.442478', '2015-08-05 00:07:23.442478', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3058, 50, 'http://powlowskiankunding.info', '2015-08-05 00:07:23.443703', '2015-08-05 00:07:23.443703', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3059, 50, 'http://roob.name', '2015-08-05 00:07:23.444906', '2015-08-05 00:07:23.444906', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3060, 50, 'http://legroslittle.info', '2015-08-05 00:07:23.44613', '2015-08-05 00:07:23.44613', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3061, 50, 'http://starkdooley.net', '2015-08-05 00:07:23.447228', '2015-08-05 00:07:23.447228', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3062, 50, 'http://sawaynjerde.org', '2015-08-05 00:07:23.448419', '2015-08-05 00:07:23.448419', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3063, 50, 'http://kertzmann.biz', '2015-08-05 00:07:23.449609', '2015-08-05 00:07:23.449609', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3064, 50, 'http://schowalter.biz', '2015-08-05 00:07:23.450781', '2015-08-05 00:07:23.450781', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3065, 50, 'http://emmerich.com', '2015-08-05 00:07:23.452027', '2015-08-05 00:07:23.452027', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3066, 50, 'http://cremin.org', '2015-08-05 00:07:23.453182', '2015-08-05 00:07:23.453182', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3067, 50, 'http://streichgoodwin.net', '2015-08-05 00:07:23.454524', '2015-08-05 00:07:23.454524', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3068, 50, 'http://towne.biz', '2015-08-05 00:07:23.455716', '2015-08-05 00:07:23.455716', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3069, 50, 'http://flatleykulas.com', '2015-08-05 00:07:23.457003', '2015-08-05 00:07:23.457003', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3070, 50, 'http://lakinveum.org', '2015-08-05 00:07:23.458181', '2015-08-05 00:07:23.458181', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3071, 50, 'http://spencerkling.biz', '2015-08-05 00:07:23.459272', '2015-08-05 00:07:23.459272', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3072, 50, 'http://mcdermott.name', '2015-08-05 00:07:23.4604', '2015-08-05 00:07:23.4604', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3073, 50, 'http://heidenreich.name', '2015-08-05 00:07:23.461699', '2015-08-05 00:07:23.461699', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3074, 50, 'http://hackett.com', '2015-08-05 00:07:23.462929', '2015-08-05 00:07:23.462929', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3075, 50, 'http://millsoconnell.info', '2015-08-05 00:07:23.464197', '2015-08-05 00:07:23.464197', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3076, 50, 'http://hartmann.org', '2015-08-05 00:07:23.465589', '2015-08-05 00:07:23.465589', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3077, 50, 'http://oconner.name', '2015-08-05 00:07:23.466992', '2015-08-05 00:07:23.466992', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3078, 50, 'http://jaskolski.com', '2015-08-05 00:07:23.468503', '2015-08-05 00:07:23.468503', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3079, 50, 'http://schmeler.net', '2015-08-05 00:07:23.469809', '2015-08-05 00:07:23.469809', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3080, 50, 'http://abshire.info', '2015-08-05 00:07:23.471917', '2015-08-05 00:07:23.471917', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3081, 50, 'http://heathcote.info', '2015-08-05 00:07:23.474401', '2015-08-05 00:07:23.474401', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3082, 50, 'http://orn.biz', '2015-08-05 00:07:23.47577', '2015-08-05 00:07:23.47577', '0.0.0.0');
INSERT INTO visits (id, short_id, referred, created_at, updated_at, ipaddress) VALUES (3083, 50, 'http://quigleycorkery.biz', '2015-08-05 00:07:23.477083', '2015-08-05 00:07:23.477083', '0.0.0.0');


--
-- Name: visits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('visits_id_seq', 3083, true);


--
-- Name: embedded_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY embedded_forms
    ADD CONSTRAINT embedded_forms_pkey PRIMARY KEY (id);


--
-- Name: shorts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY shorts
    ADD CONSTRAINT shorts_pkey PRIMARY KEY (id);


--
-- Name: slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: visits_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY visits
    ADD CONSTRAINT visits_pkey PRIMARY KEY (id);


--
-- Name: index_shorts_on_contracted; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_shorts_on_contracted ON shorts USING btree (contracted);


--
-- Name: index_slugs_on_n_s_s_and_s; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_slugs_on_n_s_s_and_s ON slugs USING btree (name, sluggable_type, sequence, scope);


--
-- Name: index_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_slugs_on_sluggable_id ON slugs USING btree (sluggable_id);


--
-- Name: index_users_on_api_key; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_api_key ON users USING btree (api_key);


--
-- Name: index_visits_on_short_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_visits_on_short_id ON visits USING btree (short_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

