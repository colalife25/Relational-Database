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
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 2018, 241, 4, 2, 'Final', 242);
INSERT INTO public.games VALUES (2, 2018, 243, 2, 0, 'Third Place', 244);
INSERT INTO public.games VALUES (3, 2018, 242, 2, 1, 'Semi-Final', 244);
INSERT INTO public.games VALUES (4, 2018, 241, 1, 0, 'Semi-Final', 243);
INSERT INTO public.games VALUES (5, 2018, 242, 3, 2, 'Quarter-Final', 245);
INSERT INTO public.games VALUES (6, 2018, 244, 2, 0, 'Quarter-Final', 246);
INSERT INTO public.games VALUES (7, 2018, 243, 2, 1, 'Quarter-Final', 247);
INSERT INTO public.games VALUES (8, 2018, 241, 2, 0, 'Quarter-Final', 248);
INSERT INTO public.games VALUES (9, 2018, 244, 2, 1, 'Eighth-Final', 249);
INSERT INTO public.games VALUES (10, 2018, 246, 1, 0, 'Eighth-Final', 250);
INSERT INTO public.games VALUES (11, 2018, 243, 3, 2, 'Eighth-Final', 251);
INSERT INTO public.games VALUES (12, 2018, 247, 2, 0, 'Eighth-Final', 252);
INSERT INTO public.games VALUES (13, 2018, 242, 2, 1, 'Eighth-Final', 253);
INSERT INTO public.games VALUES (14, 2018, 245, 2, 1, 'Eighth-Final', 254);
INSERT INTO public.games VALUES (15, 2018, 248, 2, 1, 'Eighth-Final', 255);
INSERT INTO public.games VALUES (16, 2018, 241, 4, 3, 'Eighth-Final', 256);
INSERT INTO public.games VALUES (17, 2014, 257, 1, 0, 'Final', 256);
INSERT INTO public.games VALUES (18, 2014, 258, 3, 0, 'Third Place', 247);
INSERT INTO public.games VALUES (19, 2014, 256, 1, 0, 'Semi-Final', 258);
INSERT INTO public.games VALUES (20, 2014, 257, 7, 1, 'Semi-Final', 247);
INSERT INTO public.games VALUES (21, 2014, 258, 1, 0, 'Quarter-Final', 259);
INSERT INTO public.games VALUES (22, 2014, 256, 1, 0, 'Quarter-Final', 243);
INSERT INTO public.games VALUES (23, 2014, 247, 2, 1, 'Quarter-Final', 249);
INSERT INTO public.games VALUES (24, 2014, 257, 1, 0, 'Quarter-Final', 241);
INSERT INTO public.games VALUES (25, 2014, 247, 2, 1, 'Eighth-Final', 260);
INSERT INTO public.games VALUES (26, 2014, 249, 2, 0, 'Eighth-Final', 248);
INSERT INTO public.games VALUES (27, 2014, 241, 2, 0, 'Eighth-Final', 261);
INSERT INTO public.games VALUES (28, 2014, 257, 2, 1, 'Eighth-Final', 262);
INSERT INTO public.games VALUES (29, 2014, 258, 2, 1, 'Eighth-Final', 252);
INSERT INTO public.games VALUES (30, 2014, 259, 2, 1, 'Eighth-Final', 263);
INSERT INTO public.games VALUES (31, 2014, 256, 1, 0, 'Eighth-Final', 250);
INSERT INTO public.games VALUES (32, 2014, 243, 2, 1, 'Eighth-Final', 264);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 241);
INSERT INTO public.teams VALUES ('Croatia', 242);
INSERT INTO public.teams VALUES ('Belgium', 243);
INSERT INTO public.teams VALUES ('England', 244);
INSERT INTO public.teams VALUES ('Russia', 245);
INSERT INTO public.teams VALUES ('Sweden', 246);
INSERT INTO public.teams VALUES ('Brazil', 247);
INSERT INTO public.teams VALUES ('Uruguay', 248);
INSERT INTO public.teams VALUES ('Colombia', 249);
INSERT INTO public.teams VALUES ('Switzerland', 250);
INSERT INTO public.teams VALUES ('Japan', 251);
INSERT INTO public.teams VALUES ('Mexico', 252);
INSERT INTO public.teams VALUES ('Denmark', 253);
INSERT INTO public.teams VALUES ('Spain', 254);
INSERT INTO public.teams VALUES ('Portugal', 255);
INSERT INTO public.teams VALUES ('Argentina', 256);
INSERT INTO public.teams VALUES ('Germany', 257);
INSERT INTO public.teams VALUES ('Netherlands', 258);
INSERT INTO public.teams VALUES ('Costa Rica', 259);
INSERT INTO public.teams VALUES ('Chile', 260);
INSERT INTO public.teams VALUES ('Nigeria', 261);
INSERT INTO public.teams VALUES ('Algeria', 262);
INSERT INTO public.teams VALUES ('Greece', 263);
INSERT INTO public.teams VALUES ('United States', 264);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 264, true);


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

