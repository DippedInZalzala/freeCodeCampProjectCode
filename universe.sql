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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_type character varying(40) NOT NULL,
    distance_from_earth integer NOT NULL
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
    name character varying(20),
    description text,
    distance_from_earth numeric(11,4) NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    planet_types character varying(40) NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(40),
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(11,1) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 2);
INSERT INTO public.constellation VALUES (2, 'Virgo', 4);
INSERT INTO public.constellation VALUES (3, 'Pisces', 7);
INSERT INTO public.constellation VALUES (4, 'cancer', 3);
INSERT INTO public.constellation VALUES (5, 'Capricorn', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 'Our home galaxy, a barred spiral galaxy containing billions of stars, including our Sun', 'Spiral galaxy', 0);
INSERT INTO public.galaxy VALUES (2, 'M31', 'The closest spiral galaxy to the Milky Way, larger and more massive than our galaxy.', 'Spiral galaxy', 320);
INSERT INTO public.galaxy VALUES (3, 'M51', 'A captivating interacting galaxy pair, showcasing beautiful spiral arms and a smaller companion galaxy.', 'Spiral galaxy', 20);
INSERT INTO public.galaxy VALUES (4, 'M87', 'A massive elliptical galaxy with an active galactic nucleus and a powerful jet of particles.', 'Elliptical galaxy', 50);
INSERT INTO public.galaxy VALUES (5, 'M84', 'An elliptical galaxy located in the Virgo Cluster, exhibiting a bright central region.', 'Elliptical galaxy', 50);
INSERT INTO public.galaxy VALUES (6, 'LMC', 'A satellite galaxy of the Milky Way, appearing as a bright irregular patch in the Southern Hemisphere.', 'Irregular galaxy', 16000);
INSERT INTO public.galaxy VALUES (7, 'NGC 4449', 'A dwarf irregular galaxy with intense star formation, featuring numerous clusters and nebulae.', 'Irregular galaxy', 12);
INSERT INTO public.galaxy VALUES (8, 'M64', 'Also known as the Evil Eye Galaxy, it exhibits a unique dark band resembling a black eye.', 'Spiral galaxy', 15);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Its the moon', 0.3800, 12);
INSERT INTO public.moon VALUES (2, 'Titan', 'Titan is the largest moon of Saturn and the second-largest moon in the solar system', 120.0000, 2);
INSERT INTO public.moon VALUES (3, 'Enceladus', 'Enceladus is a small, icy moon of Saturn.', 160.0000, 2);
INSERT INTO public.moon VALUES (4, 'Rhea', 'Rhea is the second-largest moon of Saturn and is primarily composed of water ice.', 160.0000, 2);
INSERT INTO public.moon VALUES (5, 'Dione', 'Dione is another moon of Saturn with a predominantly icy composition.', 160.0000, 2);
INSERT INTO public.moon VALUES (6, 'Io', 'Io is the innermost of Jupiter four large Galilean moons.', 628.0000, 1);
INSERT INTO public.moon VALUES (7, 'Europa', 'Europa is slightly smaller than Earths moon and is known for its icy surface', 628.0000, 1);
INSERT INTO public.moon VALUES (8, 'Ganymede', 'Ganymede is the largest moon in the solar system, even bigger than the planet Mercury.', 628.0000, 1);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Callisto is the second-largest moon of Jupiter and the third-largest moon in the solar system.', 628.0000, 1);
INSERT INTO public.moon VALUES (10, 'Amalthea', 'Amalthea is one of Jupiters smaller moons and is irregularly shaped. It is believed to be a captured asteroid or a fragment of a larger moon', 628.0000, 1);
INSERT INTO public.moon VALUES (11, 'Triton', 'riton is the largest moon of Neptune and the seventh-largest moon in the solar system.', 4300.0000, 15);
INSERT INTO public.moon VALUES (12, 'Proteus', 'Proteus is the second-largest moon of Neptune and one of the largest irregularly shaped moons in the solar system.', 4300.0000, 15);
INSERT INTO public.moon VALUES (13, 'Nereid', 'Nereid is the third-largest moon of Neptune and has an eccentric, elongated orbit', 4300.0000, 15);
INSERT INTO public.moon VALUES (14, 'Larissa', 'Larissa is a small moon of Neptune with a mostly smooth surface, interrupted by some impact craters.', 4300.0000, 15);
INSERT INTO public.moon VALUES (15, 'Naiad', 'Naiad is one of the innermost moons of Neptune and has the closest orbit to the planet.', 4300.0000, 15);
INSERT INTO public.moon VALUES (16, 'Titania', 'Largest moon of uranus', 2900.0000, 16);
INSERT INTO public.moon VALUES (17, 'Oberon', 'It has a heavily cratered surface with several prominent impact basins. Oberons terrain includes valleys, ridges, and chasms.', 2900.0000, 16);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'It is notable for its dark, regolith-covered terrain.', 2900.0000, 16);
INSERT INTO public.moon VALUES (19, 'Ariel', 'It exhibits extensive faulting and grooves, suggesting past tectonic activity. Ariel also has several large impact craters.', 2900.0000, 16);
INSERT INTO public.moon VALUES (20, 'Miranda', 'It has a jumbled terrain with cliffs, ridges, and canyons, believed to have been shaped by past geologic activity. ', 2900.0000, 16);
INSERT INTO public.moon VALUES (21, 'SatelliteEarth', 'Satelites around earth', 0.2400, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 'Biggest planet in solar system ', 'planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', 'The planet with beautiful rings', 'planet', true, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', 'The red planet and the first and closest to the sun', 'planet', true, 1);
INSERT INTO public.planet VALUES (4, 'Proxima Centauri b', 'is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri', 'exoplanet', true, 2);
INSERT INTO public.planet VALUES (5, 'Proxima Centauri d', 'Together with two other planets in the Proxima Centauri system', 'exoplanet', true, 2);
INSERT INTO public.planet VALUES (6, 'Almach2A', 'Gas giant really. Not real info', 'Gas giant', false, 4);
INSERT INTO public.planet VALUES (7, 'Almach2z', 'Not in existence.', 'Terrestrial', true, 4);
INSERT INTO public.planet VALUES (8, 'M51-ULS-1b', 'Just recently discovered', 'Exoplanet', true, 6);
INSERT INTO public.planet VALUES (9, 'HD 102272 b', 'HD 102272 b is a gas giant exoplanet discovered around the red giant star HD 102272, also known as S Rho Coronae Borealis', 'Gas giant', false, 10);
INSERT INTO public.planet VALUES (10, 'Kepler-91 b', 'Kepler-91 b is a gas giant exoplanet discovered around the red giant star Kepler-91.', 'Gas giant', false, 10);
INSERT INTO public.planet VALUES (11, 'HD 109833 b', 'This planet is Neptune-like', 'Exoplanet', true, 9);
INSERT INTO public.planet VALUES (12, 'Earth', 'Planet with confirmed life', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (13, 'TRAPPIST-1', 'Planet with possible life', 'Terrestrial', true, 2);
INSERT INTO public.planet VALUES (14, 'WASP-121 b', 'Planet with possible life', 'Exoplanet', true, 3);
INSERT INTO public.planet VALUES (15, 'Neptune', 'Planet in our solar system', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (16, 'Uranus', 'Planet in our solar system', 'Terrestrial', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Star of the our solar system', true, 460, 0.2, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Proxima Centauri is a small, low-mass red dwarf star located in the Alpha Centauri system, which is the closest star system to our solar system.', true, 4850, 4.2, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Betelgeuse is a massive red supergiant star located in the constellation Orion. It is one of the largest and most luminous stars visible to the naked eye.', false, 10, 642.5, 1);
INSERT INTO public.star VALUES (4, 'Almach', 'Almach is a multiple star system in the constellation Andromeda, consisting of at least four stars.', true, 400, 350.0, 2);
INSERT INTO public.star VALUES (5, 'Mirach', 'Mirach is a red giant star located in the constellation Andromeda.', false, 300, 200.0, 2);
INSERT INTO public.star VALUES (6, 'Ankou', 'Mu Andromedae is a binary star system in the constellation Andromeda.', true, 400, 142.0, 2);
INSERT INTO public.star VALUES (7, 'NGC 5194-1', 'NGC 5194-1 is a star cluster located within the Whirlpool Galaxy (M51)', false, 420, 23.0, 3);
INSERT INTO public.star VALUES (8, 'NGC 5195-2', 'NGC 5195-2 is another star cluster associated with the Whirlpool Galaxy', false, 10, 23.0, 3);
INSERT INTO public.star VALUES (9, 'M87-VR7', 'M87-VR7 is a variable star located in the M87 galaxy. Variable stars are stars that exhibit variations in their brightness over time due to intrinsic factors, such as pulsations or eclipses.', true, 500, 53.5, 4);
INSERT INTO public.star VALUES (10, 'Red Giant', 'Red giants are evolved stars that have exhausted their core hydrogen fuel.', true, 1000, 60.0, 5);
INSERT INTO public.star VALUES (11, 'R136a1', 'R136a1 is a massive blue star located in the Tarantula Nebula, a prominent star-forming region within the LMC.', true, 2, 160000.0, 6);
INSERT INTO public.star VALUES (12, 'S Doradus', 'BVs are massive and unstable stars that exhibit irregular and dramatic changes in brightness and spectral characteristics.', true, 5, 160000.0, 6);
INSERT INTO public.star VALUES (13, 'NGC 4449-V1', 'NGC 4449-V1 is a supergiant star located within the NGC 4449 galaxy.', true, 300, 12.4, 7);
INSERT INTO public.star VALUES (14, 'NGC 4449-C1', 'NGC 4449-C1 is a star within the NGC 4449 galaxy and belongs to the class of blue compact dwarfs.', true, 500, 12.9, 7);
INSERT INTO public.star VALUES (15, 'M64-V2', 'M64-V2 is a blue giant star found in the M64 galaxy. Blue giant stars are hot, massive stars that are brighter and bluer than the majority of stars in the galaxy', true, 200, 17.0, 8);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

