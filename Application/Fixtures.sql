

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('ecbf4eaa-a336-4376-aaea-2abc82d25a22', 'testtitle', 'testbody', '2021-04-05 13:26:50.537071-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('70eedd08-a0aa-47ee-9301-178d0d0539e9', 'another test', 'something witty', '2021-04-05 13:32:34.934294-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('d9ae7083-44c1-480b-82dc-4796a2aa89df', 'ecbf4eaa-a336-4376-aaea-2abc82d25a22', 'testAuthor', 'testBody', '2021-04-05 13:30:04.305008-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('2b378782-4596-4895-8b32-f3c060ea601e', 'ecbf4eaa-a336-4376-aaea-2abc82d25a22', 'AAA', 'aaa', '2021-04-05 13:31:11.773153-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('a6c51d14-16f4-4b35-8284-2d3f1636485c', 'ecbf4eaa-a336-4376-aaea-2abc82d25a22', 'BBB', 'bbb', '2021-04-05 13:31:18.38195-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('8ac9184d-195b-48d3-aa5d-a83de7a98310', '70eedd08-a0aa-47ee-9301-178d0d0539e9', 'John ', 'biscuits fro breakfast', '2021-04-05 13:32:51.66086-07');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


