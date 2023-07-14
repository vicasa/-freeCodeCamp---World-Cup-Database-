--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- dump(pravljenje fajla koji rekonstruise bazu) se radi komandom pg_dump -cC --inserts -U freecodecamp worldcup > worldcup.sql iz bash-a
-- dok se rekonstrukcija baze (tj. pravljenje baze na osnovu fajla) postize komandom psql -U postgres < worldcup.sql

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 63, 64, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 65, 66, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 64, 66, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 63, 65, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 64, 67, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 66, 68, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 65, 69, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 63, 70, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 66, 71, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 68, 72, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 65, 73, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 69, 74, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 64, 75, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 67, 76, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 70, 77, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 63, 78, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 79, 78, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 80, 69, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 78, 80, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 79, 69, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 80, 81, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 78, 65, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 69, 71, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 79, 63, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 69, 82, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 71, 70, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 63, 83, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 79, 84, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 80, 74, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 81, 85, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 78, 72, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 65, 86, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (63, 'France');
INSERT INTO public.teams VALUES (64, 'Croatia');
INSERT INTO public.teams VALUES (65, 'Belgium');
INSERT INTO public.teams VALUES (66, 'England');
INSERT INTO public.teams VALUES (67, 'Russia');
INSERT INTO public.teams VALUES (68, 'Sweden');
INSERT INTO public.teams VALUES (69, 'Brazil');
INSERT INTO public.teams VALUES (70, 'Uruguay');
INSERT INTO public.teams VALUES (71, 'Colombia');
INSERT INTO public.teams VALUES (72, 'Switzerland');
INSERT INTO public.teams VALUES (73, 'Japan');
INSERT INTO public.teams VALUES (74, 'Mexico');
INSERT INTO public.teams VALUES (75, 'Denmark');
INSERT INTO public.teams VALUES (76, 'Spain');
INSERT INTO public.teams VALUES (77, 'Portugal');
INSERT INTO public.teams VALUES (78, 'Argentina');
INSERT INTO public.teams VALUES (79, 'Germany');
INSERT INTO public.teams VALUES (80, 'Netherlands');
INSERT INTO public.teams VALUES (81, 'Costa Rica');
INSERT INTO public.teams VALUES (82, 'Chile');
INSERT INTO public.teams VALUES (83, 'Nigeria');
INSERT INTO public.teams VALUES (84, 'Algeria');
INSERT INTO public.teams VALUES (85, 'Greece');
INSERT INTO public.teams VALUES (86, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 86, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


