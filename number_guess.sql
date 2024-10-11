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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number integer NOT NULL,
    attempt_times integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 18, 989, 990);
INSERT INTO public.games VALUES (2, 18, 183, 184);
INSERT INTO public.games VALUES (3, 19, 333, 334);
INSERT INTO public.games VALUES (4, 19, 688, 689);
INSERT INTO public.games VALUES (5, 18, 810, 813);
INSERT INTO public.games VALUES (6, 18, 216, 218);
INSERT INTO public.games VALUES (7, 18, 35, 36);
INSERT INTO public.games VALUES (8, 20, 820, 821);
INSERT INTO public.games VALUES (9, 20, 749, 750);
INSERT INTO public.games VALUES (10, 21, 845, 846);
INSERT INTO public.games VALUES (11, 21, 206, 207);
INSERT INTO public.games VALUES (12, 20, 94, 97);
INSERT INTO public.games VALUES (13, 20, 7, 9);
INSERT INTO public.games VALUES (14, 20, 20, 21);
INSERT INTO public.games VALUES (15, 22, 126, 127);
INSERT INTO public.games VALUES (16, 22, 533, 534);
INSERT INTO public.games VALUES (17, 23, 537, 538);
INSERT INTO public.games VALUES (18, 23, 115, 116);
INSERT INTO public.games VALUES (19, 22, 953, 956);
INSERT INTO public.games VALUES (20, 22, 637, 639);
INSERT INTO public.games VALUES (21, 22, 144, 145);
INSERT INTO public.games VALUES (22, 26, 135, 136);
INSERT INTO public.games VALUES (23, 26, 968, 969);
INSERT INTO public.games VALUES (24, 27, 46, 47);
INSERT INTO public.games VALUES (25, 27, 428, 429);
INSERT INTO public.games VALUES (26, 26, 397, 400);
INSERT INTO public.games VALUES (27, 26, 588, 590);
INSERT INTO public.games VALUES (28, 26, 588, 590);
INSERT INTO public.games VALUES (29, 26, 261, 262);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'First_test');
INSERT INTO public.users VALUES (2, 'user_1728610962164');
INSERT INTO public.users VALUES (3, 'user_1728610962163');
INSERT INTO public.users VALUES (4, 'user_1728611025094');
INSERT INTO public.users VALUES (5, 'user_1728611025093');
INSERT INTO public.users VALUES (6, 'user_1728611758073');
INSERT INTO public.users VALUES (7, 'user_1728611758072');
INSERT INTO public.users VALUES (8, 'user_1728611799668');
INSERT INTO public.users VALUES (9, 'user_1728611799667');
INSERT INTO public.users VALUES (10, 'user_1728612286839');
INSERT INTO public.users VALUES (11, 'user_1728612286838');
INSERT INTO public.users VALUES (12, 'user_1728612363059');
INSERT INTO public.users VALUES (13, 'user_1728612363058');
INSERT INTO public.users VALUES (14, 'user_1728612475988');
INSERT INTO public.users VALUES (15, 'user_1728612475987');
INSERT INTO public.users VALUES (16, 'user_1728612546887');
INSERT INTO public.users VALUES (17, 'user_1728612546886');
INSERT INTO public.users VALUES (18, 'user_1728613476368');
INSERT INTO public.users VALUES (19, 'user_1728613476367');
INSERT INTO public.users VALUES (20, 'user_1728613520281');
INSERT INTO public.users VALUES (21, 'user_1728613520280');
INSERT INTO public.users VALUES (22, 'user_1728613555680');
INSERT INTO public.users VALUES (23, 'user_1728613555679');
INSERT INTO public.users VALUES (24, 'user_1728613986710');
INSERT INTO public.users VALUES (25, 'user_1728613986709');
INSERT INTO public.users VALUES (26, 'user_1728614114096');
INSERT INTO public.users VALUES (27, 'user_1728614114095');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


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
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

