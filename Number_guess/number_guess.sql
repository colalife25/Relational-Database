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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 0, 556);
INSERT INTO public.games VALUES (2, 2, 0, 440);
INSERT INTO public.games VALUES (3, 2, 0, 992);
INSERT INTO public.games VALUES (4, 3, 0, 811);
INSERT INTO public.games VALUES (5, 3, 0, 21);
INSERT INTO public.games VALUES (6, 2, 0, 52);
INSERT INTO public.games VALUES (7, 2, 0, 381);
INSERT INTO public.games VALUES (8, 2, 0, 104);
INSERT INTO public.games VALUES (9, 4, 0, 271);
INSERT INTO public.games VALUES (10, 4, 0, 266);
INSERT INTO public.games VALUES (11, 5, 0, 331);
INSERT INTO public.games VALUES (12, 5, 0, 640);
INSERT INTO public.games VALUES (13, 4, 0, 400);
INSERT INTO public.games VALUES (14, 4, 0, 390);
INSERT INTO public.games VALUES (15, 4, 0, 30);
INSERT INTO public.games VALUES (16, 6, 0, 803);
INSERT INTO public.games VALUES (17, 6, 0, 328);
INSERT INTO public.games VALUES (18, 7, 0, 911);
INSERT INTO public.games VALUES (19, 7, 0, 377);
INSERT INTO public.games VALUES (20, 6, 0, 702);
INSERT INTO public.games VALUES (21, 6, 0, 216);
INSERT INTO public.games VALUES (22, 6, 0, 612);
INSERT INTO public.games VALUES (23, 8, 0, 248);
INSERT INTO public.games VALUES (24, 8, 0, 279);
INSERT INTO public.games VALUES (25, 9, 0, 618);
INSERT INTO public.games VALUES (26, 9, 0, 270);
INSERT INTO public.games VALUES (27, 8, 0, 982);
INSERT INTO public.games VALUES (28, 8, 0, 371);
INSERT INTO public.games VALUES (29, 8, 0, 934);
INSERT INTO public.games VALUES (30, 1, 0, 122);
INSERT INTO public.games VALUES (31, 1, 0, 169);
INSERT INTO public.games VALUES (32, 1, 12, 315);
INSERT INTO public.games VALUES (33, 12, 1001, 1000);
INSERT INTO public.games VALUES (34, 12, 440, 439);
INSERT INTO public.games VALUES (35, 13, 131, 130);
INSERT INTO public.games VALUES (36, 13, 463, 462);
INSERT INTO public.games VALUES (37, 12, 323, 320);
INSERT INTO public.games VALUES (38, 12, 199, 197);
INSERT INTO public.games VALUES (39, 12, 466, 465);
INSERT INTO public.games VALUES (40, 14, 714, 713);
INSERT INTO public.games VALUES (41, 14, 606, 605);
INSERT INTO public.games VALUES (42, 15, 260, 259);
INSERT INTO public.games VALUES (43, 15, 52, 51);
INSERT INTO public.games VALUES (44, 14, 474, 471);
INSERT INTO public.games VALUES (45, 14, 465, 463);
INSERT INTO public.games VALUES (46, 14, 972, 971);
INSERT INTO public.games VALUES (47, 16, 204, 203);
INSERT INTO public.games VALUES (48, 16, 142, 141);
INSERT INTO public.games VALUES (49, 17, 392, 391);
INSERT INTO public.games VALUES (50, 17, 183, 182);
INSERT INTO public.games VALUES (51, 16, 211, 208);
INSERT INTO public.games VALUES (52, 16, 385, 383);
INSERT INTO public.games VALUES (53, 16, 806, 805);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Me');
INSERT INTO public.users VALUES (2, 'user_1743909373538');
INSERT INTO public.users VALUES (3, 'user_1743909373537');
INSERT INTO public.users VALUES (4, 'user_1743909481306');
INSERT INTO public.users VALUES (5, 'user_1743909481305');
INSERT INTO public.users VALUES (6, 'user_1743909532605');
INSERT INTO public.users VALUES (7, 'user_1743909532604');
INSERT INTO public.users VALUES (8, 'user_1743909610908');
INSERT INTO public.users VALUES (9, 'user_1743909610907');
INSERT INTO public.users VALUES (10, 'user_1743909900410');
INSERT INTO public.users VALUES (11, 'user_1743909900409');
INSERT INTO public.users VALUES (12, 'user_1743909984793');
INSERT INTO public.users VALUES (13, 'user_1743909984792');
INSERT INTO public.users VALUES (14, 'user_1743910036894');
INSERT INTO public.users VALUES (15, 'user_1743910036893');
INSERT INTO public.users VALUES (16, 'user_1743910098346');
INSERT INTO public.users VALUES (17, 'user_1743910098345');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

