--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: civil; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civil (
    civil_id integer NOT NULL,
    name character varying(20) NOT NULL,
    pepole integer,
    planet_id integer
);


ALTER TABLE public.civil OWNER TO freecodecamp;

--
-- Name: civil_civil_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civil_civil_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civil_civil_id_seq OWNER TO freecodecamp;

--
-- Name: civil_civil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civil_civil_id_seq OWNED BY public.civil.civil_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance numeric(10,2) NOT NULL,
    black_hole boolean DEFAULT false,
    discripsion text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    atmosfer boolean DEFAULT false,
    length integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    condinets integer,
    temp integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    temp integer NOT NULL,
    discripsion text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: civil civil_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil ALTER COLUMN civil_id SET DEFAULT nextval('public.civil_civil_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: civil; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civil VALUES (1, 'human', 40000000, 1);
INSERT INTO public.civil VALUES (2, 'humanb', 24000, 9);
INSERT INTO public.civil VALUES (3, 'moyrpen', 460000, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milk', 13.40, true, 'small galaxy');
INSERT INTO public.galaxy VALUES (2, 'milk1', 14.40, true, 'small galaxy');
INSERT INTO public.galaxy VALUES (3, 'milk4', 23.40, false, 'galaxy');
INSERT INTO public.galaxy VALUES (4, 'milk7', 21.40, false, 'galaxy');
INSERT INTO public.galaxy VALUES (5, 'zamilk4', 33.40, true, 'agalaxy');
INSERT INTO public.galaxy VALUES (6, 'milk234', 28.40, false, 'agalaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, 450, 1);
INSERT INTO public.moon VALUES (2, 'fobos', false, 200, 2);
INSERT INTO public.moon VALUES (3, 'dimos', false, 150, 2);
INSERT INTO public.moon VALUES (4, 'jup1', true, 800, 3);
INSERT INTO public.moon VALUES (5, 'jup2', true, 500, 3);
INSERT INTO public.moon VALUES (6, 'jup3', true, 200, 3);
INSERT INTO public.moon VALUES (7, 'moon11', false, 450, 6);
INSERT INTO public.moon VALUES (8, 'fobos2', false, 200, 9);
INSERT INTO public.moon VALUES (9, 'dimos5', false, 150, 9);
INSERT INTO public.moon VALUES (10, 'jup14', true, 800, 5);
INSERT INTO public.moon VALUES (11, 'jup22', true, 500, 8);
INSERT INTO public.moon VALUES (12, 'jup31', true, 200, 9);
INSERT INTO public.moon VALUES (13, 'moon21', false, 450, 7);
INSERT INTO public.moon VALUES (14, 'fobos3', false, 200, 10);
INSERT INTO public.moon VALUES (15, 'dimos4', false, 150, 9);
INSERT INTO public.moon VALUES (16, 'jup15', true, 800, 5);
INSERT INTO public.moon VALUES (17, 'jup221', true, 500, 9);
INSERT INTO public.moon VALUES (18, 'jup32', true, 200, 11);
INSERT INTO public.moon VALUES (19, 'moon31', false, 450, 8);
INSERT INTO public.moon VALUES (20, 'fobos11', false, 200, 11);
INSERT INTO public.moon VALUES (21, 'dimos11', false, 150, 11);
INSERT INTO public.moon VALUES (22, 'jup11', true, 800, 6);
INSERT INTO public.moon VALUES (23, 'jup27', true, 500, 9);
INSERT INTO public.moon VALUES (24, 'jup33', true, 200, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 6, 25, 1);
INSERT INTO public.planet VALUES (2, 'mars', 0, 0, 1);
INSERT INTO public.planet VALUES (3, 'jupiter', 3, 300, 1);
INSERT INTO public.planet VALUES (4, 'hermis', 2, 800, 1);
INSERT INTO public.planet VALUES (5, 'earth2', 6, 25, 3);
INSERT INTO public.planet VALUES (6, 'mars2', 0, 0, 3);
INSERT INTO public.planet VALUES (7, 'jupiter2', 3, 300, 2);
INSERT INTO public.planet VALUES (8, 'hermis2', 2, 800, 2);
INSERT INTO public.planet VALUES (9, 'earth3', 6, 25, 5);
INSERT INTO public.planet VALUES (10, 'mars3', 0, 0, 5);
INSERT INTO public.planet VALUES (11, 'jupiter3', 3, 300, 6);
INSERT INTO public.planet VALUES (12, 'hermis3', 2, 800, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mars', 1, 'small planet', 1);
INSERT INTO public.star VALUES (2, 'laars', 13, 'planet', 2);
INSERT INTO public.star VALUES (3, 'mars2', 34, 'small planet', 3);
INSERT INTO public.star VALUES (4, 'venusz', 0, 'small planet', 4);
INSERT INTO public.star VALUES (5, 'jupiter', 200, 'large planet', 5);
INSERT INTO public.star VALUES (6, 'zamars', 25, 'small planet', 6);


--
-- Name: civil_civil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civil_civil_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: civil civil_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_name_key UNIQUE (name);


--
-- Name: civil civil_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_pkey PRIMARY KEY (civil_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: civil civil_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civil
    ADD CONSTRAINT civil_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

