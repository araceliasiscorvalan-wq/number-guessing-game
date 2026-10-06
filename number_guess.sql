--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 638);
INSERT INTO public.games VALUES (2, 2, 253);
INSERT INTO public.games VALUES (3, 3, 221);
INSERT INTO public.games VALUES (4, 3, 239);
INSERT INTO public.games VALUES (5, 2, 380);
INSERT INTO public.games VALUES (6, 2, 962);
INSERT INTO public.games VALUES (7, 2, 321);
INSERT INTO public.games VALUES (8, 4, 831);
INSERT INTO public.games VALUES (9, 4, 627);
INSERT INTO public.games VALUES (10, 5, 332);
INSERT INTO public.games VALUES (11, 5, 575);
INSERT INTO public.games VALUES (12, 4, 227);
INSERT INTO public.games VALUES (13, 4, 615);
INSERT INTO public.games VALUES (14, 4, 949);
INSERT INTO public.games VALUES (15, 6, 321);
INSERT INTO public.games VALUES (16, 6, 287);
INSERT INTO public.games VALUES (17, 7, 146);
INSERT INTO public.games VALUES (18, 7, 80);
INSERT INTO public.games VALUES (19, 6, 249);
INSERT INTO public.games VALUES (20, 6, 306);
INSERT INTO public.games VALUES (21, 6, 766);
INSERT INTO public.games VALUES (22, 8, 152);
INSERT INTO public.games VALUES (23, 8, 317);
INSERT INTO public.games VALUES (24, 9, 507);
INSERT INTO public.games VALUES (25, 9, 241);
INSERT INTO public.games VALUES (26, 8, 851);
INSERT INTO public.games VALUES (27, 8, 540);
INSERT INTO public.games VALUES (28, 8, 479);
INSERT INTO public.games VALUES (29, 10, 728);
INSERT INTO public.games VALUES (30, 10, 576);
INSERT INTO public.games VALUES (31, 11, 396);
INSERT INTO public.games VALUES (32, 11, 78);
INSERT INTO public.games VALUES (33, 10, 705);
INSERT INTO public.games VALUES (34, 10, 816);
INSERT INTO public.games VALUES (35, 10, 977);
INSERT INTO public.games VALUES (36, 12, 846);
INSERT INTO public.games VALUES (37, 12, 751);
INSERT INTO public.games VALUES (38, 13, 32);
INSERT INTO public.games VALUES (39, 13, 687);
INSERT INTO public.games VALUES (40, 12, 401);
INSERT INTO public.games VALUES (41, 12, 514);
INSERT INTO public.games VALUES (42, 12, 47);
INSERT INTO public.games VALUES (43, 14, 48);
INSERT INTO public.games VALUES (44, 14, 860);
INSERT INTO public.games VALUES (45, 15, 102);
INSERT INTO public.games VALUES (46, 15, 377);
INSERT INTO public.games VALUES (47, 14, 516);
INSERT INTO public.games VALUES (48, 14, 836);
INSERT INTO public.games VALUES (49, 14, 420);
INSERT INTO public.games VALUES (50, 17, 605);
INSERT INTO public.games VALUES (51, 17, 519);
INSERT INTO public.games VALUES (52, 18, 444);
INSERT INTO public.games VALUES (53, 18, 961);
INSERT INTO public.games VALUES (54, 17, 656);
INSERT INTO public.games VALUES (55, 17, 685);
INSERT INTO public.games VALUES (56, 17, 250);
INSERT INTO public.games VALUES (57, 19, 408);
INSERT INTO public.games VALUES (58, 19, 320);
INSERT INTO public.games VALUES (59, 20, 866);
INSERT INTO public.games VALUES (60, 20, 4);
INSERT INTO public.games VALUES (61, 19, 424);
INSERT INTO public.games VALUES (62, 19, 368);
INSERT INTO public.games VALUES (63, 19, 62);
INSERT INTO public.games VALUES (64, 21, 757);
INSERT INTO public.games VALUES (65, 22, 734);
INSERT INTO public.games VALUES (66, 21, 284);
INSERT INTO public.games VALUES (67, 21, 517);
INSERT INTO public.games VALUES (68, 21, 534);
INSERT INTO public.games VALUES (69, 23, 548);
INSERT INTO public.games VALUES (70, 24, 861);
INSERT INTO public.games VALUES (71, 23, 165);
INSERT INTO public.games VALUES (72, 23, 455);
INSERT INTO public.games VALUES (73, 23, 829);
INSERT INTO public.games VALUES (74, 25, 854);
INSERT INTO public.games VALUES (75, 26, 41);
INSERT INTO public.games VALUES (76, 25, 170);
INSERT INTO public.games VALUES (77, 25, 249);
INSERT INTO public.games VALUES (78, 25, 148);
INSERT INTO public.games VALUES (79, 27, 92);
INSERT INTO public.games VALUES (80, 28, 170);
INSERT INTO public.games VALUES (81, 27, 761);
INSERT INTO public.games VALUES (82, 27, 330);
INSERT INTO public.games VALUES (83, 27, 597);
INSERT INTO public.games VALUES (84, 29, 900);
INSERT INTO public.games VALUES (85, 30, 121);
INSERT INTO public.games VALUES (86, 29, 832);
INSERT INTO public.games VALUES (87, 29, 316);
INSERT INTO public.games VALUES (88, 29, 794);
INSERT INTO public.games VALUES (89, 31, 483);
INSERT INTO public.games VALUES (90, 32, 90);
INSERT INTO public.games VALUES (91, 31, 411);
INSERT INTO public.games VALUES (92, 31, 507);
INSERT INTO public.games VALUES (93, 31, 284);
INSERT INTO public.games VALUES (94, 33, 974);
INSERT INTO public.games VALUES (95, 33, 502);
INSERT INTO public.games VALUES (96, 34, 438);
INSERT INTO public.games VALUES (97, 34, 58);
INSERT INTO public.games VALUES (98, 33, 172);
INSERT INTO public.games VALUES (99, 33, 4);
INSERT INTO public.games VALUES (100, 33, 170);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'ari');
INSERT INTO public.users VALUES (2, 'user_1791244179207');
INSERT INTO public.users VALUES (3, 'user_1791244179206');
INSERT INTO public.users VALUES (4, 'user_1791244252995');
INSERT INTO public.users VALUES (5, 'user_1791244252994');
INSERT INTO public.users VALUES (6, 'user_1791244279244');
INSERT INTO public.users VALUES (7, 'user_1791244279243');
INSERT INTO public.users VALUES (8, 'user_1791244382811');
INSERT INTO public.users VALUES (9, 'user_1791244382810');
INSERT INTO public.users VALUES (10, 'user_1791244613987');
INSERT INTO public.users VALUES (11, 'user_1791244613986');
INSERT INTO public.users VALUES (12, 'user_1791244665513');
INSERT INTO public.users VALUES (13, 'user_1791244665512');
INSERT INTO public.users VALUES (14, 'user_1791244676653');
INSERT INTO public.users VALUES (15, 'user_1791244676652');
INSERT INTO public.users VALUES (16, 'prueba12345');
INSERT INTO public.users VALUES (17, 'user_1791244729507');
INSERT INTO public.users VALUES (18, 'user_1791244729506');
INSERT INTO public.users VALUES (19, 'user_1791244975232');
INSERT INTO public.users VALUES (20, 'user_1791244975231');
INSERT INTO public.users VALUES (21, 'user_1791245562708');
INSERT INTO public.users VALUES (22, 'user_1791245562707');
INSERT INTO public.users VALUES (23, 'user_1791245577181');
INSERT INTO public.users VALUES (24, 'user_1791245577180');
INSERT INTO public.users VALUES (25, 'user_1791245628079');
INSERT INTO public.users VALUES (26, 'user_1791245628078');
INSERT INTO public.users VALUES (27, 'user_1791245636190');
INSERT INTO public.users VALUES (28, 'user_1791245636189');
INSERT INTO public.users VALUES (29, 'user_1791245649738');
INSERT INTO public.users VALUES (30, 'user_1791245649737');
INSERT INTO public.users VALUES (31, 'user_1791246333484');
INSERT INTO public.users VALUES (32, 'user_1791246333483');
INSERT INTO public.users VALUES (33, 'user_1791246601495');
INSERT INTO public.users VALUES (34, 'user_1791246601494');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 34, true);


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

