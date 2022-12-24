create table users (
	user_uid UUID NOT NULL PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(100),
	password VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	date_of_birth DATE NOT NULL,
	UNIQUE(user_uid,email)
);
insert into users (user_uid, username, email, password, age, date_of_birth) values ('a9f0798a-9123-4e3e-930b-cac4952ca0b2', 'cskarr0', 'tmccrystal0@nasa.gov', '19AmZj8vYyG', 93, '1988-08-06 15:56:15');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('a356b9f1-6564-480c-8f2f-ca007d981100', 'asprulls1', 'gnaile1@umich.edu', 'w1Cd9GuPqf', 61, '1969-08-06 01:21:05');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('407cf030-11e4-4988-a7b5-fd20dc0e851a', 'eathow2', 'wglassborow2@arstechnica.com', 'btFm42ctH', 68, '1952-11-08 16:47:14');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('8f47d85c-c149-4e78-a2ef-d60996124c8c', 'rtrafford3', null, 'HL7OaNwu', 42, '2018-05-12 13:49:36');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('949e8baf-438b-4b7a-a6c2-60a04a758c2e', 'mmcreidy4', 'mcapron4@deliciousdays.com', 'BhnR3f2', 20, '1975-01-07 04:17:52');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('9751e59f-f427-4deb-98dd-81013023cd39', 'vnuemann5', 'tchoppen5@amazon.co.jp', 'BSfBKWYS', 29, '2015-09-07 01:40:29');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('819d337c-0958-4620-8334-52fca2d6cf75', 'balfonsetto6', null, '6FWfBNlyw', 79, '1957-01-31 18:18:24');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('4dd38cd6-9033-4d8c-9c93-adf2747dbea7', 'sgland7', null, 'qT3ireobX', 53, '2012-09-24 17:39:51');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('de90599e-46e2-4929-9a1a-6efab2a79ad7', 'njohannesson8', 'mkivlehan8@1688.com', 'yNqT7DVvj9', 17, '1981-10-09 17:10:53');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f250eea1-4345-4d65-8f17-ce1e631a461a', 'eberrane9', null, 'lOuhuQMcPH', 66, '1996-12-26 16:56:37');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('96326689-5d6f-4557-9ea5-46c5e7eed08f', 'fellarda', 'bguysa@usgs.gov', 'HlIP0kExh', 98, '1984-12-02 09:13:00');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('02215a03-2424-40bc-865a-2cdf52c4f57c', 'hondrichb', null, 'FquVfnzzI3SN', 74, '1969-11-01 23:19:57');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('4480d524-e3cb-4e99-9422-46ee8615111f', 'bwhitmellc', null, 'RIbiyJmvR', 91, '1988-05-15 19:42:54');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('56602a8d-1609-436c-98ab-4d34a72dc3d7', 'dcripind', 'iwettond@businesswire.com', 'SGN05o', 30, '1966-08-22 00:50:11');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('d5c69c44-95af-49a8-9b79-c4b043759384', 'lrevingtone', 'fwoodwarde@moonfruit.com', 'Mn9HsIK9dj', 89, '2011-10-19 19:44:30');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('0c6c5329-88ef-4927-8585-523a9a8c8c88', 'measthopef', 'lsammonf@berkeley.edu', 'VfPcD3', 67, '1961-03-22 19:17:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('65f65671-c8ff-4755-a301-82e483b13516', 'mdykesg', 'abeckeng@go.com', 'IBEhcGTy8ni', 76, '1973-09-13 11:43:31');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f7fd2bc6-2665-4972-ad26-8bf93fad0075', 'tgoulbournh', 'fdelgadilloh@jigsy.com', 'PO1Kxur', 16, '2020-10-06 18:43:54');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('ccd15652-3f0e-450b-96bb-67519890f1e6', 'kwhittucki', 'emacneili@phoca.cz', 'MgbrhrvEfo', 78, '1995-10-29 07:14:34');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('978748a0-8512-4e4c-b463-7ea7e8c56b5e', 'pshwalbej', 'dtrenamanj@google.co.jp', 'VhmL671Sp5', 41, '2014-01-04 09:51:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('06557081-9450-4166-99e6-c90c340c3e2f', 'mgarcik', null, 'iFk86lOLXHza', 77, '2014-08-17 10:39:02');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('1fbd7058-85d1-4b34-bff6-f359b13e0f3b', 'tyoseloffl', 'aattardl@google.com', 'qYXG2Hg1', 86, '2011-10-15 12:56:23');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('4389be07-b857-4a76-bc7f-09783f622f1b', 'msalamonm', null, 'McFQ3NVGE', 93, '1993-07-01 20:11:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('2722cbcb-ae38-416f-88ba-b1efed070409', 'grochesn', 'jmackimmien@taobao.com', 'seFTuJE', 41, '1962-10-12 07:47:55');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('6e116e45-62ea-462f-82d0-867664dad700', 'cbrislano', 'cpervoeo@baidu.com', 'zXUGRCn9', 84, '1964-09-01 02:04:14');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f0c094b8-a4a0-4d63-8aed-1f21e2d3bd5c', 'msyplusp', 'ldaybornep@gizmodo.com', 'KOaMi5', 63, '1995-10-09 07:16:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f64286fc-054e-4fb0-968a-42642864c082', 'plequesneq', 'kbowq@yale.edu', 'KzymocchrMHm', 35, '1994-05-08 02:05:32');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('8381221c-8e4f-4786-ad83-be8ca65b3785', 'dbrutonr', 'eaingelr@google.com', 'Ms4VUjbCG', 38, '2016-05-22 23:51:51');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('cb244e44-8eae-42ee-b4c2-61d32fb5b45b', 'bdallings', null, 'CnuNeU', 18, '1981-06-25 22:47:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('24f94206-0d3d-4776-9480-a77bc10b856e', 'woldnallt', null, 'Jku5MpOFa', 100, '2009-02-28 02:09:43');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f96ed68a-66eb-44a0-a8f3-a958565286c8', 'awalshu', 'aweatherburnu@sitemeter.com', 'JPf9QVqEgU', 61, '1986-05-28 13:59:05');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('55e911f7-9ab1-44b5-b0b3-8769760c7e01', 'erouchyv', null, 'I9Szk5wF', 24, '1958-09-20 21:41:40');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('003b5619-98e4-4c96-8fa2-8f64914bd4e6', 'lmellonw', 'cbefroyw@who.int', 'tHubAC', 41, '2021-01-20 07:17:02');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('ec07b27f-3221-4adf-835c-27f6cdae9e6f', 'wroubyx', null, 'KzXkecH', 21, '1954-06-01 03:07:28');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('a2fbc812-f868-40b4-ad9e-02a554ca9eac', 'dmacrinny', 'cshoveliny@fotki.com', '3nQqoJTRqMMC', 98, '1996-12-11 01:59:22');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('31b954f7-4d2a-4c5c-af57-e597ed4791ab', 'gmarriotz', 'mmechemz@google.com.br', 'qAirdd4BM', 72, '1992-01-05 01:35:27');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('44b968ee-6cf5-4930-b1e8-da4faa10d1dc', 'bryall10', 'maylward10@ucoz.ru', 'BWRskur', 19, '2003-07-21 22:12:48');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('33c78fe8-ab72-4ce0-9053-494ea8d6e361', 'crobbe11', 'scaudray11@yellowpages.com', 'X4jd7nZ', 32, '1978-01-08 11:10:56');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('9e6b073f-87c7-4e34-9899-1cdc11ea611b', 'edeerr12', 'ilidgard12@archive.org', 'VRVqAv4Z', 27, '2000-10-25 08:00:47');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('d24d7599-0b5b-4845-b93a-bcabc77103ae', 'gcaustick13', 'gchansonne13@qq.com', 'Q61Dzc', 67, '1977-05-23 21:07:05');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('8c0b1085-ecd8-4fdd-8dc1-1b814397608c', 'ksimmell14', 'rdive14@google.pl', 'FJe6mKMy63', 72, '1956-10-21 07:05:51');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('b036504a-ef34-44ae-bdd8-0058a1ccf9da', 'cdaniell15', 'mbengtsson15@blogtalkradio.com', 'eZ56ghSYN', 88, '1961-09-10 21:43:06');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('36153a0a-5460-4407-8265-bdab82804882', 'cjerrams16', 'ralster16@hatena.ne.jp', 'MDitHcPciac', 22, '1972-12-18 14:41:06');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('7ee9eccd-718f-4550-9f49-0e695b9107eb', 'criolfi17', 'askace17@ft.com', 'zwxpTxfH4qd8', 91, '2013-01-09 09:38:40');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('624b5cbb-bcc5-421d-b768-870e8db0d855', 'gmccurlye18', 'iwhittam18@ihg.com', 'hxmPzIw6', 16, '2002-10-31 14:48:11');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('56ffd51b-6df9-4636-a703-bc1b440e1da5', 'edubique19', null, 'xShX45QMxL', 26, '2003-09-17 21:37:53');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('62fd6f16-2b87-41f4-8c96-3dc3a55a0b07', 'wbasil1a', 'kchiese1a@twitter.com', 'HEgCpoWNEvL', 50, '1988-02-03 20:21:35');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('2c5cc7fc-dca7-4002-b237-e72f856811a8', 'zkruse1b', null, 'DZZkuxaC', 85, '1977-05-18 19:41:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('14f640a6-2e16-4083-9d35-6832aaff1a66', 'kedison1c', null, 'EtQmLzFMNbYP', 30, '1971-11-01 20:35:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('19792ebc-0965-4f69-a982-afb984ca9ec6', 'gcarradice1d', null, 'Z8QA3xOU', 36, '1980-12-20 11:47:53');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('7df33fa0-feed-43c5-a5e1-3f8316e3fdba', 'rlummis1e', null, '8P34jT4Lom', 45, '1979-09-16 13:29:44');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('4bb09c32-0fb4-4ca8-ab82-14eff167ff4c', 'jleabeater1f', 'rharesnaip1f@google.ca', 'kvSZgP', 71, '1955-07-02 04:35:57');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('11df4078-86d8-4a3b-befd-c20cc48df96f', 'cforri1g', null, 'yu5Lr0', 85, '1954-06-05 06:33:24');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('0528483f-8ca0-4bfe-aa4b-b2257470546b', 'mcarnegy1h', null, 'nfnGE75', 27, '1959-08-29 03:47:18');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('0eda62c6-6852-440f-9bd0-39286be3cf95', 'kdrain1i', 'kpetroselli1i@blogspot.com', 'AeUqVAL', 39, '1979-12-18 05:35:38');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('e9d7f33c-2c19-460e-8aeb-51dd42cf3c25', 'gdickons1j', 'mrozier1j@prlog.org', 'BGGwdqXOzam', 17, '1990-06-10 14:16:01');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('63c8aa4e-7387-42ad-8291-01f13fb74cd8', 'gkingsley1k', null, '72trd3f2pY', 99, '2004-07-02 09:48:37');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('333d26cd-052c-47d8-888b-02afaee8165f', 'jcottesford1l', 'ndemchen1l@friendfeed.com', 'RhHsgz', 17, '1972-05-11 09:18:59');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('0a8623d9-5f43-4113-9122-571942d765a6', 'fcaveney1m', 'tbiaggiotti1m@dedecms.com', 'WN7AmQpd7', 78, '2006-11-24 19:26:41');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('578ee44b-6310-49bc-a497-c90d8f419a75', 'nrupert1n', null, 'P6Ui0f5Ah', 35, '1973-06-12 23:30:33');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('85642fec-dbfe-4521-8360-acb491d25cd9', 'gvanbrugh1o', 'ayosevitz1o@mapy.cz', 'ZhxH2YKB3Ga', 15, '2016-11-11 02:21:33');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('5e42ce07-53eb-474c-8f8e-6a6d4624502d', 'epasfield1p', 'rbeadle1p@arstechnica.com', '1RKefeUNpLa', 14, '2007-05-30 02:17:13');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('1d3f3087-8fec-442e-a037-78b2f2810f63', 'cspincks1q', 'lnunns1q@hp.com', 'tz6ZsHKqC', 31, '1973-05-10 08:05:25');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('28911a58-8561-4a69-97f5-2da900594816', 'bdolan1r', null, '98jQSt', 44, '1970-08-19 05:39:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('2c064bcb-f674-4570-8a35-231cfac3236e', 'mderobertis1s', null, 'HHyD5A', 81, '1967-04-11 08:18:42');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('980b3ebf-aa3a-417f-b0bc-c6149d7ba74b', 'abiaggioli1t', 'ddewhurst1t@cam.ac.uk', 'gzXHEUUnD3', 55, '2021-11-23 20:35:07');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('c74fcdfb-696a-4c54-a0f4-8a7a2a58d55d', 'jsamways1u', null, 'TluIItB2rtg', 85, '1971-09-05 13:18:30');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('a83f26cb-7698-4fe2-952c-89d0c33b6319', 'ahagan1v', null, 'Wb50lH', 86, '1972-09-19 00:29:56');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f6bedef1-df31-4960-ace8-296ce99a6f57', 'dfrancom1w', null, 'K3a4y6CmX74C', 47, '2016-01-09 13:59:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('4a67cc7d-1731-4465-9786-d66725006171', 'twiggington1x', 'rphizackarley1x@washington.edu', 'Lu1L6usa', 35, '1977-01-29 02:54:34');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('87d810e6-af5a-4bf5-af35-0414dd0c702f', 'btinson1y', 'sglinde1y@ucla.edu', 'PL5nVbK8IZW', 48, '1959-03-08 01:10:53');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('5b2b692b-e334-4d8a-9fd1-c836ecedf93b', 'odashkov1z', 'wortner1z@globo.com', '5lzDXgTL6H', 63, '1975-05-30 23:31:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('56648c23-46af-4a26-99cc-cd8459e93682', 'bweedall20', null, 'yV9gaPTW', 79, '2003-05-07 02:23:34');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('41a2fb3e-9d20-4cc5-afe1-b4a70b6c7337', 'clyston21', 'gserot21@vk.com', 'Nv8rqwHWYCv1', 56, '1978-10-13 04:57:27');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('3477a70f-a386-4b53-b1d7-effc5b0b0822', 'ecrate22', 'cbouzek22@google.com', 'E49AAxY1', 66, '1969-11-15 17:29:00');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('8db596ed-e34a-4a22-9e33-a4a64781eb75', 'lvanleeuwen23', 'pcroote23@marriott.com', 'OGH1tR3v', 88, '1999-07-19 13:08:39');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('3f0b106c-7c7e-4503-a0aa-49d3b09154f4', 'bcolisbe24', 'fwyllis24@msn.com', 'nZo6QLg3nQ', 87, '1996-01-30 12:00:36');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('19b556f8-e4e6-41e9-aa97-d9fb171c2739', 'sshepstone25', 'gberkery25@youtube.com', 'lM4xf46F5Be2', 64, '1974-12-30 09:09:52');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('d82f7859-21d7-4bc3-972e-17cbcbfa14e5', 'blabel26', 'bpaulillo26@imageshack.us', 'VsclNvwra', 92, '1977-08-12 04:28:10');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('11089aa1-89e0-4fc6-bd71-6445cf712a0c', 'tburree27', 'jpostians27@homestead.com', 'Mhw1njp', 28, '1974-12-11 13:09:03');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('2c0540d2-575a-41bf-b2cb-d11f3918f3ca', 'ejachimiak28', 'fhargerie28@narod.ru', 'dNVk9a', 43, '1998-10-27 14:54:40');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('1437ab6b-f50c-4b26-8898-3cc832e05ed1', 'jpilkington29', 'mpiatkowski29@wiley.com', 'Uhx08zNh2P0B', 26, '1989-02-12 21:31:45');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('415001c0-3780-4580-8455-0f419bd6fa1b', 'mglennard2a', null, 'zO130Qng9', 89, '1958-03-28 10:18:51');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('ba229179-245c-4f58-b23f-b9427692984a', 'aredsall2b', null, 'z3isma63aa', 87, '2020-06-25 09:39:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('e55bf1a9-9dd4-4a85-aee5-c11b30e00d14', 'nhuban2c', 'sellicock2c@yellowbook.com', '1ZrK58uoHFvw', 40, '2015-02-17 04:43:09');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('56eab709-b607-4d8b-9a3a-c19a05bdb16a', 'escourge2d', 'apollastrone2d@eventbrite.com', 'OMt2o8oqhz', 77, '1979-09-28 17:58:27');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('28d8a063-fdf9-43d4-99e0-7a192d05a018', 'fguidelli2e', null, 'JiGNnDi', 58, '1955-04-30 12:48:18');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('26466e43-780c-4664-a830-57e3643ab97e', 'hbavridge2f', 'hassaf2f@last.fm', 'ihIDpBej6', 30, '1979-09-19 02:35:25');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('3d049f28-f80f-46d0-8abc-862968bd5bdc', 'lmougeot2g', null, 'ZILlzwq', 24, '1975-05-09 22:43:57');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('80d05993-11a5-4595-b349-05b58722430d', 'gzealey2h', null, 'emQNdeSihB', 96, '2003-07-19 22:40:27');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('96fe99ef-a3c6-43b3-be2a-5efe0f8ed40e', 'myggo2i', null, 'IHEW8Yy8', 97, '2011-11-08 03:01:24');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('b0d70f16-d3dc-4da8-9634-c5c2b7725679', 'cpoate2j', 'eogelsby2j@php.net', 'tRMeCCssoqe', 88, '2016-05-16 12:04:47');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('ecf662b0-1683-4831-9990-80718a5d92ed', 'imalicki2k', null, '3HkRwj67N', 91, '1959-05-26 07:24:11');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('f0aa7f3b-e747-4ce9-9704-3b2af93c1542', 'mraitt2l', 'msimka2l@cornell.edu', 'aTN4mzJYoBv', 25, '1996-09-09 18:20:36');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('c234e868-e5bb-43a4-87a2-f655d1e0f724', 'lfrith2m', 'vdurtnell2m@bing.com', '2WlEL4d', 59, '1961-10-19 15:05:50');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('33cc1f9e-520f-40f9-9c7d-e1b3c7bf72d1', 'thallwood2n', 'egrumell2n@symantec.com', 'Mwd5lo9kDAqD', 17, '1984-05-10 16:47:58');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('776ab2e3-3f96-4638-b13a-92442c7662c1', 'ajeannequin2o', 'ggillogley2o@technorati.com', 'qMmoZS45', 37, '1967-03-19 06:33:14');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('6ba7b57f-834f-4cef-9934-7fa052e09ab1', 'pbunney2p', null, 'PV7jKfp', 22, '1964-12-02 00:18:17');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('2a97e8c7-ec41-4e4d-a824-a4f9884b83c4', 'gmatura2q', 'tlarosa2q@zimbio.com', 'NXmlWjr', 66, '2000-03-19 17:19:33');
insert into users (user_uid, username, email, password, age, date_of_birth) values ('e208f300-7e8f-4c07-99b3-2ee3ab1cd6c7', 'vgillmore2r', null, '5sVVH3M3jh', 47, '2008-08-09 07:43:17');