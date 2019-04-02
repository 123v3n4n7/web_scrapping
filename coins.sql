--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.10.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.10.1)

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
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    link text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, link, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	7675.09
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	760.902
3	Ripple	https://coinmarketcap.com/currencies/ripple/	0.726552
4	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	974.776
5	Cardano	https://coinmarketcap.com/currencies/cardano/	0.339859
6	Litecoin	https://coinmarketcap.com/currencies/litecoin/	138.7
7	NEO	https://coinmarketcap.com/currencies/neo/	102.821
8	Stellar	https://coinmarketcap.com/currencies/stellar/	0.345398
9	EOS	https://coinmarketcap.com/currencies/eos/	7.60543
10	NEM	https://coinmarketcap.com/currencies/nem/	0.54455
11	IOTA	https://coinmarketcap.com/currencies/iota/	1.60425
12	Dash	https://coinmarketcap.com/currencies/dash/	529.391
13	Monero	https://coinmarketcap.com/currencies/monero/	210.369
14	Tether	https://coinmarketcap.com/currencies/tether/	1.01153
15	TRON	https://coinmarketcap.com/currencies/tron/	0.0334687
16	Lisk	https://coinmarketcap.com/currencies/lisk/	18.5648
17	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	18.4332
18	VeChain	https://coinmarketcap.com/currencies/vechain/	3.91891
19	Qtum	https://coinmarketcap.com/currencies/qtum/	22.0187
20	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	88.3194
21	ICON	https://coinmarketcap.com/currencies/icon/	3.86886
22	Nano	https://coinmarketcap.com/currencies/raiblocks/	10.3769
23	Populous	https://coinmarketcap.com/currencies/populous/	33.6407
24	Zcash	https://coinmarketcap.com/currencies/zcash/	360.086
25	OmiseGO	https://coinmarketcap.com/currencies/omisego/	10.9349
26	Steem	https://coinmarketcap.com/currencies/steem/	3.62412
27	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	8.14748
28	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.00420857
29	Status	https://coinmarketcap.com/currencies/status/	0.209286
30	Verge	https://coinmarketcap.com/currencies/verge/	0.0487738
31	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.0205304
32	Stratis	https://coinmarketcap.com/currencies/stratis/	6.48321
33	Aeternity	https://coinmarketcap.com/currencies/aeternity/	2.63927
34	Maker	https://coinmarketcap.com/currencies/maker/	922.713
35	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.215792
36	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	274.232
37	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	264.717
38	Augur	https://coinmarketcap.com/currencies/augur/	47.3798
39	Walton	https://coinmarketcap.com/currencies/walton/	20.672
40	Waves	https://coinmarketcap.com/currencies/waves/	5.12234
41	0x	https://coinmarketcap.com/currencies/0x/	1.00695
42	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	5.40901
43	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.00431126
44	Decred	https://coinmarketcap.com/currencies/decred/	69.9721
45	RChain	https://coinmarketcap.com/currencies/rchain/	1.2591
46	Hshare	https://coinmarketcap.com/currencies/hshare/	10.1119
47	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.0661206
48	Ardor	https://coinmarketcap.com/currencies/ardor/	0.393081
49	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	2.85199
50	Komodo	https://coinmarketcap.com/currencies/komodo/	3.68982
51	Gas	https://coinmarketcap.com/currencies/gas/	38.0817
52	Ark	https://coinmarketcap.com/currencies/ark/	3.57622
53	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.0548317
54	Revain	https://coinmarketcap.com/currencies/revain/	1.93243
55	Basic Attenti...	https://coinmarketcap.com/currencies/basic-attention-token/	0.346014
56	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	1.44693
57	Loopring	https://coinmarketcap.com/currencies/loopring/	0.595047
58	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	0.000989193
59	Byteball Bytes	https://coinmarketcap.com/currencies/byteball/	466.769
60	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.0305745
61	aelf	https://coinmarketcap.com/currencies/aelf/	1.19706
62	Pillar	https://coinmarketcap.com/currencies/pillar/	1.30788
63	Ethos	https://coinmarketcap.com/currencies/ethos/	3.89996
64	PIVX	https://coinmarketcap.com/currencies/pivx/	5.15034
65	QASH	https://coinmarketcap.com/currencies/qash/	0.795427
66	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.332977
67	Bytom	https://coinmarketcap.com/currencies/bytom/	0.278154
68	FunFair	https://coinmarketcap.com/currencies/funfair/	0.0604433
69	ZClassic	https://coinmarketcap.com/currencies/zclassic/	82.681
70	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	5.77691
71	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.490367
72	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	7.32143
73	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.173735
74	Dent	https://coinmarketcap.com/currencies/dent/	0.0233881
75	Bitcore	https://coinmarketcap.com/currencies/bitcore/	21.5151
76	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.652464
77	GXShares	https://coinmarketcap.com/currencies/gxshares/	3.90929
78	IOStoken	https://coinmarketcap.com/currencies/iostoken/	0.0336022
79	SALT	https://coinmarketcap.com/currencies/salt/	4.21796
80	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.320287
81	Factom	https://coinmarketcap.com/currencies/factom/	24.0109
82	Aion	https://coinmarketcap.com/currencies/aion/	2.61268
83	Kin	https://coinmarketcap.com/currencies/kin/	0.000265053
84	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	3.47992
85	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.428091
86	ZCoin	https://coinmarketcap.com/currencies/zcoin/	44.5516
87	Bancor	https://coinmarketcap.com/currencies/bancor/	4.63264
88	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.397152
89	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.286337
90	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.00599826
91	XPlay	https://coinmarketcap.com/currencies/xplay/	0.168333
92	Request Network	https://coinmarketcap.com/currencies/request-network/	0.258973
93	Particl	https://coinmarketcap.com/currencies/particl/	18.7136
94	Enigma	https://coinmarketcap.com/currencies/enigma-project/	2.20756
95	Nxt	https://coinmarketcap.com/currencies/nxt/	0.16472
96	Nexus	https://coinmarketcap.com/currencies/nexus/	2.87281
97	TenX	https://coinmarketcap.com/currencies/tenx/	1.49904
98	Iconomi	https://coinmarketcap.com/currencies/iconomi/	1.55555
99	WAX	https://coinmarketcap.com/currencies/wax/	0.305827
100	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	134.531
101	Ignis	https://coinmarketcap.com/currencies/ignis/	0.192491
102	Emercoin	https://coinmarketcap.com/currencies/emercoin/	3.49419
103	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	2.12494
104	Neblio	https://coinmarketcap.com/currencies/neblio/	10.5375
105	ChainLink	https://coinmarketcap.com/currencies/chainlink/	0.382685
106	High Performa...	https://coinmarketcap.com/currencies/high-performance-blockchain/	5.92088
107	Raiden Networ...	https://coinmarketcap.com/currencies/raiden-network-token/	2.61473
108	Substratum	https://coinmarketcap.com/currencies/substratum/	0.572291
109	PayPie	https://coinmarketcap.com/currencies/paypie/	1.54998
110	Civic	https://coinmarketcap.com/currencies/civic/	0.372157
111	Blocknet	https://coinmarketcap.com/currencies/blocknet/	25.1682
112	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	2.836
113	Aragon	https://coinmarketcap.com/currencies/aragon/	4.52569
114	Experience Po...	https://coinmarketcap.com/currencies/experience-points/	0.000554885
115	Storj	https://coinmarketcap.com/currencies/storj/	0.874258
116	MediBloc	https://coinmarketcap.com/currencies/medibloc/	0.0389941
117	BitcoinDark	https://coinmarketcap.com/currencies/bitcoindark/	88.8741
118	ZenCash	https://coinmarketcap.com/currencies/zencash/	36.0022
119	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.687083
120	SuperNET	https://coinmarketcap.com/currencies/supernet-unity/	137.254
121	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.016141
122	DEW	https://coinmarketcap.com/currencies/dew/	1.07391
123	Po.et	https://coinmarketcap.com/currencies/poet/	0.0496655
124	Skycoin	https://coinmarketcap.com/currencies/skycoin/	14.8947
125	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.0639268
126	iExec RLC	https://coinmarketcap.com/currencies/rlc/	1.31884
127	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.0980708
128	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.13576
129	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	1.02305
130	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	0.00154714
131	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.0669432
132	Dynamic Tradi...	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.100301
133	Ubiq	https://coinmarketcap.com/currencies/ubiq/	2.48447
134	Achain	https://coinmarketcap.com/currencies/achain/	0.326583
135	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	2.46717
136	Agoras Tokens	https://coinmarketcap.com/currencies/agoras-tokens/	2.21278
137	Santiment Net...	https://coinmarketcap.com/currencies/santiment/	1.48215
138	VIBE	https://coinmarketcap.com/currencies/vibe/	0.439345
139	NAV Coin	https://coinmarketcap.com/currencies/nav-coin/	1.40413
140	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.583489
141	Storm	https://coinmarketcap.com/currencies/storm/	0.0351921
142	BridgeCoin	https://coinmarketcap.com/currencies/bridgecoin/	3.20863
143	Monaco	https://coinmarketcap.com/currencies/monaco/	6.44976
144	MediShares	https://coinmarketcap.com/currencies/medishares/	0.174597
145	Peercoin	https://coinmarketcap.com/currencies/peercoin/	3.42272
146	XTRABYTES	https://coinmarketcap.com/currencies/xtrabytes/	0.193293
147	ETHLend	https://coinmarketcap.com/currencies/ethlend/	0.078779
148	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.432191
149	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.227309
150	UTRUST	https://coinmarketcap.com/currencies/utrust/	0.302744
151	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.131026
152	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.0872823
153	Ripio Credit ...	https://coinmarketcap.com/currencies/ripio-credit-network/	0.159277
154	Asch	https://coinmarketcap.com/currencies/asch/	0.844079
155	Metal	https://coinmarketcap.com/currencies/metal/	4.03781
156	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.719396
157	Simple Token	https://coinmarketcap.com/currencies/simple-token/	0.275157
158	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.518272
159	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.00350324
160	Red Pulse	https://coinmarketcap.com/currencies/red-pulse/	0.132259
161	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.161664
162	Paypex	https://coinmarketcap.com/currencies/paypex/	1.02589
163	SONM	https://coinmarketcap.com/currencies/sonm/	0.193866
164	Theta Token	https://coinmarketcap.com/currencies/theta-token/	0.122571
165	Trinity Netwo...	https://coinmarketcap.com/currencies/trinity-network-credit/	0.202478
166	PACcoin	https://coinmarketcap.com/currencies/paccoin/	2.61585e-05
167	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.306507
168	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.80691
169	WaBi	https://coinmarketcap.com/currencies/wabi/	1.45881
170	Nuls	https://coinmarketcap.com/currencies/nuls/	2.78707
171	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.0647751
172	Quantum Resis...	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	1.25735
173	AdEx	https://coinmarketcap.com/currencies/adx-net/	1.08104
174	Counterparty	https://coinmarketcap.com/currencies/counterparty/	24.5795
175	Gulden	https://coinmarketcap.com/currencies/gulden/	0.162718
176	Centra	https://coinmarketcap.com/currencies/centra/	0.917788
177	Viacoin	https://coinmarketcap.com/currencies/viacoin/	2.62441
178	INS Ecosystem	https://coinmarketcap.com/currencies/ins-ecosystem/	2.12957
179	Melon	https://coinmarketcap.com/currencies/melon/	98.6006
180	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.319994
181	Electra	https://coinmarketcap.com/currencies/electra/	0.00255661
182	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.558148
183	Streamr DATAcoin	https://coinmarketcap.com/currencies/streamr-datacoin/	0.0816875
184	Eidoo	https://coinmarketcap.com/currencies/eidoo/	1.8544
185	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.212553
186	Internet Node...	https://coinmarketcap.com/currencies/internet-node-token/	0.354779
187	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.109515
188	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	1.41956
189	Modum	https://coinmarketcap.com/currencies/modum/	2.88796
190	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.537451
191	Tierion	https://coinmarketcap.com/currencies/tierion/	0.121931
192	indaHash	https://coinmarketcap.com/currencies/indahash/	0.130527
193	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.173779
194	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	0.0108443
195	Wings	https://coinmarketcap.com/currencies/wings/	0.557559
196	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.367147
197	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	13.0537
198	ION	https://coinmarketcap.com/currencies/ion/	2.48083
199	Bread	https://coinmarketcap.com/currencies/bread/	0.808113
200	Triggers	https://coinmarketcap.com/currencies/triggers/	1.50419
201	NAGA	https://coinmarketcap.com/currencies/naga/	0.824425
202	district0x	https://coinmarketcap.com/currencies/district0x/	0.0778181
203	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.315059
204	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	4.72955
205	Lykke	https://coinmarketcap.com/currencies/lykke/	0.168833
206	CoinDash	https://coinmarketcap.com/currencies/coindash/	0.0694032
207	DECENT	https://coinmarketcap.com/currencies/decent/	0.878177
208	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.0223158
209	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.135488
210	Decision Token	https://coinmarketcap.com/currencies/decision-token/	1.41073
211	Burst	https://coinmarketcap.com/currencies/burst/	0.0244612
212	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	14.539
213	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	8.62831
214	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.122775
215	Datum	https://coinmarketcap.com/currencies/datum/	0.0526306
216	QLINK	https://coinmarketcap.com/currencies/qlink/	0.175008
217	Presearch	https://coinmarketcap.com/currencies/presearch/	0.268538
218	Delphy	https://coinmarketcap.com/currencies/delphy/	1.36537
219	SaluS	https://coinmarketcap.com/currencies/salus/	40.5814
220	Mercury	https://coinmarketcap.com/currencies/mercury/	0.408665
221	Crown	https://coinmarketcap.com/currencies/crown/	2.37072
222	Gifto	https://coinmarketcap.com/currencies/gifto/	0.253469
223	TokenCard	https://coinmarketcap.com/currencies/tokencard/	1.62668
224	Lunyr	https://coinmarketcap.com/currencies/lunyr/	17.1386
225	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.0890296
226	Aeon	https://coinmarketcap.com/currencies/aeon/	2.53175
227	TaaS	https://coinmarketcap.com/currencies/taas/	4.78521
228	Pura	https://coinmarketcap.com/currencies/pura/	0.223693
229	adToken	https://coinmarketcap.com/currencies/adtoken/	0.0639535
230	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.44846
231	COSS	https://coinmarketcap.com/currencies/coss/	0.592978
232	Viberate	https://coinmarketcap.com/currencies/viberate/	0.22892
233	Grid+	https://coinmarketcap.com/currencies/grid/	0.953376
234	Safe Exchange...	https://coinmarketcap.com/currencies/safe-exchange-coin/	0.0242176
235	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.532918
236	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.00707862
237	Qbao	https://coinmarketcap.com/currencies/qbao/	0.557495
238	Spectre.ai Di...	https://coinmarketcap.com/currencies/spectre-dividend/	0.451988
239	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.152356
240	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	1.68838
241	Hive	https://coinmarketcap.com/currencies/hive/	0.0932315
242	Jinn	https://coinmarketcap.com/currencies/jinn/	593.156
243	ECC	https://coinmarketcap.com/currencies/eccoin/	0.00139111
244	Namecoin	https://coinmarketcap.com/currencies/namecoin/	2.33249
245	Ink	https://coinmarketcap.com/currencies/ink/	0.189904
246	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	0.000149364
247	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.166806
248	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	1.98649
249	Oyster	https://coinmarketcap.com/currencies/oyster/	0.476455
250	Diamond	https://coinmarketcap.com/currencies/diamond/	11.9892
251	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.798667
252	Shift	https://coinmarketcap.com/currencies/shift/	2.68952
253	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.0179637
254	Maecenas	https://coinmarketcap.com/currencies/maecenas/	1.03695
255	Pepe Cash	https://coinmarketcap.com/currencies/pepe-cash/	0.0444821
256	Cofound.it	https://coinmarketcap.com/currencies/cofound-it/	0.095848
257	ColossusCoinXT	https://coinmarketcap.com/currencies/colossuscoinxt/	0.00286333
258	Energo	https://coinmarketcap.com/currencies/energo/	0.052443
259	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.131109
260	Monetha	https://coinmarketcap.com/currencies/monetha/	0.138388
261	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.156736
262	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.134824
263	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.180416
264	Trade Token	https://coinmarketcap.com/currencies/trade-token/	0.344875
265	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.253227
266	WeTrust	https://coinmarketcap.com/currencies/trust/	0.311086
267	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.0152624
268	Voxels	https://coinmarketcap.com/currencies/voxels/	0.135878
269	Nimiq	https://coinmarketcap.com/currencies/nimiq/	2.70653
270	Everex	https://coinmarketcap.com/currencies/everex/	1.72158
271	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	1.73544
272	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.698556
273	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.135164
274	iXledger	https://coinmarketcap.com/currencies/ixledger/	0.76429
275	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	5.06256e-05
276	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.316607
277	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.0235061
278	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.045212
279	Olympus Labs	https://coinmarketcap.com/currencies/olympus-labs/	0.749586
280	LAToken	https://coinmarketcap.com/currencies/latoken/	0.338121
281	Lamden	https://coinmarketcap.com/currencies/lamden/	0.184378
282	Pascal Coin	https://coinmarketcap.com/currencies/pascal-coin/	1.47157
283	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.0539331
284	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	3.0954
285	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.263238
286	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.624646
287	FairCoin	https://coinmarketcap.com/currencies/faircoin/	0.478867
288	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.14531
289	Synereo	https://coinmarketcap.com/currencies/synereo/	0.309009
290	Flash	https://coinmarketcap.com/currencies/flash/	0.0277532
291	Moeda Loyalty...	https://coinmarketcap.com/currencies/moeda-loyalty-points/	1.25935
292	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.79306
293	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	123.064
294	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.0479827
295	BCAP	https://coinmarketcap.com/currencies/bcap/	2.38036
296	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.0946957
297	Propy	https://coinmarketcap.com/currencies/propy/	1.40518
298	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.37299
299	BitConnect	https://coinmarketcap.com/currencies/bitconnect/	2.49921
300	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.0875065
301	Covesting	https://coinmarketcap.com/currencies/covesting/	1.30766
302	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.0580739
303	Neumark	https://coinmarketcap.com/currencies/neumark/	0.786467
304	Karma	https://coinmarketcap.com/currencies/karma/	0.0224219
305	Elastic	https://coinmarketcap.com/currencies/elastic/	0.248065
306	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	1.29717
307	Mothership	https://coinmarketcap.com/currencies/mothership/	0.157563
308	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.0624059
309	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.282787
310	Phore	https://coinmarketcap.com/currencies/phore/	2.57765
311	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	5.4259
312	Expanse	https://coinmarketcap.com/currencies/expanse/	2.68485
313	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.00876825
314	Open Trading ...	https://coinmarketcap.com/currencies/open-trading-network/	5.73728
315	Aeron	https://coinmarketcap.com/currencies/aeron/	1.58037
316	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.526586
317	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.462164
318	Numeraire	https://coinmarketcap.com/currencies/numeraire/	15.5832
319	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.267971
320	Soarcoin	https://coinmarketcap.com/currencies/soarcoin/	0.0206665
321	BlockMason Cr...	https://coinmarketcap.com/currencies/blockmason/	0.441722
322	MyBit Token	https://coinmarketcap.com/currencies/mybit-token/	7.02422
323	Bodhi	https://coinmarketcap.com/currencies/bodhi/	0.490014
324	Boolberry	https://coinmarketcap.com/currencies/boolberry/	1.77158
325	Target Coin	https://coinmarketcap.com/currencies/target-coin/	0.0203542
326	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	1.93302
327	Profile Utili...	https://coinmarketcap.com/currencies/profile-utility-token/	0.922389
328	Game.com	https://coinmarketcap.com/currencies/game/	0.0641065
329	GET Protocol	https://coinmarketcap.com/currencies/guts-tickets/	1.79797
330	Universal Cur...	https://coinmarketcap.com/currencies/universal-currency/	1.44083
331	Stox	https://coinmarketcap.com/currencies/stox/	0.437393
332	Radium	https://coinmarketcap.com/currencies/radium/	5.34833
333	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	2.28666
334	Omni	https://coinmarketcap.com/currencies/omni/	32.4991
335	Snovio	https://coinmarketcap.com/currencies/snovio/	0.0447313
336	NVO	https://coinmarketcap.com/currencies/nvo/	1.20733
337	Primas	https://coinmarketcap.com/currencies/primas/	0.348483
338	GoByte	https://coinmarketcap.com/currencies/gobyte/	25.1809
339	OKCash	https://coinmarketcap.com/currencies/okcash/	0.239239
340	BLUE	https://coinmarketcap.com/currencies/ethereum-blue/	0.478387
341	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.183438
342	E-coin	https://coinmarketcap.com/currencies/e-coin/	3.39772
343	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.669289
344	Rise	https://coinmarketcap.com/currencies/rise/	0.148811
345	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.161194
346	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.135252
347	BitDice	https://coinmarketcap.com/currencies/bitdice/	0.237694
348	ProChain	https://coinmarketcap.com/currencies/prochain/	0.353705
349	Myriad	https://coinmarketcap.com/currencies/myriad/	0.0104933
350	Viuly	https://coinmarketcap.com/currencies/viuly/	0.0260803
351	Etheroll	https://coinmarketcap.com/currencies/etheroll/	2.29848
352	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.126293
353	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.131867
354	bitUSD	https://coinmarketcap.com/currencies/bitusd/	1.06602
355	AirToken	https://coinmarketcap.com/currencies/airtoken/	0.0151864
356	OAX	https://coinmarketcap.com/currencies/oax/	0.635298
357	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.839237
358	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.756966
359	Aurora DAO	https://coinmarketcap.com/currencies/aurora-dao/	0.158525
360	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.596356
361	Polybius	https://coinmarketcap.com/currencies/polybius/	4.0648
362	Waves Communi...	https://coinmarketcap.com/currencies/waves-community-token/	1.54805
363	LoMoCoin	https://coinmarketcap.com/currencies/lomocoin/	0.0683942
364	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.376691
365	Paragon	https://coinmarketcap.com/currencies/paragon/	0.235372
366	Clams	https://coinmarketcap.com/currencies/clams/	5.30071
367	Zoin	https://coinmarketcap.com/currencies/zoin/	0.906481
368	Playkey	https://coinmarketcap.com/currencies/playkey/	1.09842
369	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.121243
370	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.0800757
371	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	14.6
372	Hedge	https://coinmarketcap.com/currencies/hedge/	3.99794
373	NeosCoin	https://coinmarketcap.com/currencies/neoscoin/	4.02035
374	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.816608
375	Golos	https://coinmarketcap.com/currencies/golos/	0.118037
376	Credo	https://coinmarketcap.com/currencies/credo/	0.0266891
377	KickCoin	https://coinmarketcap.com/currencies/kickico/	0.0456718
378	NuBits	https://coinmarketcap.com/currencies/nubits/	0.997242
379	ALIS	https://coinmarketcap.com/currencies/alis/	0.379209
380	Nexium	https://coinmarketcap.com/currencies/nexium/	0.217276
381	Xenon	https://coinmarketcap.com/currencies/xenon/	0.0475376
382	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	0.000436015
383	Voise	https://coinmarketcap.com/currencies/voisecom/	0.0282889
384	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.469252
385	Databits	https://coinmarketcap.com/currencies/databits/	0.617744
386	LockChain	https://coinmarketcap.com/currencies/lockchain/	1.51113
387	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.0315804
388	Pluton	https://coinmarketcap.com/currencies/pluton/	16.2832
389	Aventus	https://coinmarketcap.com/currencies/aventus/	2.29963
390	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	6.79886
391	Rialto	https://coinmarketcap.com/currencies/rialto/	0.187671
392	Gambit	https://coinmarketcap.com/currencies/gambit/	11.2407
393	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	1.55607
394	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.600226
395	bitqy	https://coinmarketcap.com/currencies/bitqy/	0.0045818
396	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.986236
397	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.915466
398	Chronobank	https://coinmarketcap.com/currencies/chronobank/	18.6092
399	Patientory	https://coinmarketcap.com/currencies/patientory/	0.188678
400	ICOS	https://coinmarketcap.com/currencies/icos/	22.437
401	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	6.48958
402	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.067413
403	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	9.74461e-05
404	FoldingCoin	https://coinmarketcap.com/currencies/foldingcoin/	0.0220214
405	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.245598
406	Pirl	https://coinmarketcap.com/currencies/pirl/	1.2919
407	E-Dinar Coin	https://coinmarketcap.com/currencies/e-dinar-coin/	0.0139704
408	Gatcoin	https://coinmarketcap.com/currencies/gatcoin/	0.0233362
409	Polis	https://coinmarketcap.com/currencies/polis/	15.8134
410	Syndicate	https://coinmarketcap.com/currencies/syndicate/	0.677672
411	Blockport	https://coinmarketcap.com/currencies/blockport/	0.247049
412	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.0632171
413	LIFE	https://coinmarketcap.com/currencies/life/	0.000879212
414	Block Array	https://coinmarketcap.com/currencies/block-array/	0.177483
415	FlorinCoin	https://coinmarketcap.com/currencies/florincoin/	0.0853377
416	Linda	https://coinmarketcap.com/currencies/linda/	0.00199804
417	Elixir	https://coinmarketcap.com/currencies/elixir/	0.386792
418	Global Curren...	https://coinmarketcap.com/currencies/global-currency-reserve/	0.115143
419	Quantum	https://coinmarketcap.com/currencies/quantum/	0.156359
420	Divi	https://coinmarketcap.com/currencies/divi/	2.3056
421	Incent	https://coinmarketcap.com/currencies/incent/	0.25691
422	Neutron	https://coinmarketcap.com/currencies/neutron/	0.345658
423	Dovu	https://coinmarketcap.com/currencies/dovu/	0.182914
424	Change	https://coinmarketcap.com/currencies/change/	0.313636
425	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.155922
426	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	1.65595
427	Musicoin	https://coinmarketcap.com/currencies/musicoin/	0.0190721
428	OBITS	https://coinmarketcap.com/currencies/obits/	0.722894
429	Mercury Protocol	https://coinmarketcap.com/currencies/mercury-protocol/	0.0664608
430	Sequence	https://coinmarketcap.com/currencies/sequence/	0.248336
431	Russian Miner...	https://coinmarketcap.com/currencies/russian-mining-coin/	7456.97
432	Mintcoin	https://coinmarketcap.com/currencies/mintcoin/	0.000450333
433	Hackspace Cap...	https://coinmarketcap.com/currencies/hackspace-capital/	0.0345648
434	Solaris	https://coinmarketcap.com/currencies/solaris/	11.2509
435	Dai	https://coinmarketcap.com/currencies/dai/	0.995137
436	Internet of P...	https://coinmarketcap.com/currencies/internet-of-people/	3.30303
437	Obsidian	https://coinmarketcap.com/currencies/obsidian/	0.424008
438	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.53594
439	ALQO	https://coinmarketcap.com/currencies/alqo/	0.993733
440	Leverj	https://coinmarketcap.com/currencies/leverj/	0.087102
441	Espers	https://coinmarketcap.com/currencies/espers/	0.000483169
442	Dynamic	https://coinmarketcap.com/currencies/dynamic/	2.13699
443	Hawala.Today	https://coinmarketcap.com/currencies/hawala-today/	6.65084
444	Astro	https://coinmarketcap.com/currencies/astro/	3.00338
445	Autonio	https://coinmarketcap.com/currencies/autonio/	0.148914
446	RussiaCoin	https://coinmarketcap.com/currencies/russiacoin/	1.15772
447	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.0827545
448	Publica	https://coinmarketcap.com/currencies/publica/	0.517782
449	Circuits of V...	https://coinmarketcap.com/currencies/circuits-of-value/	0.00960162
450	PinkCoin	https://coinmarketcap.com/currencies/pinkcoin/	0.024981
451	B2B	https://coinmarketcap.com/currencies/b2bx/	0.572202
452	Sphere	https://coinmarketcap.com/currencies/sphere/	3.0496
453	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.29138
454	Monoeci	https://coinmarketcap.com/currencies/monacocoin/	3.04664
455	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.388474
456	Lampix	https://coinmarketcap.com/currencies/lampix/	0.0679454
457	Bitcrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.393053
458	Tao	https://coinmarketcap.com/currencies/tao/	0.277602
459	UFO Coin	https://coinmarketcap.com/currencies/ufo-coin/	0.00254183
460	Payfair	https://coinmarketcap.com/currencies/payfair/	0.1186
461	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.913559
462	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	1.21958
463	Spectre.ai Ut...	https://coinmarketcap.com/currencies/spectre-utility/	0.379112
464	AsiaCoin	https://coinmarketcap.com/currencies/asiacoin/	0.00685526
465	Ethorse	https://coinmarketcap.com/currencies/ethorse/	0.0885432
466	Bitdeal	https://coinmarketcap.com/currencies/bitdeal/	0.0501539
467	Aigang	https://coinmarketcap.com/currencies/aigang/	0.491695
468	EarthCoin	https://coinmarketcap.com/currencies/earthcoin/	0.000745704
469	Sprouts	https://coinmarketcap.com/currencies/sprouts/	3.29202e-06
470	Stealthcoin	https://coinmarketcap.com/currencies/stealthcoin/	0.308198
471	DCORP	https://coinmarketcap.com/currencies/dcorp/	1.06652
472	ArtByte	https://coinmarketcap.com/currencies/artbyte/	0.0108093
473	Vcash	https://coinmarketcap.com/currencies/vcash/	0.553591
474	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.129881
475	Hush	https://coinmarketcap.com/currencies/hush/	2.64449
476	TIES Network	https://coinmarketcap.com/currencies/ties-network/	0.202571
477	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.0428108
478	Novacoin	https://coinmarketcap.com/currencies/novacoin/	4.00464
479	DAO.Casino	https://coinmarketcap.com/currencies/dao-casino/	0.0465894
480	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.00719575
481	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.00584492
482	Memetic / Pep...	https://coinmarketcap.com/currencies/memetic/	0.403642
483	Elite	https://coinmarketcap.com/currencies/1337coin/	0.000307206
484	HyperStake	https://coinmarketcap.com/currencies/hyperstake/	0.00678498
485	Verify	https://coinmarketcap.com/currencies/verify/	0.633557
486	AdShares	https://coinmarketcap.com/currencies/adshares/	0.393097
487	Bitmark	https://coinmarketcap.com/currencies/bitmark/	0.940283
488	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	2.69068
489	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	1.67618e-05
490	Innova	https://coinmarketcap.com/currencies/innova/	4.20973
491	CrowdCoin	https://coinmarketcap.com/currencies/crowdcoin/	7.24374
492	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.23526
493	Bulwark	https://coinmarketcap.com/currencies/bulwark/	3.3569
494	Qwark	https://coinmarketcap.com/currencies/qwark/	0.1424
495	vTorrent	https://coinmarketcap.com/currencies/vtorrent/	0.654446
496	Global Jobcoin	https://coinmarketcap.com/currencies/global-jobcoin/	0.523344
497	Atmos	https://coinmarketcap.com/currencies/atmos/	0.068978
498	Social	https://coinmarketcap.com/currencies/social/	0.413088
499	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.0976487
500	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	4.601
501	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	4.49884e-05
502	Sharechain	https://coinmarketcap.com/currencies/sharechain/	0.00315757
503	MagicCoin	https://coinmarketcap.com/currencies/magiccoin/	0.915678
504	BitBoost	https://coinmarketcap.com/currencies/bitboost/	0.535582
505	MyWish	https://coinmarketcap.com/currencies/mywish/	0.353992
506	EuropeCoin	https://coinmarketcap.com/currencies/europecoin/	0.664652
507	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.500113
508	DigiPulse	https://coinmarketcap.com/currencies/digipulse/	4.70714
509	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.345065
510	Magnet	https://coinmarketcap.com/currencies/magnet/	0.454062
511	Internxt	https://coinmarketcap.com/currencies/internxt/	10.1178
512	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.0476577
513	Riecoin	https://coinmarketcap.com/currencies/riecoin/	0.150585
514	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.0687981
515	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	58.8681
516	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	0.976651
517	Devery	https://coinmarketcap.com/currencies/devery/	0.100767
518	Creditbit	https://coinmarketcap.com/currencies/creditbit/	0.367925
519	Kore	https://coinmarketcap.com/currencies/korecoin/	3.00753
520	Breakout Stake	https://coinmarketcap.com/currencies/breakout-stake/	0.969426
521	KiloCoin	https://coinmarketcap.com/currencies/kilocoin/	0.030234
522	Synergy	https://coinmarketcap.com/currencies/synergy/	1.73338
523	REX	https://coinmarketcap.com/currencies/real-estate-tokens/	0.679451
524	Blitzcash	https://coinmarketcap.com/currencies/blitzcash/	1.41942
525	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.0746859
526	Privatix	https://coinmarketcap.com/currencies/privatix/	4.85805
527	Qvolta	https://coinmarketcap.com/currencies/qvolta/	0.844047
528	Starta	https://coinmarketcap.com/currencies/starta/	1.09179
529	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	0.0749042
530	Masternodecoin	https://coinmarketcap.com/currencies/masternodecoin/	0.109145
531	FLiK	https://coinmarketcap.com/currencies/flik/	0.0935495
532	Dotcoin	https://coinmarketcap.com/currencies/dotcoin/	0.0199536
533	GoldCoin	https://coinmarketcap.com/currencies/goldcoin/	0.137455
534	Breakout	https://coinmarketcap.com/currencies/breakout/	0.308187
535	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.314272
536	Rupee	https://coinmarketcap.com/currencies/rupee/	0.24094
537	Bela	https://coinmarketcap.com/currencies/belacoin/	0.138367
538	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	5.70816
539	BuzzCoin	https://coinmarketcap.com/currencies/buzzcoin/	0.000308102
540	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.0467378
541	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.513756
542	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	0.000143588
543	REAL	https://coinmarketcap.com/currencies/real/	0.526503
544	ChainCoin	https://coinmarketcap.com/currencies/chaincoin/	0.360017
545	Social Send	https://coinmarketcap.com/currencies/social-send/	0.165054
546	HomeBlockCoin	https://coinmarketcap.com/currencies/homeblockcoin/	1.04684
547	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.0396104
548	onG.social	https://coinmarketcap.com/currencies/ongsocial/	0.379119
549	Global Jobcoin	https://coinmarketcap.com/currencies/global-jobcoin/	0.379498
550	Farad	https://coinmarketcap.com/currencies/farad/	0.037599
551	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.80834
552	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.446533
553	IncaKoin	https://coinmarketcap.com/currencies/incakoin/	0.000382146
554	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	1.31619
555	2GIVE	https://coinmarketcap.com/currencies/2give/	0.00962818
556	XGOX	https://coinmarketcap.com/currencies/xgox/	0.00367622
557	Everus	https://coinmarketcap.com/currencies/everus/	0.190283
558	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.308923
559	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	1.10276
560	SmartBillions	https://coinmarketcap.com/currencies/smartbillions/	0.688514
561	ProCurrency	https://coinmarketcap.com/currencies/procurrency/	0.0501431
562	Karbo	https://coinmarketcap.com/currencies/karbowanec/	0.917369
563	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.00563857
564	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.0134954
565	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.369055
566	Creativecoin	https://coinmarketcap.com/currencies/creativecoin/	0.35288
567	Tokes	https://coinmarketcap.com/currencies/tokes/	3.06339
568	TeslaCoin	https://coinmarketcap.com/currencies/teslacoin/	0.0620825
569	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	13.3288
570	Interstellar ...	https://coinmarketcap.com/currencies/interstellar-holdings/	0.0358196
571	STRAKS	https://coinmarketcap.com/currencies/straks/	3.02981
572	Vsync	https://coinmarketcap.com/currencies/vsync-vsx/	0.0272077
573	Tracto	https://coinmarketcap.com/currencies/tracto/	0.36728
574	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.0943666
575	APX	https://coinmarketcap.com/currencies/apx/	6.23051
576	MCAP	https://coinmarketcap.com/currencies/mcap/	0.416218
577	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.445696
578	IntenseCoin	https://coinmarketcap.com/currencies/intensecoin/	0.0118216
579	Bowhead	https://coinmarketcap.com/currencies/bowhead/	0.525082
580	Altcoin	https://coinmarketcap.com/currencies/altcoin-alt/	33.3973
581	Opus	https://coinmarketcap.com/currencies/opus/	0.0291895
582	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	1.42015
583	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.305165
584	VIVO	https://coinmarketcap.com/currencies/vivo/	3.3932
585	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.178396
586	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	1.87172
587	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.0310999
588	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.0854582
589	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	2.05536
590	Project Decorum	https://coinmarketcap.com/currencies/project-decorum/	0.0767943
591	TrustPlus	https://coinmarketcap.com/currencies/trustplus/	0.119158
592	Crypto Bullion	https://coinmarketcap.com/currencies/cryptogenic-bullion/	3.69722
593	Pure	https://coinmarketcap.com/currencies/pure/	1.14067
594	Goodomy	https://coinmarketcap.com/currencies/goodomy/	0.0079129
595	Denarius	https://coinmarketcap.com/currencies/denarius-dnr/	1.58326
596	Chronologic	https://coinmarketcap.com/currencies/chronologic/	5.75181
597	TheGCCcoin	https://coinmarketcap.com/currencies/thegcccoin/	0.00616203
598	Zero	https://coinmarketcap.com/currencies/zero/	1.36335
599	FORCE	https://coinmarketcap.com/currencies/force/	0.0312572
600	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.714026
601	Embers	https://coinmarketcap.com/currencies/embers/	0.0648081
602	BunnyCoin	https://coinmarketcap.com/currencies/bunnycoin/	3.12813e-05
603	HunterCoin	https://coinmarketcap.com/currencies/huntercoin/	0.147427
604	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.191716
605	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.0649541
606	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.67582
607	Darcrus	https://coinmarketcap.com/currencies/darcrus/	0.227865
608	Condensate	https://coinmarketcap.com/currencies/condensate/	0.0303777
609	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	0.130853
610	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.0276828
611	Zephyr	https://coinmarketcap.com/currencies/zephyr/	0.0240045
612	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	2909.35
613	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	6.68034
614	Magi	https://coinmarketcap.com/currencies/magi/	0.373107
615	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.0318027
616	WandX	https://coinmarketcap.com/currencies/wandx/	0.233456
617	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.238009
618	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.00494689
619	Quark	https://coinmarketcap.com/currencies/quark/	0.0110984
620	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.0646434
621	Ethbits	https://coinmarketcap.com/currencies/ethbits/	2.01847
622	ArcticCoin	https://coinmarketcap.com/currencies/arcticcoin/	0.113278
623	FundYourselfNow	https://coinmarketcap.com/currencies/fundyourselfnow/	3.27505
624	Footy Cash	https://coinmarketcap.com/currencies/footy-cash/	0.606267
625	OP Coin	https://coinmarketcap.com/currencies/op-coin/	0.0443243
626	Oceanlab	https://coinmarketcap.com/currencies/oceanlab/	0.0591555
627	42-coin	https://coinmarketcap.com/currencies/42-coin/	64999.2
628	LendConnect	https://coinmarketcap.com/currencies/lendconnect/	1.25632
629	Intelligent T...	https://coinmarketcap.com/currencies/intelligent-trading-tech/	0.273999
630	EquiTrader	https://coinmarketcap.com/currencies/equitrader/	0.255155
631	Ergo	https://coinmarketcap.com/currencies/ergo/	6.45393
632	Abjcoin	https://coinmarketcap.com/currencies/abjcoin/	0.305635
633	PlusCoin	https://coinmarketcap.com/currencies/pluscoin/	0.000477433
634	Version	https://coinmarketcap.com/currencies/version/	0.00508368
635	Unitus	https://coinmarketcap.com/currencies/unitus/	0.0519922
636	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	0.000158456
637	Commodity Ad ...	https://coinmarketcap.com/currencies/commodity-ad-network/	0.0704974
638	NEVERDIE	https://coinmarketcap.com/currencies/neverdie/	0.0558535
639	CampusCoin	https://coinmarketcap.com/currencies/campuscoin/	0.00649537
640	DigitalPrice	https://coinmarketcap.com/currencies/digitalprice/	0.119355
641	Moin	https://coinmarketcap.com/currencies/moin/	0.294777
642	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.00146325
643	Canada eCoin	https://coinmarketcap.com/currencies/canada-ecoin/	0.0221359
644	NobleCoin	https://coinmarketcap.com/currencies/noblecoin/	0.000924305
645	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	4.55727
646	Linx	https://coinmarketcap.com/currencies/linx/	0.118617
647	ERC20	https://coinmarketcap.com/currencies/erc20/	0.0012552
648	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.0747146
649	Qbic	https://coinmarketcap.com/currencies/qbic/	9.33376
650	Smart Investm...	https://coinmarketcap.com/currencies/smart-investment-fund-token/	2.66261
651	Accelerator N...	https://coinmarketcap.com/currencies/accelerator-network/	7.11559
652	Gimli	https://coinmarketcap.com/currencies/gimli/	0.0238036
653	Cream	https://coinmarketcap.com/currencies/cream/	0.0415937
654	Copico	https://coinmarketcap.com/currencies/copico/	0.118762
655	Centurion	https://coinmarketcap.com/currencies/centurion/	0.0251873
656	UnbreakableCoin	https://coinmarketcap.com/currencies/unbreakablecoin/	0.812772
657	Bata	https://coinmarketcap.com/currencies/bata/	0.370199
658	Suretly	https://coinmarketcap.com/currencies/suretly/	8.31388
659	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.0993186
660	Fastcoin	https://coinmarketcap.com/currencies/fastcoin/	0.0116308
661	WorldCoin	https://coinmarketcap.com/currencies/worldcoin/	0.015317
662	Unify	https://coinmarketcap.com/currencies/unify/	0.100575
663	FuckToken	https://coinmarketcap.com/currencies/fucktoken/	0.0342003
664	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.0198471
665	Greencoin	https://coinmarketcap.com/currencies/greencoin/	0.000462152
666	StarCredits	https://coinmarketcap.com/currencies/starcredits/	0.385127
667	EthBet	https://coinmarketcap.com/currencies/ethbet/	0.203237
668	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.161753
669	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	0.00130936
670	FlutterCoin	https://coinmarketcap.com/currencies/fluttercoin/	0.00385127
671	Kubera Coin	https://coinmarketcap.com/currencies/kubera-coin/	0.0146464
672	Skeincoin	https://coinmarketcap.com/currencies/skeincoin/	0.125474
673	AurumCoin	https://coinmarketcap.com/currencies/aurumcoin/	5.57643
674	Link Platform	https://coinmarketcap.com/currencies/link-platform/	100.938
675	Royal Kingdom...	https://coinmarketcap.com/currencies/royal-kingdom-coin/	0.612729
676	Photon	https://coinmarketcap.com/currencies/photon/	7.70254e-05
677	Bytecent	https://coinmarketcap.com/currencies/bytecent/	0.825096
678	MazaCoin	https://coinmarketcap.com/currencies/mazacoin/	0.00154051
679	CarTaxi Token	https://coinmarketcap.com/currencies/cartaxi-token/	0.0264037
680	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.261704
681	Bitcoin Scrypt	https://coinmarketcap.com/currencies/bitcoin-scrypt/	0.0955115
682	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	0.000462708
683	MACRON	https://coinmarketcap.com/currencies/macron/	0.0039283
684	Monster Byte	https://coinmarketcap.com/currencies/monster-byte/	0.0922764
685	Renos	https://coinmarketcap.com/currencies/renos/	0.0462397
686	Zennies	https://coinmarketcap.com/currencies/zennies/	0.00154046
687	Legends Room	https://coinmarketcap.com/currencies/legends-room/	0.741532
688	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.00169456
689	Miners' Rewar...	https://coinmarketcap.com/currencies/miners-reward-token/	0.1451
690	Soma	https://coinmarketcap.com/currencies/soma/	0.359371
691	LeviarCoin	https://coinmarketcap.com/currencies/leviarcoin/	0.1331
692	Emphy	https://coinmarketcap.com/currencies/emphy/	0.183628
693	Authorship	https://coinmarketcap.com/currencies/authorship/	0.0174451
694	Scorecoin	https://coinmarketcap.com/currencies/scorecoin/	0.033429
695	Influxcoin	https://coinmarketcap.com/currencies/influxcoin/	0.831352
696	Growers Inter...	https://coinmarketcap.com/currencies/growers-international/	1.15746
697	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	0.00325898
698	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.370683
699	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.0933443
700	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.0469085
701	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.00774757
702	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.0343718
703	Aricoin	https://coinmarketcap.com/currencies/aricoin/	0.00901197
704	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.0526854
705	BlakeStar	https://coinmarketcap.com/currencies/blakestar/	0.00443985
706	Ace	https://coinmarketcap.com/currencies/ace/	0.328178
707	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	0.104613
708	Machinecoin	https://coinmarketcap.com/currencies/machinecoin/	0.0608501
709	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.00315804
710	Kolion	https://coinmarketcap.com/currencies/kolion/	2.05536
711	NetCoin	https://coinmarketcap.com/currencies/netcoin/	0.00154051
712	Netko	https://coinmarketcap.com/currencies/netko/	0.24625
713	TittieCoin	https://coinmarketcap.com/currencies/tittiecoin/	0.000924305
714	HOdlcoin	https://coinmarketcap.com/currencies/hodlcoin/	0.00700931
715	Desire	https://coinmarketcap.com/currencies/desire/	1.13659
716	I0Coin	https://coinmarketcap.com/currencies/i0coin/	0.054688
717	DFSCoin	https://coinmarketcap.com/currencies/dfscoin/	0.0647587
718	Triangles	https://coinmarketcap.com/currencies/triangles/	10.3896
719	Giga Watt Token	https://coinmarketcap.com/currencies/giga-watt-token/	1.18593
720	CoinonatX	https://coinmarketcap.com/currencies/coinonatx/	0.0585013
721	BlazeCoin	https://coinmarketcap.com/currencies/blazecoin/	0.00169456
722	Piggycoin	https://coinmarketcap.com/currencies/piggycoin/	0.00210501
723	BigUp	https://coinmarketcap.com/currencies/bigup/	0.000472473
724	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.506012
725	DROXNE	https://coinmarketcap.com/currencies/droxne/	0.01502
726	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.0284224
727	Nimfamoney	https://coinmarketcap.com/currencies/nimfamoney/	2.18538
728	CryptoForecast	https://coinmarketcap.com/currencies/cryptoforecast/	0.020546
729	Happycoin	https://coinmarketcap.com/currencies/happycoin/	0.0690158
730	Bitpark Coin	https://coinmarketcap.com/currencies/bitpark-coin/	0.0120973
731	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.050416
732	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.131896
733	iTicoin	https://coinmarketcap.com/currencies/iticoin/	28.0844
734	808Coin	https://coinmarketcap.com/currencies/808coin/	0.000222679
735	Minereum	https://coinmarketcap.com/currencies/minereum/	0.419985
736	Guncoin	https://coinmarketcap.com/currencies/guncoin/	0.00431342
737	Sovereign Hero	https://coinmarketcap.com/currencies/sovereign-hero/	179.553
738	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.0346614
739	Fantomcoin	https://coinmarketcap.com/currencies/fantomcoin/	0.123241
740	Eternity	https://coinmarketcap.com/currencies/eternity/	0.204787
741	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.0748333
742	Madcoin	https://coinmarketcap.com/currencies/madcoin/	0.460288
743	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	0.126618
744	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.0400559
745	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.00206526
746	eBitcoinCash	https://coinmarketcap.com/currencies/ebitcoin-cash/	0.0860533
747	GanjaCoin	https://coinmarketcap.com/currencies/ganjacoin/	0.178314
748	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.00400532
749	Steneum Coin	https://coinmarketcap.com/currencies/steneum-coin/	0.368832
750	Bit20	https://coinmarketcap.com/currencies/bit20/	775565.0
751	UniCoin	https://coinmarketcap.com/currencies/unicoin/	0.262965
752	FuelCoin	https://coinmarketcap.com/currencies/fuelcoin/	0.00770254
753	Opal	https://coinmarketcap.com/currencies/opal/	0.051607
754	Nyancoin	https://coinmarketcap.com/currencies/nyancoin/	0.0024444
755	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.050642
756	WhaleCoin	https://coinmarketcap.com/currencies/whalecoin/	0.120087
757	RouletteToken	https://coinmarketcap.com/currencies/roulettetoken/	0.0757056
758	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.0123651
759	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	1.36951
760	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.0839577
761	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.0117849
762	Billionaire T...	https://coinmarketcap.com/currencies/billionaire-token/	0.22932
763	Confido	https://coinmarketcap.com/currencies/confido/	0.0826326
764	Visio	https://coinmarketcap.com/currencies/visio/	0.0145578
765	Octanox	https://coinmarketcap.com/currencies/octanox/	0.0862685
766	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.0593586
767	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.00576113
768	Pascal Lite	https://coinmarketcap.com/currencies/pascal-lite/	0.139416
769	FUNCoin	https://coinmarketcap.com/currencies/funcoin/	0.118937
770	BritCoin	https://coinmarketcap.com/currencies/britcoin/	0.0324291
771	CryptoInsight	https://coinmarketcap.com/currencies/trackr/	0.0535582
772	Joulecoin	https://coinmarketcap.com/currencies/joulecoin/	0.0191793
773	Sterlingcoin	https://coinmarketcap.com/currencies/sterlingcoin/	0.155608
774	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.0233512
775	Newbium	https://coinmarketcap.com/currencies/newbium/	0.0128877
776	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.0133254
777	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.0341223
778	SagaCoin	https://coinmarketcap.com/currencies/sagacoin/	2.82665
779	AdCoin	https://coinmarketcap.com/currencies/adcoin/	0.11151
780	SecureCoin	https://coinmarketcap.com/currencies/securecoin/	0.073575
781	Argentum	https://coinmarketcap.com/currencies/argentum/	0.0675276
782	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.330314
783	Senderon	https://coinmarketcap.com/currencies/senderon/	0.0140957
784	Ammo Reloaded	https://coinmarketcap.com/currencies/ammo-rewards/	0.00770254
785	DaxxCoin	https://coinmarketcap.com/currencies/daxxcoin/	0.00115538
786	Sugar Exchange	https://coinmarketcap.com/currencies/sugar-exchange/	0.166626
787	BitTokens	https://coinmarketcap.com/currencies/bittokens/	1.0088
788	Coin(O)	https://coinmarketcap.com/currencies/coin/	0.0054688
789	SwagBucks	https://coinmarketcap.com/currencies/swagbucks/	1.62616
790	PoSToken	https://coinmarketcap.com/currencies/postoken/	0.604657
791	DigiCube	https://coinmarketcap.com/currencies/digicube/	0.000231076
792	DigitalDevelo...	https://coinmarketcap.com/currencies/digital-developers-fund/	0.108986
793	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.00292692
794	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.107723
795	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.036279
796	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.0113998
797	Ethereum Dark	https://coinmarketcap.com/currencies/ethereum-dark/	0.364127
798	TEKcoin	https://coinmarketcap.com/currencies/tekcoin/	0.000385127
799	Atomic Coin	https://coinmarketcap.com/currencies/atomic-coin/	0.0386357
800	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.075822
801	8Bit	https://coinmarketcap.com/currencies/8bit/	0.347133
802	Dashcoin	https://coinmarketcap.com/currencies/dashcoin/	0.0285975
803	Fujinto	https://coinmarketcap.com/currencies/fujinto/	0.00761913
804	DigitalDevelo...	https://coinmarketcap.com/currencies/digital-developers-fund/	0.0977498
805	Pioneer Coin	https://coinmarketcap.com/currencies/pioneer-coin/	0.241961
806	OctoCoin	https://coinmarketcap.com/currencies/octocoin/	0.00929437
807	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.0574712
808	SpaceCoin	https://coinmarketcap.com/currencies/spacecoin/	0.0218149
809	ZoZoCoin	https://coinmarketcap.com/currencies/zozocoin/	0.794804
810	RedCoin	https://coinmarketcap.com/currencies/redcoin/	0.00614504
811	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.00384065
812	Philosopher S...	https://coinmarketcap.com/currencies/philosopher-stones/	0.0753535
813	ChanCoin	https://coinmarketcap.com/currencies/chancoin/	0.0624468
814	Unity Ingot	https://coinmarketcap.com/currencies/unity-ingot/	0.00222949
815	C-Bit	https://coinmarketcap.com/currencies/c-bit/	0.0028002
816	Grimcoin	https://coinmarketcap.com/currencies/grimcoin/	0.00755128
817	FinCoin	https://coinmarketcap.com/currencies/fincoin/	0.0318868
818	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	18.6055
819	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.0450546
820	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.254942
821	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.0237866
822	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	9036.61
823	Ccore	https://coinmarketcap.com/currencies/ccore/	0.314125
824	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoinfast/	0.0660591
825	Swing	https://coinmarketcap.com/currencies/swing/	0.12413
826	Helleniccoin	https://coinmarketcap.com/currencies/helleniccoin/	0.0055915
827	Bitgem	https://coinmarketcap.com/currencies/bitgem/	6.04518
828	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.0227385
829	Zlancer	https://coinmarketcap.com/currencies/zcash-gold/	0.177278
830	Independent M...	https://coinmarketcap.com/currencies/independent-money-system/	0.0653678
831	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.0249416
832	EOT Token	https://coinmarketcap.com/currencies/eot-token/	0.0168302
833	SixEleven	https://coinmarketcap.com/currencies/sixeleven/	0.767042
834	Rubies	https://coinmarketcap.com/currencies/rubies/	0.0321846
835	CannaCoin	https://coinmarketcap.com/currencies/cannacoin/	0.0706679
836	LeaCoin	https://coinmarketcap.com/currencies/leacoin/	0.000998568
837	BumbaCoin	https://coinmarketcap.com/currencies/bumbacoin/	0.0143637
838	bitGold	https://coinmarketcap.com/currencies/bitgold/	1638.9
839	SoonCoin	https://coinmarketcap.com/currencies/sooncoin/	0.0253483
840	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.0249642
841	Dix Asset	https://coinmarketcap.com/currencies/dix-asset/	3.06434e-06
842	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.308788
843	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.0889494
844	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.0102929
845	ReeCoin	https://coinmarketcap.com/currencies/reecoin/	0.000116068
846	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.047624
847	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.924982
848	Hexx	https://coinmarketcap.com/currencies/hexx/	0.189574
849	300 Token	https://coinmarketcap.com/currencies/300-token/	960.163
850	eREAL	https://coinmarketcap.com/currencies/ereal/	0.00382003
851	Crypto	https://coinmarketcap.com/currencies/crypto/	0.0207395
852	BitQuark	https://coinmarketcap.com/currencies/bitquark/	0.0282672
853	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.0565051
854	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.53263
855	Advanced Inte...	https://coinmarketcap.com/currencies/advanced-internet-blocks/	0.0102106
856	DIBCOIN	https://coinmarketcap.com/currencies/dibcoin/	0.0476665
857	BROTHER	https://coinmarketcap.com/currencies/brat/	0.00145626
858	Eryllium	https://coinmarketcap.com/currencies/eryllium/	0.0405992
859	Kayicoin	https://coinmarketcap.com/currencies/kayicoin/	0.000783051
860	Evotion	https://coinmarketcap.com/currencies/evotion/	0.0689012
861	Global Tour Coin	https://coinmarketcap.com/currencies/global-tour-coin/	0.00729723
862	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.0809609
863	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.317373
864	ICOBID	https://coinmarketcap.com/currencies/icobid/	0.00184351
865	PayCon	https://coinmarketcap.com/currencies/paycon/	0.00844943
866	EagleCoin	https://coinmarketcap.com/currencies/eaglecoin/	0.0924709
867	Beatcoin	https://coinmarketcap.com/currencies/beatcoin/	0.123054
868	Creatio	https://coinmarketcap.com/currencies/creatio/	0.00845445
869	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.0136727
870	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.0185149
871	Network Token	https://coinmarketcap.com/currencies/network-token/	0.0135229
872	EcoCoin	https://coinmarketcap.com/currencies/ecocoin/	0.135421
873	Cthulhu Offer...	https://coinmarketcap.com/currencies/cthulhu-offerings/	0.0574561
874	ETHGAS	https://coinmarketcap.com/currencies/ethgas/	0.0145161
875	Marijuanacoin	https://coinmarketcap.com/currencies/marijuanacoin/	0.0902552
876	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.29864
877	Allion	https://coinmarketcap.com/currencies/allion/	0.0223236
878	GoldPieces	https://coinmarketcap.com/currencies/goldpieces/	0.107154
879	Roofs	https://coinmarketcap.com/currencies/roofs/	0.000998568
880	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.00384065
881	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.00611905
882	Spots	https://coinmarketcap.com/currencies/spots/	0.00545372
883	Solarflarecoin	https://coinmarketcap.com/currencies/solarflarecoin/	0.00853908
884	VapersCoin	https://coinmarketcap.com/currencies/vaperscoin/	0.000153626
885	iDice	https://coinmarketcap.com/currencies/idice/	0.0731992
886	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.0139031
887	BnrtxCoin	https://coinmarketcap.com/currencies/bnrtxcoin/	0.00391746
888	Kronecoin	https://coinmarketcap.com/currencies/kronecoin/	0.0226499
889	Useless Ether...	https://coinmarketcap.com/currencies/useless-ethereum-token/	0.0252122
890	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.0874131
891	Master Swiscoin	https://coinmarketcap.com/currencies/master-swiscoin/	0.00193337
892	Corethum	https://coinmarketcap.com/currencies/corethum/	0.028803
893	PlayerCoin	https://coinmarketcap.com/currencies/playercoin/	0.00145945
894	Veros	https://coinmarketcap.com/currencies/veros/	8.63915e-05
895	GeertCoin	https://coinmarketcap.com/currencies/geertcoin/	0.0080978
896	ExchangeN	https://coinmarketcap.com/currencies/exchangen/	0.00775549
897	WomenCoin	https://coinmarketcap.com/currencies/women/	0.000844943
898	Dollar Online	https://coinmarketcap.com/currencies/dollar-online/	0.0430153
899	LevoPlus	https://coinmarketcap.com/currencies/levoplus/	0.0162071
900	CybCSec	https://coinmarketcap.com/currencies/cybcsec/	0.0023812
901	Coupecoin	https://coinmarketcap.com/currencies/coupecoin/	0.000126713
902	PRCoin	https://coinmarketcap.com/currencies/prcoin/	0.00154051
903	Coimatic 3.0	https://coinmarketcap.com/currencies/coimatic-3/	0.0108357
904	Argus	https://coinmarketcap.com/currencies/argus/	0.0174003
905	Aerium	https://coinmarketcap.com/currencies/aerium/	0.0107291
906	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	0.000385127
907	CaliphCoin	https://coinmarketcap.com/currencies/caliphcoin/	0.00161095
908	Vault Coin	https://coinmarketcap.com/currencies/vault-coin/	0.000273685
909	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	3.92056e-05
910	Tristar Coin	https://coinmarketcap.com/currencies/tristar-coin/	0.000924305
911	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	0.00577691
912	Digital Money...	https://coinmarketcap.com/currencies/digital-money-bits/	0.00362019
913	NuShares	https://coinmarketcap.com/currencies/nushares/	0.00677824
914	Bismuth	https://coinmarketcap.com/currencies/bismuth/	2.28706
915	Starbase	https://coinmarketcap.com/currencies/starbase/	0.0638108
916	Hacken	https://coinmarketcap.com/currencies/hacken/	3.17338
917	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.0521462
918	Prospectors Gold	https://coinmarketcap.com/currencies/prospectors-gold/	0.107142
919	CHIPS	https://coinmarketcap.com/currencies/chips/	0.297865
920	vSlice	https://coinmarketcap.com/currencies/vslice/	0.164757
921	Virtacoin	https://coinmarketcap.com/currencies/virtacoin/	0.00102605
922	Blockpool	https://coinmarketcap.com/currencies/blockpool/	0.237551
923	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel/	0.0770254
924	LuckChain	https://coinmarketcap.com/currencies/luckchain/	0.00500665
925	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	0.000220379
926	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.155174
927	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.322259
928	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	1.05451
929	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	7.70254e-05
930	FIMKrypto	https://coinmarketcap.com/currencies/fimkrypto/	0.00478624
931	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	9.64609e-05
932	Ultimate Secu...	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.18807
933	Etheriya	https://coinmarketcap.com/currencies/etheriya/	1.12534
934	Ethereum Movi...	https://coinmarketcap.com/currencies/ethereum-movie-venture/	0.218058
935	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.016865
936	Rustbits	https://coinmarketcap.com/currencies/rustbits/	0.039291
937	ShadowCash	https://coinmarketcap.com/currencies/shadowcash/	0.205495
938	Rasputin Onli...	https://coinmarketcap.com/currencies/rasputin-online-coin/	1.23796
939	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.380428
940	Shorty	https://coinmarketcap.com/currencies/shorty/	0.0119005
941	MetalCoin	https://coinmarketcap.com/currencies/metalcoin/	0.013813
942	Halcyon	https://coinmarketcap.com/currencies/halcyon/	0.187711
943	InPay	https://coinmarketcap.com/currencies/inpay/	0.102667
944	UltraCoin	https://coinmarketcap.com/currencies/ultracoin/	0.0222603
945	Universe	https://coinmarketcap.com/currencies/universe/	0.0637524
946	QubitCoin	https://coinmarketcap.com/currencies/qubitcoin/	0.0039283
947	BitBar	https://coinmarketcap.com/currencies/bitbar/	27.0009
948	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.0016269
949	GAIA	https://coinmarketcap.com/currencies/gaia/	0.0368181
950	Woodcoin	https://coinmarketcap.com/currencies/woodcoin/	0.103984
951	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.0362019
952	HitCoin	https://coinmarketcap.com/currencies/hitcoin/	7.0836e-05
953	Bitcurrency	https://coinmarketcap.com/currencies/bitcurrency/	0.00453351
954	HoboNickels	https://coinmarketcap.com/currencies/hobonickels/	0.0119389
955	Janus	https://coinmarketcap.com/currencies/janus/	0.0323362
956	WavesGo	https://coinmarketcap.com/currencies/wavesgo/	0.0752564
957	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.0449809
958	Flycoin	https://coinmarketcap.com/currencies/flycoin/	3.185
959	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.0131713
960	Prototanium	https://coinmarketcap.com/currencies/prototanium/	3.30285
961	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.00984621
962	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	0.00962818
963	Tattoocoin (S...	https://coinmarketcap.com/currencies/tattoocoin/	0.0065724
964	MaxCoin	https://coinmarketcap.com/currencies/maxcoin/	0.00956287
965	Joincoin	https://coinmarketcap.com/currencies/joincoin/	0.18902
966	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.0048508
967	Chronos	https://coinmarketcap.com/currencies/chronos/	0.00747146
968	Bitz	https://coinmarketcap.com/currencies/bitz/	0.276261
969	AmberCoin	https://coinmarketcap.com/currencies/ambercoin/	0.0123963
970	Signatum	https://coinmarketcap.com/currencies/signatum/	0.00495852
971	LiteBar	https://coinmarketcap.com/currencies/litebar/	0.608424
972	Truckcoin	https://coinmarketcap.com/currencies/truckcoin/	0.00308102
973	iCoin	https://coinmarketcap.com/currencies/icoin/	0.0176382
974	Cashcoin	https://coinmarketcap.com/currencies/cashcoin/	0.0107065
975	Colossuscoin V2	https://coinmarketcap.com/currencies/colossuscoin-v2/	0.000212508
976	KushCoin	https://coinmarketcap.com/currencies/kushcoin/	0.0904278
977	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.0412086
978	Sativacoin	https://coinmarketcap.com/currencies/sativacoin/	0.0682445
979	Mineum	https://coinmarketcap.com/currencies/mineum/	0.0502206
980	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.00924305
981	BlockPay	https://coinmarketcap.com/currencies/blockpay/	0.0835916
982	Tigercoin	https://coinmarketcap.com/currencies/tigercoin/	0.0100903
983	Valorbit	https://coinmarketcap.com/currencies/valorbit/	7.0836e-05
984	Marscoin	https://coinmarketcap.com/currencies/marscoin/	0.015251
985	Onix	https://coinmarketcap.com/currencies/onix/	0.0154051
986	WayGuide	https://coinmarketcap.com/currencies/wayguide/	0.00417933
987	Gapcoin	https://coinmarketcap.com/currencies/gapcoin/	0.0325817
988	GlobalCoin	https://coinmarketcap.com/currencies/globalcoin/	0.00623357
989	Bankcoin	https://coinmarketcap.com/currencies/bankcoin/	0.0375047
990	RevolverCoin	https://coinmarketcap.com/currencies/revolvercoin/	0.0169456
991	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.0174954
992	VirtualCoin	https://coinmarketcap.com/currencies/virtualcoin/	0.036279
993	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.00508368
994	PX	https://coinmarketcap.com/currencies/px/	0.0035418
995	GoldReserve	https://coinmarketcap.com/currencies/goldreserve/	0.0201036
996	Xios	https://coinmarketcap.com/currencies/xios/	0.160268
997	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.00593096
998	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.0039283
999	GameUnits	https://coinmarketcap.com/currencies/gameunits/	0.0882711
1000	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.0157902
1001	Virtacoinplus	https://coinmarketcap.com/currencies/virtacoinplus/	0.0273616
1002	Cypher	https://coinmarketcap.com/currencies/cypher/	0.0459726
1003	Mincoin	https://coinmarketcap.com/currencies/mincoin/	0.0684212
1004	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.0460905
1005	SatoshiMadness	https://coinmarketcap.com/currencies/satoshimadness/	0.000141672
1006	BTSR	https://coinmarketcap.com/currencies/btsr/	0.0830731
1007	Catcoin	https://coinmarketcap.com/currencies/catcoin/	0.0433225
1008	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.3999
1009	Trident Group	https://coinmarketcap.com/currencies/trident/	0.30779
1010	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.0277677
1011	Honey	https://coinmarketcap.com/currencies/honey/	0.598092
1012	Quatloo	https://coinmarketcap.com/currencies/quatloo/	0.0309556
1013	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	0.0376848
1014	CacheCoin	https://coinmarketcap.com/currencies/cachecoin/	0.0537359
1015	RonPaulCoin	https://coinmarketcap.com/currencies/ronpaulcoin/	0.231207
1016	QuazarCoin	https://coinmarketcap.com/currencies/quazarcoin/	0.0307252
1017	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.00233759
1018	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.00675954
1019	SproutsExtreme	https://coinmarketcap.com/currencies/sproutsextreme/	7.0836e-05
1020	StarCash Network	https://coinmarketcap.com/currencies/starcash-network/	0.226214
1021	Digital Rupees	https://coinmarketcap.com/currencies/digital-rupees/	0.000384065
1022	Franko	https://coinmarketcap.com/currencies/franko/	0.210383
1023	Bitcoin Planet	https://coinmarketcap.com/currencies/bitcoin-planet/	0.0304947
1024	GPU Coin	https://coinmarketcap.com/currencies/gpu-coin/	0.00453196
1025	Darsek	https://coinmarketcap.com/currencies/darsek/	0.0107538
1026	Yellow Token	https://coinmarketcap.com/currencies/yellow-token/	0.0152725
1027	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.8642
1028	CompuCoin	https://coinmarketcap.com/currencies/compucoin/	0.00914074
1029	Firecoin	https://coinmarketcap.com/currencies/firecoin/	1.77728
1030	Neuro	https://coinmarketcap.com/currencies/neuro/	0.00368702
1031	IslaCoin	https://coinmarketcap.com/currencies/islacoin/	0.113338
1032	Cannation	https://coinmarketcap.com/currencies/cannation/	0.0691827
1033	Virta Unique ...	https://coinmarketcap.com/currencies/virta-unique-coin/	0.00273509
1034	SOILcoin	https://coinmarketcap.com/currencies/soilcoin/	0.0293426
1035	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.0339513
1036	SACoin	https://coinmarketcap.com/currencies/sacoin/	0.0231207
1037	Acoin	https://coinmarketcap.com/currencies/acoin/	0.132886
1038	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	0.00522328
1039	BipCoin	https://coinmarketcap.com/currencies/bipcoin/	0.0921756
1040	Bolenum	https://coinmarketcap.com/currencies/bolenum/	0.0149463
1041	Enigma	https://coinmarketcap.com/currencies/enigma/	0.261173
1042	BitAsean	https://coinmarketcap.com/currencies/bitasean/	0.02856
1043	Flaxscript	https://coinmarketcap.com/currencies/flaxscript/	0.0249642
1044	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.0817188
1045	Debitcoin	https://coinmarketcap.com/currencies/debitcoin/	0.0076813
1046	Yacoin	https://coinmarketcap.com/currencies/yacoin/	0.00113338
1047	Comet	https://coinmarketcap.com/currencies/comet/	0.156314
1048	Bitcedi	https://coinmarketcap.com/currencies/bitcedi/	0.0236584
1049	Impact	https://coinmarketcap.com/currencies/impact/	0.00122901
1050	Gold Pressed ...	https://coinmarketcap.com/currencies/gold-pressed-latinum/	0.523864
1051	Money	https://coinmarketcap.com/currencies/money/	0.00291889
1052	Veltor	https://coinmarketcap.com/currencies/veltor/	0.239638
1053	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.167537
1054	Sojourn	https://coinmarketcap.com/currencies/sojourn/	0.268055
1055	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.0162167
1056	Jewels	https://coinmarketcap.com/currencies/jewels/	0.00630441
1057	AntiBitcoin	https://coinmarketcap.com/currencies/antibitcoin/	0.00675547
1058	Remicoin	https://coinmarketcap.com/currencies/remicoin/	0.0612199
1059	SecretCoin	https://coinmarketcap.com/currencies/secretcoin/	0.0257135
1060	CoExistCoin	https://coinmarketcap.com/currencies/coexistcoin/	0.00391746
1061	Jin Coin	https://coinmarketcap.com/currencies/jin-coin/	0.0103697
1062	Braincoin	https://coinmarketcap.com/currencies/braincoin/	0.00998788
1063	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.00481685
1064	HempCoin	https://coinmarketcap.com/currencies/hempcoin-hmp/	7.0836e-05
1065	Speedcash	https://coinmarketcap.com/currencies/speedcash/	0.354889
1066	ZetaMicron	https://coinmarketcap.com/currencies/zetamicron/	0.000153626
1067	Asiadigicoin	https://coinmarketcap.com/currencies/asiadigicoin/	0.0035334
1068	Californium	https://coinmarketcap.com/currencies/californium/	0.0360555
1069	Printerium	https://coinmarketcap.com/currencies/printerium/	0.00729723
1070	VectorAI	https://coinmarketcap.com/currencies/vector/	0.0051002
1071	ARbit	https://coinmarketcap.com/currencies/arbit/	0.0100587
1072	Metal Music Coin	https://coinmarketcap.com/currencies/metal-music-coin/	0.000991705
1073	BillaryCoin	https://coinmarketcap.com/currencies/billarycoin/	0.00878367
1074	HealthyWormCoin	https://coinmarketcap.com/currencies/healthywormcoin/	0.000691317
1075	DAPPSTER	https://coinmarketcap.com/currencies/dappster/	0.000779197
1076	CryptoEscudo	https://coinmarketcap.com/currencies/cryptoescudo/	0.000537691
1077	VIP Tokens	https://coinmarketcap.com/currencies/vip-tokens/	0.000920869
1078	PIECoin	https://coinmarketcap.com/currencies/piecoin/	0.00680026
1079	WARP	https://coinmarketcap.com/currencies/warp/	0.0668199
1080	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.00668273
1081	Artex Coin	https://coinmarketcap.com/currencies/artex-coin/	0.00380869
1082	GBCGoldCoin	https://coinmarketcap.com/currencies/gbcgoldcoin/	0.00627023
1083	MindCoin	https://coinmarketcap.com/currencies/mindcoin/	0.00446267
1084	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.0286886
1085	Shilling	https://coinmarketcap.com/currencies/shilling/	0.0120421
1086	CryptoWorldX ...	https://coinmarketcap.com/currencies/cryptoworldx-token/	0.00113338
1087	Iconic	https://coinmarketcap.com/currencies/iconic/	0.111992
1088	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.0104837
1089	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.00375431
1090	BOAT	https://coinmarketcap.com/currencies/doubloon/	0.00345658
1091	EGO	https://coinmarketcap.com/currencies/ego/	0.00106254
1092	TAGRcoin	https://coinmarketcap.com/currencies/tagrcoin/	0.00155839
1093	Tychocoin	https://coinmarketcap.com/currencies/tychocoin/	0.0118292
1094	Ripto Bux	https://coinmarketcap.com/currencies/ripto-bux/	0.000153626
1095	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.0667984
1096	Ride My Car	https://coinmarketcap.com/currencies/ride-my-car/	0.000566688
1097	Uro	https://coinmarketcap.com/currencies/uro/	0.0468226
1098	Credence Coin	https://coinmarketcap.com/currencies/credence-coin/	0.0163372
1099	Pulse	https://coinmarketcap.com/currencies/pulse/	0.00389598
1100	Slevin	https://coinmarketcap.com/currencies/slevin/	0.00076813
1101	AnarchistsPrime	https://coinmarketcap.com/currencies/anarchistsprime/	0.0113495
1102	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.273002
1103	Unrealcoin	https://coinmarketcap.com/currencies/unrealcoin/	0.00694193
1104	Orlycoin	https://coinmarketcap.com/currencies/orlycoin/	0.00127505
1105	Torcoin	https://coinmarketcap.com/currencies/torcoin-tor/	0.14341
1106	Blackstar	https://coinmarketcap.com/currencies/blackstar/	7.0836e-05
1107	LetItRide	https://coinmarketcap.com/currencies/letitride/	0.00120421
1108	OsmiumCoin	https://coinmarketcap.com/currencies/osmiumcoin/	0.0473023
1109	PosEx	https://coinmarketcap.com/currencies/posex/	0.0162923
1110	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.00715444
1111	G3N	https://coinmarketcap.com/currencies/genstake/	0.00524187
1112	KingN Coin	https://coinmarketcap.com/currencies/kingn-coin/	19.6775
1113	JobsCoin	https://coinmarketcap.com/currencies/jobscoin/	0.00035418
1114	Steps	https://coinmarketcap.com/currencies/steps/	0.00198341
1115	Zonecoin	https://coinmarketcap.com/currencies/zonecoin/	0.0140964
1116	ImpulseCoin	https://coinmarketcap.com/currencies/impulsecoin/	0.0017709
1117	BiosCrypto	https://coinmarketcap.com/currencies/bios-crypto/	0.00170007
1118	AgrolifeCoin	https://coinmarketcap.com/currencies/agrolifecoin/	0.0041479
1119	FuturXe	https://coinmarketcap.com/currencies/futurexe/	0.143951
1120	Destiny	https://coinmarketcap.com/currencies/destiny/	0.0204716
1121	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.00311679
1122	Xonecoin	https://coinmarketcap.com/currencies/xonecoin/	0.077778
1123	RSGPcoin	https://coinmarketcap.com/currencies/rsgpcoin/	18.4178
1124	iBank	https://coinmarketcap.com/currencies/ibank/	0.00672942
1125	CRTCoin	https://coinmarketcap.com/currencies/crtcoin/	0.368702
1126	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.016859
1127	BioBar	https://coinmarketcap.com/currencies/biobar/	0.0279094
1128	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.00155839
1129	Rawcoin	https://coinmarketcap.com/currencies/rawcoin2/	0.0311324
1130	Elysium	https://coinmarketcap.com/currencies/elysium/	0.00483922
1131	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.0136714
1132	SydPak	https://coinmarketcap.com/currencies/sydpak/	0.114816
1133	P7Coin	https://coinmarketcap.com/currencies/p7coin/	0.000495852
1134	Project-X	https://coinmarketcap.com/currencies/project-x/	218773.0
1135	Litecred	https://coinmarketcap.com/currencies/litecred/	0.000537691
1136	Antilitecoin	https://coinmarketcap.com/currencies/antilitecoin/	0.000495852
1137	Coimatic 2.0	https://coinmarketcap.com/currencies/coimatic-2/	0.00115219
1138	Concoin	https://coinmarketcap.com/currencies/concoin/	0.0188986
1139	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.00406642
1140	Magnum	https://coinmarketcap.com/currencies/magnum/	0.00268845
1141	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.219946
1142	NodeCoin	https://coinmarketcap.com/currencies/nodecoin/	0.00580856
1143	Ulatech	https://coinmarketcap.com/currencies/ulatech/	0.0440138
1144	Selfiecoin	https://coinmarketcap.com/currencies/selfiecoin/	7.0836e-05
1145	CCMiner	https://coinmarketcap.com/currencies/ccminer/	0.00192737
1146	Digital Credits	https://coinmarketcap.com/currencies/digital-credits/	0.000425016
1147	PizzaCoin	https://coinmarketcap.com/currencies/pizzacoin/	0.00153626
1148	Ebittree Coin	https://coinmarketcap.com/currencies/ebittree-coin/	0.000921756
1149	Abncoin	https://coinmarketcap.com/currencies/abncoin/	0.0163612
1150	AppleCoin	https://coinmarketcap.com/currencies/applecoin-apw/	7.6813e-05
1151	ATMCoin	https://coinmarketcap.com/currencies/atmcoin/	7.47352
1152	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	1.30035
1153	Elastos	https://coinmarketcap.com/currencies/elastos/	52.5472
1154	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.00371681
1155	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.0743323
1156	True Chain	https://coinmarketcap.com/currencies/true-chain/	0.765041
1157	EDUCare	https://coinmarketcap.com/currencies/educare/	0.123069
1158	DATA	https://coinmarketcap.com/currencies/data/	0.0206374
1159	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.0686408
1160	STK	https://coinmarketcap.com/currencies/stk/	0.20557
1161	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.554882
1162	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.0110734
1163	TopChain	https://coinmarketcap.com/currencies/topchain/	0.0536952
1164	Ruff	https://coinmarketcap.com/currencies/ruff/	0.104339
1165	Acute Angle C...	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.162027
1166	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.0605203
1167	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.378821
1168	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.0301538
1169	Electronic PK...	https://coinmarketcap.com/currencies/electronic-pk-chain/	0.127573
1170	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.267522
1171	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.333303
1172	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.353392
1173	Lightning Bit...	https://coinmarketcap.com/currencies/lightning-bitcoin/	392.092
1174	Nework	https://coinmarketcap.com/currencies/nework/	0.0506735
1175	Zilla	https://coinmarketcap.com/currencies/zilla/	0.283219
1176	LightChain	https://coinmarketcap.com/currencies/lightchain/	0.00359606
1177	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.0756065
1178	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	32.0287
1179	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	53.7522
1180	Yee	https://coinmarketcap.com/currencies/yee/	0.0237708
1181	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.0913223
1182	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.0794417
1183	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	67.0913
1184	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.0471378
1185	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.00857501
1186	CRYPTO20	https://coinmarketcap.com/currencies/c20/	2.1131
1187	HalalChain	https://coinmarketcap.com/currencies/halalchain/	0.330077
1188	Tezos (Pre-La...	https://coinmarketcap.com/currencies/tezos/	2.48261
1189	Show	https://coinmarketcap.com/currencies/show/	0.0052693
1190	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	20.7103
1191	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.0505288
1192	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.310913
1193	Kcash	https://coinmarketcap.com/currencies/kcash/	0.166487
1194	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.089967
1195	RealChain	https://coinmarketcap.com/currencies/realchain/	0.0847815
1196	Rebellious	https://coinmarketcap.com/currencies/rebellious/	0.0679793
1197	PressOne	https://coinmarketcap.com/currencies/pressone/	0.631817
1198	CFun	https://coinmarketcap.com/currencies/cfun/	0.0257209
1199	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.235527
1200	Fargocoin	https://coinmarketcap.com/currencies/fargocoin/	8.58437
1201	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.57615
1202	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	1.16848
1203	AWARE	https://coinmarketcap.com/currencies/aware/	0.0265517
1204	Bottos	https://coinmarketcap.com/currencies/bottos/	0.118354
1205	ENTCash	https://coinmarketcap.com/currencies/entcash/	0.106132
1206	Qube	https://coinmarketcap.com/currencies/qube/	0.07063
1207	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.0856007
1208	Polymath Network	https://coinmarketcap.com/currencies/polymath-network/	0.766631
1209	CargoX	https://coinmarketcap.com/currencies/cargox/	0.106722
1210	UG Token	https://coinmarketcap.com/currencies/ug-token/	0.72546
1211	Matrix AI Net...	https://coinmarketcap.com/currencies/matrix-ai-network/	0.526197
1212	DavorCoin	https://coinmarketcap.com/currencies/davorcoin/	0.0812681
1213	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	1.14867
1214	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.188537
1215	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.295214
1216	StarChain	https://coinmarketcap.com/currencies/starchain/	0.107425
1217	Iungo	https://coinmarketcap.com/currencies/iungo/	0.276885
1218	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.0737809
1219	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.0878606
1220	ATN	https://coinmarketcap.com/currencies/atn/	1.27493
1221	ugChain	https://coinmarketcap.com/currencies/ugchain/	0.0961368
1222	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.114472
1223	RefToken	https://coinmarketcap.com/currencies/reftoken/	19.2114
1224	SegWit2x	https://coinmarketcap.com/currencies/segwit2x/	10.1073
1225	Titanium Bloc...	https://coinmarketcap.com/currencies/titanium-blockchain/	1.1516
1226	Read	https://coinmarketcap.com/currencies/read/	0.0333127
1227	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.0604447
1228	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.267664
1229	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	1.47645
1230	POLY AI	https://coinmarketcap.com/currencies/poly-ai/	4.99291
1231	Measurable Da...	https://coinmarketcap.com/currencies/measurable-data-token/	0.100628
1232	BitSoar	https://coinmarketcap.com/currencies/bitsoar/	0.190266
1233	ShareX	https://coinmarketcap.com/currencies/sharex/	0.0252122
1234	adbank	https://coinmarketcap.com/currencies/adbank/	0.0245894
1235	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.630135
1236	Content and A...	https://coinmarketcap.com/currencies/content-and-ad-network/	0.0327517
1237	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.07586
1238	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	4.40751
1239	MOAC	https://coinmarketcap.com/currencies/moac/	12.192
1240	Mobius	https://coinmarketcap.com/currencies/mobius/	0.179625
1241	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.0244919
1242	Filecoin [Fut...	https://coinmarketcap.com/currencies/filecoin/	19.3874
1243	Health Mutual...	https://coinmarketcap.com/currencies/health-mutual-society/	0.054517
1244	Bitcoin Light...	https://coinmarketcap.com/currencies/bitcoin-lightning/	5.98734
1245	Mixin	https://coinmarketcap.com/currencies/mixin/	891.625
1246	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	1.17247
1247	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	1.05396
1248	TerraNova	https://coinmarketcap.com/currencies/terranova/	25.1778
1249	aXpire	https://coinmarketcap.com/currencies/axpire/	0.0635195
1250	iQuant	https://coinmarketcap.com/currencies/iquant/	0.121222
1251	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.115874
1252	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.00686191
1253	Speed Mining ...	https://coinmarketcap.com/currencies/speed-mining-service/	47.6294
1254	Numus	https://coinmarketcap.com/currencies/numus/	6.1883
1255	Bitcoin White	https://coinmarketcap.com/currencies/bitcoin-white/	0.270596
1256	InsurePal	https://coinmarketcap.com/currencies/insurepal/	0.170521
1257	InfChain	https://coinmarketcap.com/currencies/infchain/	0.00704401
1258	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.051977
1259	Candy	https://coinmarketcap.com/currencies/candy/	0.000916806
1260	WETH	https://coinmarketcap.com/currencies/weth/	753.781
1261	Crypterium	https://coinmarketcap.com/currencies/crypterium/	0.724837
1262	ZenGold	https://coinmarketcap.com/currencies/zengold/	0.0474704
1263	Travelflex	https://coinmarketcap.com/currencies/travelflex/	0.119944
1264	EtherDelta Token	https://coinmarketcap.com/currencies/etherdelta-token/	0.034381
1265	Swisscoin	https://coinmarketcap.com/currencies/swisscoin/	0.00184351
1266	Infinity Econ...	https://coinmarketcap.com/currencies/infinity-economics/	0.0125973
1267	CryptopiaFeeS...	https://coinmarketcap.com/currencies/cryptopiafeeshares/	2456.78
1268	MergeCoin	https://coinmarketcap.com/currencies/mergecoin/	0.0436298
1269	Maggie	https://coinmarketcap.com/currencies/maggie/	0.0304665
1270	StrongHands	https://coinmarketcap.com/currencies/stronghands/	1.16724e-06
1271	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.012
1272	Smartlands	https://coinmarketcap.com/currencies/smartlands/	1.74889
1273	Bankex	https://coinmarketcap.com/currencies/bankex/	0.850824
1274	Nitro	https://coinmarketcap.com/currencies/nitro/	0.330796
1275	Ignition	https://coinmarketcap.com/currencies/ignition/	12.3268
1276	Vezt	https://coinmarketcap.com/currencies/vezt/	0.230954
1277	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.129522
1278	Monero Gold	https://coinmarketcap.com/currencies/monero-gold/	0.000153626
1279	Matryx	https://coinmarketcap.com/currencies/matryx/	0.850277
1280	Tokugawa	https://coinmarketcap.com/currencies/tokugawa/	1.96726
1281	TimesCoin	https://coinmarketcap.com/currencies/timescoin/	0.883349
1282	CoffeeCoin	https://coinmarketcap.com/currencies/coffeecoin/	0.00330296
1283	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.0207273
1284	Pareto Network	https://coinmarketcap.com/currencies/pareto-network/	0.0375341
1285	Decentralized...	https://coinmarketcap.com/currencies/decentralized-universal-basic-income/	107.037
1286	Sparks	https://coinmarketcap.com/currencies/sparks/	3.41264
1287	B3Coin	https://coinmarketcap.com/currencies/b3coin/	0.0154394
1288	StrikeBitClub	https://coinmarketcap.com/currencies/strikebitclub/	0.053385
1289	Pabyosi Coin ...	https://coinmarketcap.com/currencies/pabyosi-coin-special/	0.147849
1290	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.222437
1291	Harvest Maste...	https://coinmarketcap.com/currencies/harvest-masternode-coin/	1.10926
1292	President Trump	https://coinmarketcap.com/currencies/president-trump/	0.0569819
1293	Sphre AIR	https://coinmarketcap.com/currencies/sphre-air/	0.210887
1294	MSD	https://coinmarketcap.com/currencies/msd/	0.00560604
1295	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	0.000120996
1296	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.611204
1297	BT2 [CST]	https://coinmarketcap.com/currencies/bt2-cst/	57.1437
1298	EA Coin	https://coinmarketcap.com/currencies/ea-coin/	0.785913
1299	Golos Gold	https://coinmarketcap.com/currencies/golos-gold/	0.0945851
1300	Galactrum	https://coinmarketcap.com/currencies/galactrum/	3.07252
1301	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	45.3032
1302	GOLD Reward T...	https://coinmarketcap.com/currencies/gold-reward-token/	0.0732021
1303	VPNCoin	https://coinmarketcap.com/currencies/vpncoin/	0.00269589
1304	Crave	https://coinmarketcap.com/currencies/crave/	0.425884
1305	Equal	https://coinmarketcap.com/currencies/equal/	0.00387211
1306	MarxCoin	https://coinmarketcap.com/currencies/marxcoin/	0.00261886
1307	WeAreSatoshi	https://coinmarketcap.com/currencies/wearesatoshi/	0.0097052
1308	Bitair	https://coinmarketcap.com/currencies/bitair/	0.00364995
1309	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	1.15063
1310	Kzcash	https://coinmarketcap.com/currencies/kzcash/	3.73211
1311	Sakuracoin	https://coinmarketcap.com/currencies/sakuracoin/	0.00469855
1312	Zap	https://coinmarketcap.com/currencies/zap/	0.265612
1313	FlappyCoin	https://coinmarketcap.com/currencies/flappycoin/	1.18422e-05
1314	Sand Coin	https://coinmarketcap.com/currencies/sand-coin/	1.83057
1315	NamoCoin	https://coinmarketcap.com/currencies/namocoin/	0.000385006
1316	Wowcoin	https://coinmarketcap.com/currencies/wowcoin/	7.68205e-05
1317	CORION	https://coinmarketcap.com/currencies/corion/	0.436503
1318	Sense	https://coinmarketcap.com/currencies/sense/	0.0380373
1319	OX Fina	https://coinmarketcap.com/currencies/ox-fina/	0.000924659
1320	United Trader...	https://coinmarketcap.com/currencies/uttoken/	0.7078
1321	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	3863.84
1322	TechShares	https://coinmarketcap.com/currencies/techshares/	0.367083
1323	GameChain System	https://coinmarketcap.com/currencies/gamechain/	0.0201589
1324	Cyder	https://coinmarketcap.com/currencies/cyder/	0.00831874
1325	Vulcano	https://coinmarketcap.com/currencies/vulcano/	0.00677824
1326	Cloud	https://coinmarketcap.com/currencies/cloud/	0.0706813
1327	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.0441356
1328	WA Space	https://coinmarketcap.com/currencies/wa-space/	0.0154051
1329	Animecoin	https://coinmarketcap.com/currencies/animecoin/	0.00177158
1330	BitSerial	https://coinmarketcap.com/currencies/bitserial/	0.0782662
1331	Safe Trade Coin	https://coinmarketcap.com/currencies/safe-trade-coin/	0.00100133
1332	NEO GOLD	https://coinmarketcap.com/currencies/neo-gold/	0.00702693
1333	Royalties	https://coinmarketcap.com/currencies/royalties/	0.000154051
1334	IrishCoin	https://coinmarketcap.com/currencies/irishcoin/	0.0133254
1335	Internet of T...	https://coinmarketcap.com/currencies/internet-of-things/	619.099
1336	Cubits	https://coinmarketcap.com/currencies/cubits/	0.00539178
1337	Storjcoin X	https://coinmarketcap.com/currencies/storjcoin-x/	0.985709
1338	Musiconomi	https://coinmarketcap.com/currencies/musiconomi/	0.084882
1339	DeusCoin	https://coinmarketcap.com/currencies/deuscoin/	0.146348
1340	TeslaCoilCoin	https://coinmarketcap.com/currencies/teslacoilcoin/	0.99332
1341	President Joh...	https://coinmarketcap.com/currencies/president-johnson/	0.119004
1342	Escroco	https://coinmarketcap.com/currencies/escoro/	0.616665
1343	SISA	https://coinmarketcap.com/currencies/sisa/	0.0149112
1344	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.00146348
1345	HODL Bucks	https://coinmarketcap.com/currencies/hodl-bucks/	0.141804
1346	Donationcoin	https://coinmarketcap.com/currencies/donationcoin/	0.00184861
1347	Runners	https://coinmarketcap.com/currencies/runners/	0.000462152
1348	Francs	https://coinmarketcap.com/currencies/francs/	0.0650865
1349	Regacoin	https://coinmarketcap.com/currencies/regacoin/	0.00238779
1350	SHACoin	https://coinmarketcap.com/currencies/shacoin/	0.0048526
1351	SIGMAcoin	https://coinmarketcap.com/currencies/sigmacoin/	0.045907
1352	Akuya Coin	https://coinmarketcap.com/currencies/akuya-coin/	0.0198726
1353	Protean	https://coinmarketcap.com/currencies/protean/	6.40214e-05
1354	Macro	https://coinmarketcap.com/currencies/macro1/	0.8446
1355	LandCoin	https://coinmarketcap.com/currencies/landcoin/	0.0123962
1356	Minex	https://coinmarketcap.com/currencies/minex/	0.0189443
1357	Swapcoin	https://coinmarketcap.com/currencies/swapcoin/	0.244837
1358	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel-eth/	0.0679998
1359	Zilbercoin	https://coinmarketcap.com/currencies/zilbercoin/	0.0397351
1360	KlondikeCoin	https://coinmarketcap.com/currencies/klondikecoin/	0.0266508
1361	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	7.70254e-05
1362	Bitcoin Silver	https://coinmarketcap.com/currencies/bitcoin-silver/	0.00485237
1363	BestChain	https://coinmarketcap.com/currencies/bestchain/	0.00770254
1364	UR	https://coinmarketcap.com/currencies/ur/	0.00231076
1365	India Coin	https://coinmarketcap.com/currencies/india-coin/	0.000924305
1366	FAPcoin	https://coinmarketcap.com/currencies/fapcoin/	0.00287355
1367	T-coin	https://coinmarketcap.com/currencies/t-coin/	0.000152355
1368	Fazzcoin	https://coinmarketcap.com/currencies/fazzcoin/	0.0655381
1369	Peacecoin	https://coinmarketcap.com/currencies/peacecoin/	0.01502
1370	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.184393
1371	NumusCash	https://coinmarketcap.com/currencies/numuscash/	0.000231076
1372	MobileCash	https://coinmarketcap.com/currencies/mobilecash/	0.000385127
1373	DynamicCoin	https://coinmarketcap.com/currencies/dynamiccoin/	0.00301806
1374	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.0659337
1375	PinkDog	https://coinmarketcap.com/currencies/pinkdog/	0.000231076
1376	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	1.92826e-05
1377	LiteCoin Gold	https://coinmarketcap.com/currencies/litecoin-gold/	0.00256238
1378	Golfcoin	https://coinmarketcap.com/currencies/golfcoin/	0.000231076
1379	High Gain	https://coinmarketcap.com/currencies/high-gain/	0.000462152
1380	GlassCoin	https://coinmarketcap.com/currencies/glasscoin/	0.300399
1381	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.0985101
1382	Wi Coin	https://coinmarketcap.com/currencies/wi-coin/	0.00300986
1383	Bitcoin2x	https://coinmarketcap.com/currencies/bitcoin2x/	0.00535429
1384	Blockchain Index	https://coinmarketcap.com/currencies/blockchain-index/	3.52719
1385	UAHPay	https://coinmarketcap.com/currencies/uahpay/	6.80954e-05
1386	Sharkcoin	https://coinmarketcap.com/currencies/sharkcoin/	0.0048526
1387	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.777703
1388	Compcoin	https://coinmarketcap.com/currencies/compcoin/	11.5538
1389	Avoncoin	https://coinmarketcap.com/currencies/avoncoin/	0.000693229
1390	PlexCoin	https://coinmarketcap.com/currencies/plexcoin/	0.0282182
1391	Elacoin	https://coinmarketcap.com/currencies/elacoin/	0.355087
1392	Halloween Coin	https://coinmarketcap.com/currencies/halloween-coin/	0.000385129
1393	iBTC	https://coinmarketcap.com/currencies/ibtc/	0.00275442
1394	Antimatter	https://coinmarketcap.com/currencies/antimatter/	0.000154051
1395	Birds	https://coinmarketcap.com/currencies/birds/	0.000539178
1396	Dutch Coin	https://coinmarketcap.com/currencies/dutch-coin/	0.00084728
1397	TurboCoin	https://coinmarketcap.com/currencies/turbocoin/	0.000154051
1398	Pirate Blocks	https://coinmarketcap.com/currencies/pirate-blocks/	0.00431342
1399	STEX	https://coinmarketcap.com/currencies/stex/	2.21175
1400	AlpaCoin	https://coinmarketcap.com/currencies/alpacoin/	0.00801064
1401	Alphabit	https://coinmarketcap.com/currencies/alphabitcoinfund/	72.0111
1402	Magnetcoin	https://coinmarketcap.com/currencies/magnetcoin/	0.393369
1403	Bastonet	https://coinmarketcap.com/currencies/bastonet/	0.00084728
1404	Tellurion	https://coinmarketcap.com/currencies/tellurion/	0.000920399
1405	eUSD	https://coinmarketcap.com/currencies/eusd/	0.000535582
1406	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.0119059
1407	Natcoin	https://coinmarketcap.com/currencies/natcoin/	0.0137317
1408	Fonziecoin	https://coinmarketcap.com/currencies/fonziecoin/	0.00192564
1409	TopCoin	https://coinmarketcap.com/currencies/topcoin/	0.00215671
1410	Jiyo	https://coinmarketcap.com/currencies/jiyo/	0.0269589
1411	ZSEcoin	https://coinmarketcap.com/currencies/zsecoin/	0.0259262
1412	Aseancoin	https://coinmarketcap.com/currencies/aseancoin/	0.00916602
1413	XTD Coin	https://coinmarketcap.com/currencies/xtd-coin/	7.70254e-05
1414	Hyper TV	https://coinmarketcap.com/currencies/hyper-tv/	0.00095104
1415	Primulon	https://coinmarketcap.com/currencies/primulon/	0.000308102
1416	Bitbase	https://coinmarketcap.com/currencies/bitbase/	0.00138646
1417	PeopleCoin	https://coinmarketcap.com/currencies/peoplecoin/	7.70254e-05
1418	Granite	https://coinmarketcap.com/currencies/granitecoin/	0.0138646
1419	GAY Money	https://coinmarketcap.com/currencies/gaycoin/	0.0327358
1420	Aces	https://coinmarketcap.com/currencies/aces/	0.00146348
1421	UniversalRoya...	https://coinmarketcap.com/currencies/universalroyalcoin/	0.00169751
1422	BetaCoin	https://coinmarketcap.com/currencies/betacoin/	0.0045445
1423	UNCoin	https://coinmarketcap.com/currencies/uncoin/	7.70254e-05
1424	eLTC	https://coinmarketcap.com/currencies/eltc/	0.000244837
1425	GoldMaxCoin	https://coinmarketcap.com/currencies/goldmaxcoin/	0.00107836
1426	Triaconta	https://coinmarketcap.com/currencies/triaconta/	17.2151
1427	First Bitcoin...	https://coinmarketcap.com/currencies/first-bitcoin-capital/	0.139955
1428	RHFCoin	https://coinmarketcap.com/currencies/rhfcoin/	0.00084728
1429	Wink	https://coinmarketcap.com/currencies/wink/	0.00523773
1430	ANRYZE	https://coinmarketcap.com/currencies/anryze/	0.012016
1431	Topaz Coin	https://coinmarketcap.com/currencies/topaz/	0.509985
1432	10M Token	https://coinmarketcap.com/currencies/10mtoken/	0.00535582
1433	Infinity Pay	https://coinmarketcap.com/currencies/infinity-pay/	0.00115227
1434	UGAIN	https://coinmarketcap.com/currencies/ugain/	0.00577691
1435	Huncoin	https://coinmarketcap.com/currencies/huncoin/	0.00154051
1436	TeraCoin	https://coinmarketcap.com/currencies/teracoin/	2.39851e-06
1437	Qora	https://coinmarketcap.com/currencies/qora/	0.238308
1438	Cash Poker Pro	https://coinmarketcap.com/currencies/cash-poker-pro/	0.0641841
1439	netBit	https://coinmarketcap.com/currencies/netbit/	0.018255
1440	Facecoin	https://coinmarketcap.com/currencies/facecoin/	0.00175212
1441	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.00192564
1442	UtaCoin	https://coinmarketcap.com/currencies/utacoin/	0.000385127
1443	Cheapcoin	https://coinmarketcap.com/currencies/cheapcoin/	0.000616203
1444	SnakeEyes	https://coinmarketcap.com/currencies/snakeeyes/	0.0193022
1445	eBIT	https://coinmarketcap.com/currencies/ebit/	0.00397861
1446	Peerguess	https://coinmarketcap.com/currencies/guess/	0.10098
1447	FutCoin	https://coinmarketcap.com/currencies/futcoin/	0.00084728
1448	eGold	https://coinmarketcap.com/currencies/egold/	0.0231076
1449	BITFID	https://coinmarketcap.com/currencies/bitfid/	0.0617744
1450	LLToken	https://coinmarketcap.com/currencies/lltoken/	?
1451	International...	https://coinmarketcap.com/currencies/international-diamond/	0.00319517
1452	Tattoocoin (L...	https://coinmarketcap.com/currencies/tattoocoin-limited/	1.97261
1453	GrandCoin	https://coinmarketcap.com/currencies/grandcoin/	7.50222e-07
1454	Karmacoin	https://coinmarketcap.com/currencies/karmacoin/	7.0836e-05
1455	Hyper	https://coinmarketcap.com/currencies/hyper/	0.0718986
1456	GameLeagueCoin	https://coinmarketcap.com/currencies/gameleaguecoin/	0.0135297
1457	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	1.90107e-05
1458	HTML5COIN	https://coinmarketcap.com/currencies/htmlcoin/	0.00148756
1459	FireFlyCoin	https://coinmarketcap.com/currencies/fireflycoin/	0.000425016
1460	Quotient	https://coinmarketcap.com/currencies/quotient/	0.00743778
1461	Voyacoin	https://coinmarketcap.com/currencies/voyacoin/	0.925685
1462	Xaucoin	https://coinmarketcap.com/currencies/xaucoin/	0.0368347
1463	TrickyCoin	https://coinmarketcap.com/currencies/trickycoin/	0.00970454
1464	CyberCoin	https://coinmarketcap.com/currencies/cybercoin/	0.000141672
1465	EggCoin	https://coinmarketcap.com/currencies/eggcoin/	0.0186299
1466	Bubble	https://coinmarketcap.com/currencies/bubble/	0.0169298
1467	ShellCoin	https://coinmarketcap.com/currencies/shellcoin/	0.0461143
1468	Dubstep	https://coinmarketcap.com/currencies/dubstep/	0.00162923
1469	Cycling Coin	https://coinmarketcap.com/currencies/cycling-coin/	0.00106254
1470	Axiom	https://coinmarketcap.com/currencies/axiom/	0.0103421
1471	DeltaCredits	https://coinmarketcap.com/currencies/deltacredits/	0.161152
1472	InvisibleCoin	https://coinmarketcap.com/currencies/invisiblecoin/	0.219437
1473	Moneta	https://coinmarketcap.com/currencies/moneta2/	0.000495852
1474	RubleBit	https://coinmarketcap.com/currencies/rublebit/	0.00920869
1475	Cashme	https://coinmarketcap.com/currencies/cashme/	0.000149989
1476	X2	https://coinmarketcap.com/currencies/x2/	0.000212508
1477	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.0449216
1478	Opescoin	https://coinmarketcap.com/currencies/opescoin/	0.00198341
1479	BitAlphaCoin	https://coinmarketcap.com/currencies/bitalphacoin/	0.00524187
1480	MMXVI	https://coinmarketcap.com/currencies/mmxvi/	0.00262093
1481	Psilocybin	https://coinmarketcap.com/currencies/psilocybin/	0.0262093
1482	PayPeer	https://coinmarketcap.com/currencies/paypeer/	7.0836e-05
1483	Operand	https://coinmarketcap.com/currencies/operand/	0.00184174
1484	TheCreed	https://coinmarketcap.com/currencies/thecreed/	0.000425016
1485	DarkLisk	https://coinmarketcap.com/currencies/darklisk/	0.00162923
1486	RichCoin	https://coinmarketcap.com/currencies/richcoin/	0.00446267
1487	PrismChain	https://coinmarketcap.com/currencies/prismchain/	0.00127505
1488	Digital Bulli...	https://coinmarketcap.com/currencies/digital-bullion-gold/	0.00224983
1489	Happy Creator...	https://coinmarketcap.com/currencies/happy-creator-coin/	7.0836e-05
1490	LinkedCoin	https://coinmarketcap.com/currencies/linkedcoin/	0.000212508
1491	FrankyWillCoin	https://coinmarketcap.com/currencies/frankywillcoin/	0.00269177
1492	PokeCoin	https://coinmarketcap.com/currencies/pokecoin/	0.000149989
1493	TodayCoin	https://coinmarketcap.com/currencies/todaycoin/	0.000566688
1494	SportsCoin	https://coinmarketcap.com/currencies/sportscoin/	0.00141672
1495	Omicron	https://coinmarketcap.com/currencies/omicron/	0.148047
1496	Lazaruscoin	https://coinmarketcap.com/currencies/lazaruscoin/	0.000974926
1497	Rcoin	https://coinmarketcap.com/currencies/rcoin/	7.0836e-05
1498	LAthaan	https://coinmarketcap.com/currencies/lathaan/	0.000495852
1499	TeamUp	https://coinmarketcap.com/currencies/teamup/	0.000327851
1500	MoneyCoin	https://coinmarketcap.com/currencies/moneycoin/	0.000141672
1501	Yescoin	https://coinmarketcap.com/currencies/yescoin/	7.0836e-05
1502	LePen	https://coinmarketcap.com/currencies/lepen/	7.0836e-05
1503	KashhCoin	https://coinmarketcap.com/currencies/kashhcoin/	7.0836e-05
1504	XDE II	https://coinmarketcap.com/currencies/xde-ii/	5.62552
1505	The Vegan Ini...	https://coinmarketcap.com/currencies/the-vegan-initiative/	0.000637524
1506	Dashs	https://coinmarketcap.com/currencies/dashs/	0.0631858
1507	Bitok	https://coinmarketcap.com/currencies/bitok/	0.000141672
1508	Rupaya [OLD]	https://coinmarketcap.com/currencies/rupaya-old/	0.00347097
1509	Faceblock	https://coinmarketcap.com/currencies/faceblock/	0.00323005
1510	Farstcoin	https://coinmarketcap.com/currencies/farstcoin/	?
1511	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	19.9367
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 1511, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

