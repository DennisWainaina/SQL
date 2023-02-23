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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
-- Name: number_guessing; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guessing (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.number_guessing OWNER TO freecodecamp;

--
-- Data for Name: number_guessing; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guessing VALUES ('user_1677138720983', 1, NULL);
INSERT INTO public.number_guessing VALUES ('Mark', 2, 7);
INSERT INTO public.number_guessing VALUES ('user_1677138720984', 1, NULL);
INSERT INTO public.number_guessing VALUES ('user_1677142506608', 2, 176);
INSERT INTO public.number_guessing VALUES ('user_1677145592907', 2, 489);
INSERT INTO public.number_guessing VALUES ('user_1677142506609', 5, 116);
INSERT INTO public.number_guessing VALUES ('Lenox', 3, 4);
INSERT INTO public.number_guessing VALUES ('user_1677145592908', 5, 263);
INSERT INTO public.number_guessing VALUES ('James', 5, 8);
INSERT INTO public.number_guessing VALUES ('user_1677140815414', 2, 559);
INSERT INTO public.number_guessing VALUES ('John', 3, 10);
INSERT INTO public.number_guessing VALUES ('Dennis', 1, 8);
INSERT INTO public.number_guessing VALUES ('user_1677140815415', 2, 81);
INSERT INTO public.number_guessing VALUES ('user_1677142955128', 2, 202);
INSERT INTO public.number_guessing VALUES ('user_1677146080533', 2, 382);
INSERT INTO public.number_guessing VALUES ('user_1677142955129', 5, 4);
INSERT INTO public.number_guessing VALUES ('user_1677141988237', 2, 694);
INSERT INTO public.number_guessing VALUES ('user_1677141988238', 5, 851);
INSERT INTO public.number_guessing VALUES ('user_1677146080534', 5, 221);
INSERT INTO public.number_guessing VALUES ('user_1677143390417', 2, 438);
INSERT INTO public.number_guessing VALUES ('user_1677143390418', 5, 124);
INSERT INTO public.number_guessing VALUES ('user_1677143673523', 2, 937);
INSERT INTO public.number_guessing VALUES ('user_1677143673524', 5, 143);
INSERT INTO public.number_guessing VALUES ('user_1677137441735', NULL, NULL);
INSERT INTO public.number_guessing VALUES ('user_1677137441734', NULL, NULL);
INSERT INTO public.number_guessing VALUES ('user_1677138537868', 1, NULL);
INSERT INTO public.number_guessing VALUES ('user_1677144051881', 2, 430);
INSERT INTO public.number_guessing VALUES ('user_1677138537869', 1, NULL);
INSERT INTO public.number_guessing VALUES ('user_1677144051882', 5, 307);


--
-- PostgreSQL database dump complete
--

