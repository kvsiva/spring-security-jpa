-- SEQUENCE: public.user_id_seq

-- DROP SEQUENCE public.user_id_seq;

CREATE SEQUENCE public.user_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

ALTER SEQUENCE public.user_id_seq
    OWNER TO postgres;

-- Table: public.user

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
    id integer NOT NULL DEFAULT nextval('user_id_seq'::regclass),
    user_name character varying(15) COLLATE pg_catalog."default" NOT NULL,
    password character varying(20) COLLATE pg_catalog."default" NOT NULL,
    active boolean NOT NULL,
    roles character varying(25) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;