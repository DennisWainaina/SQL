--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    length integer,
    no_of_planets integer,
    finals integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    finals integer,
    winnings integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    life boolean,
    radius numeric,
    color text,
    has_moons boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: population; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.population (
    name character varying(20) NOT NULL,
    population_id integer NOT NULL,
    gender text,
    country text
);


ALTER TABLE public.population OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.population_population_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.population_population_id_seq OWNER TO freecodecamp;

--
-- Name: population_population_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.population_population_id_seq OWNED BY public.population.population_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    brightness text,
    width integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: population population_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population ALTER COLUMN population_id SET DEFAULT nextval('public.population_population_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 5000000, 60, NULL);
INSERT INTO public.galaxy VALUES (3, 'B', 6000000, 70, NULL);
INSERT INTO public.galaxy VALUES (6, 'C', 7000000, 80, NULL);
INSERT INTO public.galaxy VALUES (7, 'D', 8000000, 90, NULL);
INSERT INTO public.galaxy VALUES (8, 'E', 9000000, 100, NULL);
INSERT INTO public.galaxy VALUES (9, 'F', 10000000, 110, NULL);
INSERT INTO public.galaxy VALUES (10, 'G', 11000000, 120, NULL);
INSERT INTO public.galaxy VALUES (11, 'H', 12000000, 130, NULL);
INSERT INTO public.galaxy VALUES (12, 'I', 13000000, 140, NULL);
INSERT INTO public.galaxy VALUES (13, 'J', 14000000, 150, NULL);
INSERT INTO public.galaxy VALUES (14, 'K', 15000000, 160, NULL);
INSERT INTO public.galaxy VALUES (15, 'L', 16000000, 170, NULL);
INSERT INTO public.galaxy VALUES (16, 'M', 17000000, 180, NULL);
INSERT INTO public.galaxy VALUES (17, 'N', 18000000, 190, NULL);
INSERT INTO public.galaxy VALUES (18, 'O', 19000000, 200, NULL);
INSERT INTO public.galaxy VALUES (19, 'P', 20000000, 210, NULL);
INSERT INTO public.galaxy VALUES (20, 'Q', 21000000, 220, NULL);
INSERT INTO public.galaxy VALUES (21, 'R', 22000000, 230, NULL);
INSERT INTO public.galaxy VALUES (22, 'S', 23000000, 240, NULL);
INSERT INTO public.galaxy VALUES (23, 'T', 24000000, 250, NULL);
INSERT INTO public.galaxy VALUES (5, 'A', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'B', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'C', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'D', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'E', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'F', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'G', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'H', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'I', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'J', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'K', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'L', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'M', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'N', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'O', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'P', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'R', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'S', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'T', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (1, 'A', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (21, 'A', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'B', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'C', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'D', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, 'E', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (26, 'F', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, 'G', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, 'H', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, 'I', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, 'J', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (31, 'K', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (32, 'L', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'M', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'N', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'O', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'P', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'Q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'R', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (39, 'S', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (40, 'T', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (1, 'yes', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: population; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.population VALUES ('A', 1, 'M', 'UK');
INSERT INTO public.population VALUES ('B', 2, 'M', 'US');
INSERT INTO public.population VALUES ('C', 3, 'M', 'US');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'B', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'C', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'D', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'E', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'F', NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'G', NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'H', NULL, NULL, NULL);
INSERT INTO public.star VALUES (1, 'A', 5, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 23, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 40, true);


--
-- Name: population_population_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.population_population_id_seq', 1, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_has_moons_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_has_moons_key UNIQUE (has_moons);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: population population_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_pkey PRIMARY KEY (population_id);


--
-- Name: population population_population_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.population
    ADD CONSTRAINT population_population_id_key UNIQUE (population_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

