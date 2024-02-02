--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2024-02-02 17:27:17

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
-- TOC entry 6 (class 2615 OID 16950)
-- Name: main_data; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA main_data;


ALTER SCHEMA main_data OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16995)
-- Name: goal; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.goal (
    id integer NOT NULL,
    id_match integer NOT NULL,
    id_player integer NOT NULL,
    goal_time text NOT NULL
);


ALTER TABLE main_data.goal OWNER TO postgres;

--
-- TOC entry 4828 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN goal.id_match; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.goal.id_match IS 'Id матча';


--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN goal.id_player; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.goal.id_player IS 'Id игрока ';


--
-- TOC entry 4830 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN goal.goal_time; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.goal.goal_time IS 'Время гола от начала матча';


--
-- TOC entry 222 (class 1259 OID 16994)
-- Name: goal_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.goal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main_data.goal_id_seq OWNER TO postgres;

--
-- TOC entry 4831 (class 0 OID 0)
-- Dependencies: 222
-- Name: goal_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.goal_id_seq OWNED BY main_data.goal.id;


--
-- TOC entry 221 (class 1259 OID 16976)
-- Name: match; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.match (
    id integer NOT NULL,
    id_team1 integer NOT NULL,
    id_team2 integer NOT NULL
);


ALTER TABLE main_data.match OWNER TO postgres;

--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN match.id_team1; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.match.id_team1 IS 'Id команды 1 в матче (в матче учавствет как правило 2 команды)';


--
-- TOC entry 4833 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN match.id_team2; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.match.id_team2 IS 'Id команды 2 в матче';


--
-- TOC entry 220 (class 1259 OID 16975)
-- Name: match_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main_data.match_id_seq OWNER TO postgres;

--
-- TOC entry 4834 (class 0 OID 0)
-- Dependencies: 220
-- Name: match_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.match_id_seq OWNED BY main_data.match.id;


--
-- TOC entry 219 (class 1259 OID 16961)
-- Name: player; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.player (
    id integer NOT NULL,
    id_team integer NOT NULL,
    full_name text NOT NULL,
    role text NOT NULL
);


ALTER TABLE main_data.player OWNER TO postgres;

--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN player.id_team; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.player.id_team IS 'Id команды в которой учавствует игрок';


--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN player.full_name; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.player.full_name IS 'ФИО игрока';


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN player.role; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.player.role IS 'Амплуа игрока на поле';


--
-- TOC entry 218 (class 1259 OID 16960)
-- Name: player_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main_data.player_id_seq OWNER TO postgres;

--
-- TOC entry 4838 (class 0 OID 0)
-- Dependencies: 218
-- Name: player_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.player_id_seq OWNED BY main_data.player.id;


--
-- TOC entry 217 (class 1259 OID 16952)
-- Name: team; Type: TABLE; Schema: main_data; Owner: postgres
--

CREATE TABLE main_data.team (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE main_data.team OWNER TO postgres;

--
-- TOC entry 4839 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN team.name; Type: COMMENT; Schema: main_data; Owner: postgres
--

COMMENT ON COLUMN main_data.team.name IS 'Название команды';


--
-- TOC entry 216 (class 1259 OID 16951)
-- Name: team_id_seq; Type: SEQUENCE; Schema: main_data; Owner: postgres
--

CREATE SEQUENCE main_data.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE main_data.team_id_seq OWNER TO postgres;

--
-- TOC entry 4840 (class 0 OID 0)
-- Dependencies: 216
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: main_data; Owner: postgres
--

ALTER SEQUENCE main_data.team_id_seq OWNED BY main_data.team.id;


--
-- TOC entry 4653 (class 2604 OID 16998)
-- Name: goal id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.goal ALTER COLUMN id SET DEFAULT nextval('main_data.goal_id_seq'::regclass);


--
-- TOC entry 4652 (class 2604 OID 16979)
-- Name: match id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.match ALTER COLUMN id SET DEFAULT nextval('main_data.match_id_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 16964)
-- Name: player id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.player ALTER COLUMN id SET DEFAULT nextval('main_data.player_id_seq'::regclass);


--
-- TOC entry 4650 (class 2604 OID 16955)
-- Name: team id; Type: DEFAULT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.team ALTER COLUMN id SET DEFAULT nextval('main_data.team_id_seq'::regclass);


--
-- TOC entry 4822 (class 0 OID 16995)
-- Dependencies: 223
-- Data for Name: goal; Type: TABLE DATA; Schema: main_data; Owner: postgres
--



--
-- TOC entry 4820 (class 0 OID 16976)
-- Dependencies: 221
-- Data for Name: match; Type: TABLE DATA; Schema: main_data; Owner: postgres
--



--
-- TOC entry 4818 (class 0 OID 16961)
-- Dependencies: 219
-- Data for Name: player; Type: TABLE DATA; Schema: main_data; Owner: postgres
--



--
-- TOC entry 4816 (class 0 OID 16952)
-- Dependencies: 217
-- Data for Name: team; Type: TABLE DATA; Schema: main_data; Owner: postgres
--



--
-- TOC entry 4841 (class 0 OID 0)
-- Dependencies: 222
-- Name: goal_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.goal_id_seq', 1, false);


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 220
-- Name: match_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.match_id_seq', 1, false);


--
-- TOC entry 4843 (class 0 OID 0)
-- Dependencies: 218
-- Name: player_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.player_id_seq', 1, false);


--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 216
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: main_data; Owner: postgres
--

SELECT pg_catalog.setval('main_data.team_id_seq', 1, false);


--
-- TOC entry 4666 (class 2606 OID 17000)
-- Name: goal goal_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.goal
    ADD CONSTRAINT goal_pkey PRIMARY KEY (id);


--
-- TOC entry 4662 (class 2606 OID 16981)
-- Name: match match_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.match
    ADD CONSTRAINT match_pkey PRIMARY KEY (id);


--
-- TOC entry 4658 (class 2606 OID 16966)
-- Name: player player_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.player
    ADD CONSTRAINT player_pkey PRIMARY KEY (id);


--
-- TOC entry 4655 (class 2606 OID 16957)
-- Name: team team_pkey; Type: CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);


--
-- TOC entry 4663 (class 1259 OID 17008)
-- Name: fki_id_match_fkey; Type: INDEX; Schema: main_data; Owner: postgres
--

CREATE INDEX fki_id_match_fkey ON main_data.goal USING btree (id_match);


--
-- TOC entry 4664 (class 1259 OID 17014)
-- Name: fki_id_player_fkey; Type: INDEX; Schema: main_data; Owner: postgres
--

CREATE INDEX fki_id_player_fkey ON main_data.goal USING btree (id_player);


--
-- TOC entry 4659 (class 1259 OID 16987)
-- Name: fki_match_id_team1_fkey; Type: INDEX; Schema: main_data; Owner: postgres
--

CREATE INDEX fki_match_id_team1_fkey ON main_data.match USING btree (id_team1);


--
-- TOC entry 4660 (class 1259 OID 16993)
-- Name: fki_match_id_team2_fkey; Type: INDEX; Schema: main_data; Owner: postgres
--

CREATE INDEX fki_match_id_team2_fkey ON main_data.match USING btree (id_team2);


--
-- TOC entry 4656 (class 1259 OID 16974)
-- Name: fki_player_id_team_fkey; Type: INDEX; Schema: main_data; Owner: postgres
--

CREATE INDEX fki_player_id_team_fkey ON main_data.player USING btree (id_team);


--
-- TOC entry 4670 (class 2606 OID 17003)
-- Name: goal id_match_fkey; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.goal
    ADD CONSTRAINT id_match_fkey FOREIGN KEY (id_match) REFERENCES main_data.match(id) NOT VALID;


--
-- TOC entry 4671 (class 2606 OID 17009)
-- Name: goal id_player_fkey; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.goal
    ADD CONSTRAINT id_player_fkey FOREIGN KEY (id_player) REFERENCES main_data.player(id) NOT VALID;


--
-- TOC entry 4668 (class 2606 OID 16982)
-- Name: match match_id_team1_fkey; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.match
    ADD CONSTRAINT match_id_team1_fkey FOREIGN KEY (id_team1) REFERENCES main_data.team(id) NOT VALID;


--
-- TOC entry 4669 (class 2606 OID 16988)
-- Name: match match_id_team2_fkey; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.match
    ADD CONSTRAINT match_id_team2_fkey FOREIGN KEY (id_team2) REFERENCES main_data.team(id) NOT VALID;


--
-- TOC entry 4667 (class 2606 OID 16969)
-- Name: player player_id_team_fkey; Type: FK CONSTRAINT; Schema: main_data; Owner: postgres
--

ALTER TABLE ONLY main_data.player
    ADD CONSTRAINT player_id_team_fkey FOREIGN KEY (id_team) REFERENCES main_data.team(id) NOT VALID;


-- Completed on 2024-02-02 17:27:17

--
-- PostgreSQL database dump complete
--

