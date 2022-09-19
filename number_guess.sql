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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 13, 3);
INSERT INTO public.games VALUES (2, 12, 3);
INSERT INTO public.games VALUES (3, 380, 4);
INSERT INTO public.games VALUES (4, 719, 4);
INSERT INTO public.games VALUES (5, 884, 5);
INSERT INTO public.games VALUES (6, 348, 5);
INSERT INTO public.games VALUES (7, 987, 4);
INSERT INTO public.games VALUES (8, 158, 4);
INSERT INTO public.games VALUES (9, 106, 4);
INSERT INTO public.games VALUES (10, 574, 6);
INSERT INTO public.games VALUES (11, 164, 6);
INSERT INTO public.games VALUES (12, 993, 7);
INSERT INTO public.games VALUES (13, 154, 7);
INSERT INTO public.games VALUES (14, 629, 6);
INSERT INTO public.games VALUES (15, 741, 6);
INSERT INTO public.games VALUES (16, 293, 6);
INSERT INTO public.games VALUES (17, 549, 8);
INSERT INTO public.games VALUES (18, 8, 8);
INSERT INTO public.games VALUES (19, 734, 9);
INSERT INTO public.games VALUES (20, 998, 9);
INSERT INTO public.games VALUES (21, 104, 8);
INSERT INTO public.games VALUES (22, 198, 8);
INSERT INTO public.games VALUES (23, 986, 8);
INSERT INTO public.games VALUES (24, 936, 10);
INSERT INTO public.games VALUES (25, 384, 10);
INSERT INTO public.games VALUES (26, 469, 11);
INSERT INTO public.games VALUES (27, 136, 11);
INSERT INTO public.games VALUES (28, 589, 10);
INSERT INTO public.games VALUES (29, 739, 10);
INSERT INTO public.games VALUES (30, 123, 10);
INSERT INTO public.games VALUES (31, 52, 12);
INSERT INTO public.games VALUES (32, 661, 12);
INSERT INTO public.games VALUES (33, 655, 13);
INSERT INTO public.games VALUES (34, 37, 13);
INSERT INTO public.games VALUES (35, 996, 12);
INSERT INTO public.games VALUES (36, 224, 12);
INSERT INTO public.games VALUES (37, 135, 12);
INSERT INTO public.games VALUES (38, 220, 14);
INSERT INTO public.games VALUES (39, 475, 14);
INSERT INTO public.games VALUES (40, 89, 15);
INSERT INTO public.games VALUES (41, 624, 15);
INSERT INTO public.games VALUES (42, 200, 14);
INSERT INTO public.games VALUES (43, 136, 14);
INSERT INTO public.games VALUES (44, 515, 14);
INSERT INTO public.games VALUES (45, 163, 16);
INSERT INTO public.games VALUES (46, 1001, 16);
INSERT INTO public.games VALUES (47, 786, 17);
INSERT INTO public.games VALUES (48, 174, 17);
INSERT INTO public.games VALUES (49, 637, 16);
INSERT INTO public.games VALUES (50, 164, 16);
INSERT INTO public.games VALUES (51, 426, 16);
INSERT INTO public.games VALUES (52, 9, 3);
INSERT INTO public.games VALUES (53, 20, 18);
INSERT INTO public.games VALUES (54, 948, 18);
INSERT INTO public.games VALUES (55, 975, 19);
INSERT INTO public.games VALUES (56, 785, 19);
INSERT INTO public.games VALUES (57, 571, 18);
INSERT INTO public.games VALUES (58, 618, 18);
INSERT INTO public.games VALUES (59, 59, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1663602633758');
INSERT INTO public.users VALUES (2, 'user_1663602633757');
INSERT INTO public.users VALUES (3, 'jack');
INSERT INTO public.users VALUES (4, 'user_1663605100956');
INSERT INTO public.users VALUES (5, 'user_1663605100955');
INSERT INTO public.users VALUES (6, 'user_1663605210972');
INSERT INTO public.users VALUES (7, 'user_1663605210971');
INSERT INTO public.users VALUES (8, 'user_1663605240476');
INSERT INTO public.users VALUES (9, 'user_1663605240475');
INSERT INTO public.users VALUES (10, 'user_1663605281445');
INSERT INTO public.users VALUES (11, 'user_1663605281444');
INSERT INTO public.users VALUES (12, 'user_1663605299869');
INSERT INTO public.users VALUES (13, 'user_1663605299868');
INSERT INTO public.users VALUES (14, 'user_1663605317314');
INSERT INTO public.users VALUES (15, 'user_1663605317313');
INSERT INTO public.users VALUES (16, 'user_1663605340946');
INSERT INTO public.users VALUES (17, 'user_1663605340945');
INSERT INTO public.users VALUES (18, 'user_1663605420501');
INSERT INTO public.users VALUES (19, 'user_1663605420500');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

