-- Table: public.ifa_user

-- DROP TABLE public.ifa_user;

CREATE TABLE public.ifa_user
(
  id integer,
  name character varying(60),
  nickname character varying(100)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.ifa_user
  OWNER TO ifaadmin;

