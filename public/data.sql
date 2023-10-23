--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _dristric; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._dristric (
    dr_id smallint,
    dr_name character varying(14) DEFAULT NULL::character varying,
    dr_name_en character varying(19) DEFAULT NULL::character varying,
    pr_id smallint
);


ALTER TABLE public._dristric OWNER TO rebasedata;

--
-- Name: _province; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._province (
    pr_id smallint,
    pr_name character varying(15) DEFAULT NULL::character varying,
    pr_name_en character varying(17) DEFAULT NULL::character varying
);


ALTER TABLE public._province OWNER TO rebasedata;

--
-- Name: _village; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._village (
    vill_id integer,
    vill_name character varying(31) DEFAULT NULL::character varying,
    vill_name_en character varying(17) DEFAULT NULL::character varying,
    dr_id smallint
);


ALTER TABLE public._village OWNER TO rebasedata;

--
-- Data for Name: _dristric; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._dristric (dr_id, dr_name, dr_name_en, pr_id) FROM stdin;
101	ຈັນທະບູລີ	Chanthabuly	1
102	ສີໂຄດຕະບອງ	Sikhottabong	1
103	ໄຊເສດຖາ	Xaysetha	1
104	ສີສັດຕະນາກ	Sisattanak	1
105	ນາຊາຍທອງ	Naxaithong	1
106	ໄຊທານີ	Xaythany	1
107	ຫາດຊາຍຟອງ	Hadxaifong	1
108	ສັງທອງ	Sangthong	1
109	ປາກງື່ມ	Parkngum	1
201	ຜົ້ງສາລີ	Phongsaly	2
202	ໃຫມ່	May	2
203	ຂວາ	Khua	2
204	ສຳພັນ	Samphanh	2
205	ບູນເຫນືອ	Bounneua	2
206	ຍອດອູ	Nhot ou	2
207	ບູນໃຕ້	Boontai	2
301	ຫລວງນ້ຳທາ	Luangnamtha	3
302	ສິງ	Sing	3
303	ລອງ	Long	3
304	ວຽງພູຄາ	Viengphoukha	3
305	ນາແລ	Nalae	3
401	ໄຊ	Xay	4
402	ຫລາ	La	4
403	ນາໝໍ້ 	Namor	4
404	ງາ	Nga	4
405	ແບງ	Beng	4
406	ຮຸນ	Hoon	4
407	ປາກແບງ	Pakbeng	4
501	ຫ້ວຍຊາຍ	Houixay	5
502	ຕົ້ນເຜິ້ງ	Tongpheung	5
503	ເມິງ	Meung	5
504	ຜາອຸດົມ	Phaoudom	5
505	ປາກທາ	Paktha	5
601	ຫຼວງພະບາງ	Luangprabang	6
602	ຊຽງເງິນ	Xiengngeun	6
603	ນານ	Nan	6
604	ປາກອູ	Parkou	6
605	ນ້ຳບາກ	Nambak	6
606	ງອຍ	Ngoi	6
607	ປາກແຊງ	Pakxeng	6
608	ໂພນໄຊ	Phonxay	6
609	ຈອມເພັດ	Chomphet	6
610	ວຽງຄຳ	Viengkham	6
611	ພູຄູນ	Phoukhoune	6
612	ໂພນທອງ	Phonthong	6
701	ຊຳເໜືອ	Xamneua	7
702	ຊຽງຄໍ້	Xiengkhor	7
703	ຮ້ຽມ	Hiam	7
704	ວຽງໄຊ	Viengxay	7
705	ຫົວເມືອງ	Huameuang	7
706	ຊຳໃຕ້	Xamtay	7
707	ສົບເບົາ	Sopbao	7
708	ແອດ	Add	7
709	ກວັນ	Kuan	7
710	ຊອນ	Xone	7
801	ໄຊຍະບູລີ	Xayabury	8
802	ຄອບ	Khop	8
803	ຫົງສາ	Hongsa	8
804	ເງິນ	Ngeun	8
805	ຊຽງຮ່ອນ	Xienghone	8
806	ພຽງ	Phieng	8
807	ປາກລາຍ	Parklai	8
808	ແກ່ນທ້າວ	Kenethao	8
809	ບໍ່ແຕນ	Botene	8
810	ທົ່ງມີໄຊ	Thongmyxay	8
811	ໄຊຊະຖານ	Xaysathan	8
901	ແປກ	Pek	9
902	ຄຳ	Kham	9
903	ໜອງແຮດ	Nonghed	9
904	ຄູນ	Khoune	9
905	ໝອກ	Mork	9
906	ພູກູດ	Phookood	9
907	ຜາໄຊ	Phaxay	9
1001	ໂພນໂຮງ	Phonhong	10
1002	ທຸລະຄົມ	Thoulakhom	10
1003	ແກ້ວອຸດົມ	Keooudom	10
1004	ກາສີ	Kasy	10
1005	ວັງວຽງ	Vangvieng	10
1006	ເຟືອງ	Feuang	10
1007	ຊະນະຄາມ	Xanakham	10
1008	ແມດ	Mad	10
1009	ວຽງຄຳ	Viengkham	10
1010	ຫີນເຫີບ	Hinherb	10
1012	ໝື່ນ	Meun	10
1101	ປາກຊັນ	Pakxane	11
1102	ທ່າພະບາດ	Thaphabath	11
1103	ປາກກະດິງ	Pakkading	11
1104	ບໍລິຄັນ	Bolikhanh	11
1105	ຄຳເກີດ	Khamkheuth	11
1106	ວຽງທອງ	Viengthong	11
1107	ໄຊຈຳພອນ	Xaychamphone	11
1201	ທ່າແຂກ	Thakhek	12
1202	ມະຫາໄຊ	Mahaxay	12
1203	ໜອງບົກ	Nongbok	12
1204	ຫີນບູນ	Hinboon	12
1205	ຍົມມະລາດ	Nhommalath	12
1206	ບົວລະພາ	Bualapha	12
1207	ນາກາຍ	Nakai	12
1208	ເຊບັ້ງໄຟ	Xebangfay	12
1209	ໄຊບົວທອງ	Xaybuathong	12
\.


--
-- Data for Name: _province; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._province (pr_id, pr_name, pr_name_en) FROM stdin;
1	ນະຄອນຫລວງວຽງຈັນ	Vientiane capital
2	ຜົ້ງສາລີ	Phongsali
3	ຫລວງນ້ຳທາ	Louang Namtha
4	ອຸດົມໄຊ	Oudomxai
5	ບໍ່ແກ້ວ	Bokeo
6	ຫຼວງພະບາງ	Louang Phabang
7	ຫົວພັນ	Houaphan
8	ໄຊຍະບູລີ	Xaignabouli
9	ຊຽງຂວາງ	Xiangkhoang
10	ວຽງຈັນ	Vientiane
11	ບໍລິຄຳໄຊ	Boli khamxai
12	ຄຳມ່ວນ	Khammouan
13	ສະຫວັນນະເຂດ	Savannakhet
14	ສາລະວັນ	Salavan
15	ເຊກອງ	Xekong
16	ຈຳປາສັກ	Champasak
17	ອັດຕະປື	Attapu
18	ໄຊສົມບູນ	Sisomboun
\.


--
-- Data for Name: _village; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._village (vill_id, vill_name, vill_name_en, dr_id) FROM stdin;
10101	ໜອງປິງ	Nongping	101
10102	ບໍ່ນາງົວ	Bornangoua	101
10103	ຫ້ວຍຫົງ	Houyhong	101
10104	ໂພນສະຫວ່າງ	Phonsavang	101
10105	ໜອງທາເໜືອ	Nongthanuea	101
10106	ໜອງທາໃຕ້	Nongthatay	101
10107	ດອນແດງ	Donedeng	101
10108	ໂພນຕ້ອງສະຫວາດ	Phontongsavath	101
10109	ດົງປ່າແຫຼບ	Dongpalaep	101
10110	ໂພນຕ້ອງຈອມມະນີ	Phontongchommany	101
10111	ຮ່ອງແຊງ	Hongxeng	101
10112	ຮ່ອງໄກ່ແກ້ວ	Hongkaikeo	101
10113	ທົ່ງສ້າງນາງ	Thongsangnang	101
10114	ສະຫວ່າງ	Savang	101
10115	ຮ່ອງຄ້າ	Hongkha	101
10116	ທົ່ງຕູມ	Thongtoum	101
10117	ດົງໝ້ຽງ	Dongmieng	101
10118	ສີດຳດວນ	Sidamduan	101
10119	ສີບຸນເຮືອງ	Sibounheuang	101
10120	ຂົວຫຼວງ	Khualuang	101
10121	ສີສະຫວາດ	Sisavath	101
10122	ທົ່ງຂັນຄຳ	Thongkhankham	101
10123	ສີຫອມ	Sihome	101
10124	ອານຸ	Anou	101
10125	ສາຍລົມ	Saylom	101
10126	ຫັດສະດີເໝືອ	Hadsadineua	101
10127	ຫາຍໂສກ	Haixok	101
10128	ວັດຈັນ	Watchan	101
10129	ມີໄຊ	Meexay	101
10130	ຊຽງຍຶນ	Xiengnguen	101
10131	ດົງຊຽງດີ	Dongxiengdy	101
10132	ຕານມີໄຊ	Tanmeexay	101
10133	ສີສະເກດ	Sysaked	101
10134	ຫັດສະດີໃຕ້	Hatsadee tai	101
10135	ຈອມມະນີ	Jommani	101
10201	ນາຄຳ	Nakham	102
10202	ອຸບມຸງ	Obmoung	102
10203	ໜອງປ່າໄນ	Nongpanai	102
10204	ວັດໄຕນ້ອຍທ່າ	Wattainoytha	102
10205	ວັດໄຕນ້ອຍທົ່ງ	Wattainoythong	102
10206	ໜອງສະໂນຄຳ	Nongsanokham	102
10207	ວັດໄຕໃຫ່ຍທົ່ງ		102
10208	ວັດໄຕໃຫ່ຍທ່າ		102
10209	ອາກາດ	Akard	102
10210	ເມຶອງວາທາ	Meuangvatha	102
10211	ເມຶອງວາທົ່ງ	Meuangvathong	102
10212	ສີໄຄທ່າ	Sikhaitha	102
10213	ສີໄຄທົ່ງ	Sikhaithong	102
10214	ຍາຜະ	Yapha	102
10215	ສີບຸນເຮືອງທ່າ	Sibounheuangtha	102
10216	ສີບຸນເຮືອງທົ່ງ	Sibounheuangthong	102
10217	ສີຊົມຊື່ນ	Sisomsuen	102
10218	ໂນນສະຫວ່າງ	Nonsavang	102
10219	ເກົ້າລ້ຽວ	Kaoliew	102
10220	ດ່ານຄຳ	Dankham	102
10221	ໂນ້ນຂີ້ເຫຼັກ	Nonkhileck	102
10222	ໂນ້ນແກ້ວ	Nonkeo	102
10223	ໂພນສະຫວາດເໜືອ	Phonsavathneua	102
10224	ໂພນສົມບູນ	Phonsomboun	102
10225	ຕາດທອງ	Tadthong	102
10226	ໜອງດາ	Nongda	102
10227	ໃໝ່	May	102
10229	ອ່າງໃຫ່ຍ	Angyai	102
10230	ໂພສີ	Phosy	102
10231	ນາແຮ່	Nahae	102
10232	ວຽງສະຫວັນ	Viengsavanh	102
10233	ທົ່ງປົ່ງ	Thongpong	102
10234	ໜອງໜ້ຽວ	Nongniew	102
10235	ໜອງແຕ່ງໃຕ້	Nongthatai	102
10236	ໜອງແຕ່ງເໝຶອ	Nongthaneua	102
10237	ວຽງຄຳ	Viengkham	102
10238	ຈຳປາ	Champa	102
10239	ດົງນາໂຊກໃຕ້	Dongnaxoktai	102
10240	ດົງນາໂຊກເໝຶອ	Dongnaxokneua	102
10241	ປາກທ້າງ	Pakthang	102
10242	ດົງນາທອງ	Dongnathong	102
10243	ຫຼັກຫີນ	Luckhin	102
10244	ໜອງບຶກເໜືອ	Nongbuek	102
10245	ດົງກະເລົາ	Dongkalao	102
10246	ຊຳເກດ	Xamket	102
10247	ຂຸນຕາທົ່ງ	Khountathong	102
10248	ຂຸນຕາທ່າ	Khountatha	102
10249	ສີຖານເໜືອ	Sithanneua	102
10250	ໂພນຄຳ	Phonkham	102
10251	ໜອງດວງເໜືອ	Nongduangneua	102
10252	ໜອງດວງໃຕ້	Nongduangtai	102
10253	ໜອງດວງທົ່ງ	Nongduangthong	102
10254	ໂພນສະຫວາດໃຕ້	Phonsavathtai	102
10255	ໜອງບົວທອງໃຕ້	Nongbuathongtai	102
10256	ໜອງບົວທອງເໜຶອ	Nongbuathongneua	102
10257	ຈັນສະຫວ່າງ	Chansavang	102
10258	ດອນຊິງຊູ້	Donexingxu	102
10259	ໜອງບຶກໃຕ້	Nongbuektai	102
10260	ຫຼັກຫີນ	Lakhin	102
10261	ຫ້ວຍຫ້ອມ	Houayhom	102
10262	ນາເລົ່າ	Nalao	102
10263	ໜອງດ້ວງ	Nongduang	102
10264	ໜອງຈັນ	Nongchan	102
10265	ໜອງອໍ້	Nongeor	102
10267	ປ່ອງຄຳ	Pongkham	102
\.


--
-- PostgreSQL database dump complete
--

