%==========================================================================%
%
% Copyright (c) 2015 Varnerlab, 
% School of Chemical and Biomolecular Engineering, 
% Cornell University, Ithaca NY 14853 USA.
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is 
% furnished to do so, subject to the following conditions:
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
%
%
% DataFile.m was generated using the UNIVERSAL code generator system.
% Type: SUNDIALS
% Version: v1.0

%==========================================================================%

function DF = DataFile()

	% System size -
	NROWS = 780;
	NCOLS = 1674;

	% Load the stoichiometric matrix -
	% S=load('./STM.dat');
	%S = load('./STM.mat');
	%S = S.STM;
	%[NROWS,NCOLS] = size(S);
	
	% Formulate the rate constant vector k -
	k = zeros(NCOLS,1);
	
	% Parameter vector -
	k = [
		10.0	;	%	1	[] = RNAp
		1.0	;	%	2	RNAp = []
		5.0	;	%	3	[] = eIF4E
		1.0	;	%	4	eIF4E = []
		10.0	;	%	5	[] = Ribo60S
		1.0	;	%	6	Ribo60S = []
		10.0	;	%	7	[] = HSP
		1.0	;	%	8	HSP = []
		10.0	;	%	9	[] = ARPase
		1.0	;	%	10	ARPase = []
		6.0	;	%	11	[] = HER2
		2.0	;	%	12	HER2 = []
		5.0	;	%	13	[] = SHP
		1.0	;	%	14	SHP = []
		12.0	;	%	15	[] = Grb2
		1.0	;	%	16	Grb2 = []
		12.0	;	%	17	[] = Sos
		1.0	;	%	18	Sos = []
		10.0	;	%	19	[] = Ras_GDP
		1.0	;	%	20	Ras_GDP = []
		12.0	;	%	21	[] = Shc
		1.0	;	%	22	Shc = []
		10.0	;	%	23	[] = EGFR
		1.0	;	%	24	EGFR = []
		0.0	;	%	25	[] = EGF
		1.0	;	%	26	EGF = []
		10.0	;	%	27	[] = RasGAP
		1.0	;	%	28	RasGAP = []
		5.0	;	%	29	[] = ShcPase
		1.0	;	%	30	ShcPase = []
		5.0	;	%	31	[] = GABPase
		1.0	;	%	32	GABPase = []
		10.0	;	%	33	[] = GAB
		1.0	;	%	34	GAB = []
		10.0	;	%	35	[] = PI3K
		1.0	;	%	36	PI3K = []
		10.0	;	%	37	[] = PI3KPase
		1.0	;	%	38	PI3KPase = []
		10.0	;	%	39	[] = PLCg
		1.0	;	%	40	PLCg = []
		5.0	;	%	41	[] = PLCgPase
		1.0	;	%	42	PLCgPase = []
		10.0	;	%	43	[] = PIP2
		1.0	;	%	44	PIP2 = []
		10.0	;	%	45	[] = PKC
		1.0	;	%	46	PKC = []
		5.0	;	%	47	[] = PKCPase
		1.0	;	%	48	PKCPase = []
		10.0	;	%	49	[] = CK2
		1.0	;	%	50	CK2 = []
		5.0	;	%	51	[] = CK2Pase
		1.0	;	%	52	CK2Pase = []
		10.0	;	%	53	[] = RAF
		2.0	;	%	54	RAF = []
		30.0	;	%	55	[] = MEK
		2.0	;	%	56	MEK = []
		40.0	;	%	57	[] = ERK
		2.0	;	%	58	ERK = []
		5.0	;	%	59	[] = MKP1
		1.0	;	%	60	MKP1 = []
		5.0	;	%	61	[] = MKP2
		1.0	;	%	62	MKP2 = []
		5.0	;	%	63	[] = MKP3
		1.0	;	%	64	MKP3 = []
		5.0	;	%	65	[] = PP1
		1.0	;	%	66	PP1 = []
		8.0	;	%	67	[] = PP2A
		1.0	;	%	68	PP2A = []
		5.0	;	%	69	[] = SosPase
		1.0	;	%	70	SosPase = []
		10.0	;	%	71	[] = cPLA2
		1.0	;	%	72	cPLA2 = []
		5.0	;	%	73	[] = cPLA2Pase
		1.0	;	%	74	cPLA2Pase = []
		10.0	;	%	75	[] = PTEN
		1.0	;	%	76	PTEN = []
		10.0	;	%	77	[] = AKT
		1.0	;	%	78	AKT = []
		10.0	;	%	79	[] = PDK1
		1.0	;	%	80	PDK1 = []
		10.0	;	%	81	[] = TOR
		1.0	;	%	82	TOR = []
		10.0	;	%	83	[] = TORPase
		1.0	;	%	84	TORPase = []
		10.0	;	%	85	[] = TSC1
		1.0	;	%	86	TSC1 = []
		10.0	;	%	87	[] = TSC2
		1.0	;	%	88	TSC2 = []
		10.0	;	%	89	[] = Rheb_GDP
		1.0	;	%	90	Rheb_GDP = []
		5.0	;	%	91	[] = RhebGEF
		1.0	;	%	92	RhebGEF = []
		5.0	;	%	93	[] = TSCPase
		1.0	;	%	94	TSCPase = []
		10.0	;	%	95	[] = R4EBP1
		1.0	;	%	96	R4EBP1 = []
		10.0	;	%	97	[] = R4EBP1Pase
		1.0	;	%	98	R4EBP1Pase = []
		10.0	;	%	99	[] = p70
		1.0	;	%	100	p70 = []
		10.0	;	%	101	[] = Ribo40S_inact
		1.0	;	%	102	Ribo40S_inact = []
		10.0	;	%	103	[] = p70Pase
		1.0	;	%	104	p70Pase = []
		10.0	;	%	105	[] = Ribo40SPase
		1.0	;	%	106	Ribo40SPase = []
		5.0	;	%	107	[] = ETSPase
		1.0	;	%	108	ETSPase = []
		5.0	;	%	109	[] = AP1Pase
		1.0	;	%	110	AP1Pase = []
		5.0	;	%	111	[] = Sam68
		1.0	;	%	112	Sam68 = []
		5.0	;	%	113	[] = Sam68Pase
		1.0	;	%	114	Sam68Pase = []
		5.0	;	%	115	[] = CDK4
		1.0	;	%	116	CDK4 = []
		5.0	;	%	117	[] = CDK6
		1.0	;	%	118	CDK6 = []
		5.0	;	%	119	[] = Cdk2
		1.0	;	%	120	Cdk2 = []
		10.0	;	%	121	[] = CDC25APase
		1.0	;	%	122	CDC25APase = []
		5.0	;	%	123	[] = Cdk2Pase
		1.0	;	%	124	Cdk2Pase = []
		10.0	;	%	125	[] = RbPase
		1.0	;	%	126	RbPase = []
		10.0	;	%	127	[] = Import
		1.0	;	%	128	Import = []
		10.0	;	%	129	[] = Export
		1.0	;	%	130	Export = []
		0.0	;	%	131	[] = DHT
		0.01	;	%	132	DHT = []
		0.2	;	%	133	g_ETS+RNAp = g_ETS_RNAp
		5.0	;	%	134	g_ETS_RNAp = g_ETS+RNAp
		0.8	;	%	135	g_ETS_RNAp = g_ETS+RNAp+mRNA_n_ETS
		0.5	;	%	136	Export+mRNA_n_ETS = Export_mRNA_n_ETS
		2.5	;	%	137	Export_mRNA_n_ETS = Export+mRNA_n_ETS
		2.5	;	%	138	Export_mRNA_n_ETS = Export+mRNA_ETS
		0.3	;	%	139	g_AP1+RNAp = g_AP1_RNAp
		5.0	;	%	140	g_AP1_RNAp = g_AP1+RNAp
		0.8	;	%	141	g_AP1_RNAp = g_AP1+RNAp+mRNA_n_AP1
		0.7	;	%	142	g_AP1+AP1_p_n = g_AP1_AP1_p_n
		3.0	;	%	143	g_AP1_AP1_p_n = g_AP1+AP1_p_n
		0.8	;	%	144	g_AP1_AP1_p_n+RNAp = g_AP1_AP1_p_n_RNAp
		3.0	;	%	145	g_AP1_AP1_p_n_RNAp = g_AP1_AP1_p_n+RNAp
		2.0	;	%	146	g_AP1_AP1_p_n_RNAp = g_AP1+AP1_p_n+RNAp+mRNA_n_AP1
		0.5	;	%	147	Export+mRNA_n_AP1 = Export_mRNA_n_AP1
		2.5	;	%	148	Export_mRNA_n_AP1 = Export+mRNA_n_AP1
		2.5	;	%	149	Export_mRNA_n_AP1 = Export+mRNA_AP1
		0.01	;	%	150	g_CycD1+RNAp = g_CycD1_RNAp
		5.0	;	%	151	g_CycD1_RNAp = g_CycD1+RNAp
		0.1	;	%	152	g_CycD1_RNAp = g_CycD1+RNAp+mRNA_n_CycD1a
		0.5	;	%	153	g_CycD1+ETS_p_n = g_CycD1_ETS_p_n
		4.0	;	%	154	g_CycD1_ETS_p_n = g_CycD1+ETS_p_n
		2.8	;	%	155	g_CycD1_ETS_p_n+RNAp = g_CycD1_ETS_p_n_RNAp
		3.0	;	%	156	g_CycD1_ETS_p_n_RNAp = g_CycD1_ETS_p_n+RNAp
		6.0	;	%	157	g_CycD1_ETS_p_n_RNAp = g_CycD1+ETS_p_n+RNAp+mRNA_n_CycD1a
		0.5	;	%	158	g_CycD1+AP1_p_n = g_CycD1_AP1_p_n
		4.0	;	%	159	g_CycD1_AP1_p_n = g_CycD1+AP1_p_n
		2.8	;	%	160	g_CycD1_AP1_p_n+RNAp = g_CycD1_AP1_p_n_RNAp
		4.0	;	%	161	g_CycD1_AP1_p_n_RNAp = g_CycD1_AP1_p_n+RNAp
		6.0	;	%	162	g_CycD1_AP1_p_n_RNAp = g_CycD1+AP1_p_n+RNAp+mRNA_n_CycD1a
		0.8	;	%	163	g_CycD1+E2F_n = g_CycD1_E2F_n
		3.0	;	%	164	g_CycD1_E2F_n = g_CycD1+E2F_n
		0.9	;	%	165	g_CycD1_E2F_n+RNAp = g_CycD1_E2F_n_RNAp
		3.0	;	%	166	g_CycD1_E2F_n_RNAp = g_CycD1_E2F_n+RNAp
		2.0	;	%	167	g_CycD1_E2F_n_RNAp = g_CycD1+E2F_n+RNAp+mRNA_n_CycD1a
		0.5	;	%	168	Export+mRNA_n_CycD1a = Export_mRNA_n_CycD1a
		2.5	;	%	169	Export_mRNA_n_CycD1a = Export+mRNA_n_CycD1a
		2.5	;	%	170	Export_mRNA_n_CycD1a = Export+mRNA_CycD1a
		0.5	;	%	171	Export+mRNA_n_CycD1b = Export_mRNA_n_CycD1b
		2.5	;	%	172	Export_mRNA_n_CycD1b = Export+mRNA_n_CycD1b
		2.5	;	%	173	Export_mRNA_n_CycD1b = Export+mRNA_CycD1b
		0.01	;	%	174	g_CycE+RNAp = g_CycE_RNAp
		4.0	;	%	175	g_CycE_RNAp = g_CycE+RNAp
		0.5	;	%	176	g_CycE_RNAp = g_CycE+RNAp+mRNA_n_CycE
		0.8	;	%	177	g_CycE+E2F_n = g_CycE_E2F_n
		2.0	;	%	178	g_CycE_E2F_n = g_CycE+E2F_n
		0.85	;	%	179	g_CycE_E2F_n+RNAp = g_CycE_E2F_n_RNAp
		3.0	;	%	180	g_CycE_E2F_n_RNAp = g_CycE_E2F_n+RNAp
		2.0	;	%	181	g_CycE_E2F_n_RNAp = g_CycE+E2F_n+RNAp+mRNA_n_CycE
		0.5	;	%	182	Export+mRNA_n_CycE = Export_mRNA_n_CycE
		2.5	;	%	183	Export_mRNA_n_CycE = Export+mRNA_n_CycE
		2.5	;	%	184	Export_mRNA_n_CycE = Export+mRNA_CycE
		0.1	;	%	185	g_Rb+RNAp = g_Rb_RNAp
		6.0	;	%	186	g_Rb_RNAp = g_Rb+RNAp
		0.6	;	%	187	g_Rb_RNAp = g_Rb+RNAp+mRNA_n_Rb
		0.3	;	%	188	g_Rb+E2F_n = g_Rb_E2F_n
		3.0	;	%	189	g_Rb_E2F_n = g_Rb+E2F_n
		0.8	;	%	190	g_Rb_E2F_n+RNAp = g_Rb_E2F_n_RNAp
		3.0	;	%	191	g_Rb_E2F_n_RNAp = g_Rb_E2F_n+RNAp
		0.6	;	%	192	g_Rb_E2F_n_RNAp = g_Rb+E2F_n+RNAp+mRNA_n_Rb
		0.5	;	%	193	Export+mRNA_n_Rb = Export_mRNA_n_Rb
		2.5	;	%	194	Export_mRNA_n_Rb = Export+mRNA_n_Rb
		2.5	;	%	195	Export_mRNA_n_Rb = Export+mRNA_Rb
		0.1	;	%	196	g_E2F+RNAp = g_E2F_RNAp
		5.0	;	%	197	g_E2F_RNAp = g_E2F+RNAp
		0.6	;	%	198	g_E2F_RNAp = g_E2F+RNAp+mRNA_n_E2F
		0.3	;	%	199	g_E2F+AP1_p_n = g_E2F_AP1_p_n
		4.0	;	%	200	g_E2F_AP1_p_n = g_E2F+AP1_p_n
		0.6	;	%	201	g_E2F_AP1_p_n+RNAp = g_E2F_AP1_p_n_RNAp
		3.0	;	%	202	g_E2F_AP1_p_n_RNAp = g_E2F_AP1_p_n+RNAp
		0.7	;	%	203	g_E2F_AP1_p_n_RNAp = g_E2F+AP1_p_n+RNAp+mRNA_n_E2F
		0.1	;	%	204	g_E2F+E2F_n = g_E2F_E2F_n
		5.0	;	%	205	g_E2F_E2F_n = g_E2F+E2F_n
		0.5	;	%	206	g_E2F_E2F_n+RNAp = g_E2F_E2F_n_RNAp
		4.0	;	%	207	g_E2F_E2F_n_RNAp = g_E2F_E2F_n+RNAp
		0.5	;	%	208	g_E2F_E2F_n_RNAp = g_E2F+E2F_n+RNAp+mRNA_n_E2F
		0.5	;	%	209	Export+mRNA_n_E2F = Export_mRNA_n_E2F
		2.5	;	%	210	Export_mRNA_n_E2F = Export+mRNA_n_E2F
		2.5	;	%	211	Export_mRNA_n_E2F = Export+mRNA_E2F
		0.1	;	%	212	g_CDC25A+RNAp = g_CDC25A_RNAp
		5.0	;	%	213	g_CDC25A_RNAp = g_CDC25A+RNAp
		0.4	;	%	214	g_CDC25A_RNAp = g_CDC25A+RNAp+mRNA_n_CDC25A
		0.7	;	%	215	g_CDC25A+E2F_n = g_CDC25A_E2F_n
		3.0	;	%	216	g_CDC25A_E2F_n = g_CDC25A+E2F_n
		0.8	;	%	217	g_CDC25A_E2F_n+RNAp = g_CDC25A_E2F_n_RNAp
		4.0	;	%	218	g_CDC25A_E2F_n_RNAp = g_CDC25A_E2F_n+RNAp
		2.0	;	%	219	g_CDC25A_E2F_n_RNAp = g_CDC25A+E2F_n+RNAp+mRNA_n_CDC25A
		0.5	;	%	220	Export+mRNA_n_CDC25A = Export_mRNA_n_CDC25A
		2.5	;	%	221	Export_mRNA_n_CDC25A = Export+mRNA_n_CDC25A
		2.5	;	%	222	Export_mRNA_n_CDC25A = Export+mRNA_CDC25A
		0.08	;	%	223	g_p21Cip1+RNAp = g_p21Cip1_RNAp
		2.0	;	%	224	g_p21Cip1_RNAp = g_p21Cip1+RNAp
		0.6	;	%	225	g_p21Cip1_RNAp = g_p21Cip1+RNAp+mRNA_n_p21Cip1
		0.6	;	%	226	g_p21Cip1+ETS_p_n = g_p21Cip1_ETS_p_n
		3.0	;	%	227	g_p21Cip1_ETS_p_n = g_p21Cip1+ETS_p_n
		0.8	;	%	228	g_p21Cip1_ETS_p_n+RNAp = g_p21Cip1_ETS_p_n_RNAp
		3.0	;	%	229	g_p21Cip1_ETS_p_n_RNAp = g_p21Cip1_ETS_p_n+RNAp
		2.0	;	%	230	g_p21Cip1_ETS_p_n_RNAp = g_p21Cip1+ETS_p_n+RNAp+mRNA_n_p21Cip1
		0.6	;	%	231	g_p21Cip1+E2F_n = g_p21Cip1_E2F_n
		3.0	;	%	232	g_p21Cip1_E2F_n = g_p21Cip1+E2F_n
		0.8	;	%	233	g_p21Cip1_E2F_n+RNAp = g_p21Cip1_E2F_n_RNAp
		3.0	;	%	234	g_p21Cip1_E2F_n_RNAp = g_p21Cip1_E2F_n+RNAp
		2.0	;	%	235	g_p21Cip1_E2F_n_RNAp = g_p21Cip1+E2F_n+RNAp+mRNA_n_p21Cip1
		0.001	;	%	236	g_p21Cip1+AR_p_2_n = g_p21Cip1_AR_p_2_n
		4.0	;	%	237	g_p21Cip1_AR_p_2_n = g_p21Cip1+AR_p_2_n
		0.01	;	%	238	g_p21Cip1_AR_p_2_n+RNAp = g_p21Cip1_AR_p_2_n_RNAp
		3.0	;	%	239	g_p21Cip1_AR_p_2_n_RNAp = g_p21Cip1_AR_p_2_n+RNAp
		0.01	;	%	240	g_p21Cip1_AR_p_2_n_RNAp = g_p21Cip1+AR_p_2_n+RNAp+mRNA_n_p21Cip1
		0.7	;	%	241	g_p21Cip1+AR_p_DHT_2_n = g_p21Cip1_AR_p_DHT_2_n
		2.0	;	%	242	g_p21Cip1_AR_p_DHT_2_n = g_p21Cip1+AR_p_DHT_2_n
		0.8	;	%	243	g_p21Cip1_AR_p_DHT_2_n+RNAp = g_p21Cip1_AR_p_DHT_2_n_RNAp
		2.0	;	%	244	g_p21Cip1_AR_p_DHT_2_n_RNAp = g_p21Cip1_AR_p_DHT_2_n+RNAp
		0.9	;	%	245	g_p21Cip1_AR_p_DHT_2_n_RNAp = g_p21Cip1+AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
		0.7	;	%	246	g_p21Cip1+AR_p_DHT_AR_p_n = g_p21Cip1_AR_p_DHT_AR_p_n
		2.0	;	%	247	g_p21Cip1_AR_p_DHT_AR_p_n = g_p21Cip1+AR_p_DHT_AR_p_n
		0.8	;	%	248	g_p21Cip1_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_AR_p_DHT_AR_p_n_RNAp
		2.0	;	%	249	g_p21Cip1_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_AR_p_DHT_AR_p_n+RNAp
		0.9	;	%	250	g_p21Cip1_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
		0.7	;	%	251	g_p21Cip1+CycE_AR_p_DHT_2_n = g_p21Cip1_CycE_AR_p_DHT_2_n
		2.0	;	%	252	g_p21Cip1_CycE_AR_p_DHT_2_n = g_p21Cip1+CycE_AR_p_DHT_2_n
		0.8	;	%	253	g_p21Cip1_CycE_AR_p_DHT_2_n+RNAp = g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp
		2.0	;	%	254	g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp = g_p21Cip1_CycE_AR_p_DHT_2_n+RNAp
		0.9	;	%	255	g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp = g_p21Cip1+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
		0.01	;	%	256	g_p21Cip1+CycE_AR_p_2_n = g_p21Cip1_CycE_AR_p_2_n
		3.0	;	%	257	g_p21Cip1_CycE_AR_p_2_n = g_p21Cip1+CycE_AR_p_2_n
		0.01	;	%	258	g_p21Cip1_CycE_AR_p_2_n+RNAp = g_p21Cip1_CycE_AR_p_2_n_RNAp
		2.0	;	%	259	g_p21Cip1_CycE_AR_p_2_n_RNAp = g_p21Cip1_CycE_AR_p_2_n+RNAp
		0.01	;	%	260	g_p21Cip1_CycE_AR_p_2_n_RNAp = g_p21Cip1+CycE_AR_p_2_n+RNAp+mRNA_n_p21Cip1
		0.6	;	%	261	g_p21Cip1+CycE_AR_p_DHT_AR_p_n = g_p21Cip1_CycE_AR_p_DHT_AR_p_n
		2.0	;	%	262	g_p21Cip1_CycE_AR_p_DHT_AR_p_n = g_p21Cip1+CycE_AR_p_DHT_AR_p_n
		0.8	;	%	263	g_p21Cip1_CycE_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp
		2.0	;	%	264	g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_CycE_AR_p_DHT_AR_p_n+RNAp
		0.9	;	%	265	g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
		0.6	;	%	266	g_p21Cip1+CDK6_AR_p_DHT_2_n = g_p21Cip1_CDK6_AR_p_DHT_2_n
		2.0	;	%	267	g_p21Cip1_CDK6_AR_p_DHT_2_n = g_p21Cip1+CDK6_AR_p_DHT_2_n
		0.7	;	%	268	g_p21Cip1_CDK6_AR_p_DHT_2_n+RNAp = g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp
		2.0	;	%	269	g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp = g_p21Cip1_CDK6_AR_p_DHT_2_n+RNAp
		0.8	;	%	270	g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp = g_p21Cip1+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
		0.01	;	%	271	g_p21Cip1+CDK6_AR_p_2_n = g_p21Cip1_CDK6_AR_p_2_n
		2.0	;	%	272	g_p21Cip1_CDK6_AR_p_2_n = g_p21Cip1+CDK6_AR_p_2_n
		0.01	;	%	273	g_p21Cip1_CDK6_AR_p_2_n+RNAp = g_p21Cip1_CDK6_AR_p_2_n_RNAp
		2.0	;	%	274	g_p21Cip1_CDK6_AR_p_2_n_RNAp = g_p21Cip1_CDK6_AR_p_2_n+RNAp
		0.01	;	%	275	g_p21Cip1_CDK6_AR_p_2_n_RNAp = g_p21Cip1+CDK6_AR_p_2_n+RNAp+mRNA_n_p21Cip1
		0.6	;	%	276	g_p21Cip1+CDK6_AR_p_DHT_AR_p_n = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n
		2.0	;	%	277	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n = g_p21Cip1+CDK6_AR_p_DHT_AR_p_n
		0.8	;	%	278	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp
		2.0	;	%	279	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n+RNAp
		0.9	;	%	280	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
		0.5	;	%	281	Export+mRNA_n_p21Cip1 = Export_mRNA_n_p21Cip1
		2.5	;	%	282	Export_mRNA_n_p21Cip1 = Export+mRNA_n_p21Cip1
		2.5	;	%	283	Export_mRNA_n_p21Cip1 = Export+mRNA_p21Cip1
		0.2	;	%	284	g_p27Kip1+RNAp = g_p27Kip1_RNAp
		5.0	;	%	285	g_p27Kip1_RNAp = g_p27Kip1+RNAp
		0.8	;	%	286	g_p27Kip1_RNAp = g_p27Kip1+RNAp+mRNA_n_p27Kip1
		0.9	;	%	287	g_p27Kip1+AP1_p_n = g_p27Kip1_AP1_p_n
		3.0	;	%	288	g_p27Kip1_AP1_p_n = g_p27Kip1+AP1_p_n
		0.5	;	%	289	Export+mRNA_n_p27Kip1 = Export_mRNA_n_p27Kip1
		2.5	;	%	290	Export_mRNA_n_p27Kip1 = Export+mRNA_n_p27Kip1
		2.5	;	%	291	Export_mRNA_n_p27Kip1 = Export+mRNA_p27Kip1
		0.3	;	%	292	g_p16INK4+RNAp = g_p16INK4_RNAp
		5.0	;	%	293	g_p16INK4_RNAp = g_p16INK4+RNAp
		0.7	;	%	294	g_p16INK4_RNAp = g_p16INK4+RNAp+mRNA_n_p16INK4
		0.5	;	%	295	Export+mRNA_n_p16INK4 = Export_mRNA_n_p16INK4
		2.5	;	%	296	Export_mRNA_n_p16INK4 = Export+mRNA_n_p16INK4
		2.5	;	%	297	Export_mRNA_n_p16INK4 = Export+mRNA_p16INK4
		0.05	;	%	298	g_PSA+RNAp = g_PSA_RNAp
		1.0	;	%	299	g_PSA_RNAp = g_PSA+RNAp
		0.8	;	%	300	g_PSA_RNAp = g_PSA+RNAp+mRNA_n_PSA
		1.8	;	%	301	g_PSA+AR_p_2_n = g_PSA_AR_p_2_n
		2.1	;	%	302	g_PSA_AR_p_2_n = g_PSA+AR_p_2_n
		3.1	;	%	303	g_PSA_AR_p_2_n+RNAp = g_PSA_AR_p_2_n_RNAp
		3.5	;	%	304	g_PSA_AR_p_2_n_RNAp = g_PSA_AR_p_2_n+RNAp
		8.0	;	%	305	g_PSA_AR_p_2_n_RNAp = g_PSA+AR_p_2_n+RNAp+mRNA_n_PSA
		4.0	;	%	306	g_PSA+AR_p_DHT_2_n = g_PSA_AR_p_DHT_2_n
		1.0	;	%	307	g_PSA_AR_p_DHT_2_n = g_PSA+AR_p_DHT_2_n
		5.0	;	%	308	g_PSA_AR_p_DHT_2_n+RNAp = g_PSA_AR_p_DHT_2_n_RNAp
		1.0	;	%	309	g_PSA_AR_p_DHT_2_n_RNAp = g_PSA_AR_p_DHT_2_n+RNAp
		7.0	;	%	310	g_PSA_AR_p_DHT_2_n_RNAp = g_PSA+AR_p_DHT_2_n+RNAp+mRNA_n_PSA
		3.0	;	%	311	g_PSA+AR_p_DHT_AR_p_n = g_PSA_AR_p_DHT_AR_p_n
		1.0	;	%	312	g_PSA_AR_p_DHT_AR_p_n = g_PSA+AR_p_DHT_AR_p_n
		5.0	;	%	313	g_PSA_AR_p_DHT_AR_p_n+RNAp = g_PSA_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	314	g_PSA_AR_p_DHT_AR_p_n_RNAp = g_PSA_AR_p_DHT_AR_p_n+RNAp
		7.0	;	%	315	g_PSA_AR_p_DHT_AR_p_n_RNAp = g_PSA+AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
		3.0	;	%	316	g_PSA+CycE_AR_p_DHT_2_n = g_PSA_CycE_AR_p_DHT_2_n
		1.0	;	%	317	g_PSA_CycE_AR_p_DHT_2_n = g_PSA+CycE_AR_p_DHT_2_n
		5.0	;	%	318	g_PSA_CycE_AR_p_DHT_2_n+RNAp = g_PSA_CycE_AR_p_DHT_2_n_RNAp
		1.0	;	%	319	g_PSA_CycE_AR_p_DHT_2_n_RNAp = g_PSA_CycE_AR_p_DHT_2_n+RNAp
		7.0	;	%	320	g_PSA_CycE_AR_p_DHT_2_n_RNAp = g_PSA+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_PSA
		0.7	;	%	321	g_PSA+CycE_AR_p_2_n = g_PSA_CycE_AR_p_2_n
		2.0	;	%	322	g_PSA_CycE_AR_p_2_n = g_PSA+CycE_AR_p_2_n
		0.9	;	%	323	g_PSA_CycE_AR_p_2_n+RNAp = g_PSA_CycE_AR_p_2_n_RNAp
		2.0	;	%	324	g_PSA_CycE_AR_p_2_n_RNAp = g_PSA_CycE_AR_p_2_n+RNAp
		3.3	;	%	325	g_PSA_CycE_AR_p_2_n_RNAp = g_PSA+CycE_AR_p_2_n+RNAp+mRNA_n_PSA
		3.0	;	%	326	g_PSA+CycE_AR_p_DHT_AR_p_n = g_PSA_CycE_AR_p_DHT_AR_p_n
		1.0	;	%	327	g_PSA_CycE_AR_p_DHT_AR_p_n = g_PSA+CycE_AR_p_DHT_AR_p_n
		4.0	;	%	328	g_PSA_CycE_AR_p_DHT_AR_p_n+RNAp = g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	329	g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp = g_PSA_CycE_AR_p_DHT_AR_p_n+RNAp
		5.0	;	%	330	g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp = g_PSA+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
		3.0	;	%	331	g_PSA+CDK6_AR_p_DHT_2_n = g_PSA_CDK6_AR_p_DHT_2_n
		1.0	;	%	332	g_PSA_CDK6_AR_p_DHT_2_n = g_PSA+CDK6_AR_p_DHT_2_n
		5.0	;	%	333	g_PSA_CDK6_AR_p_DHT_2_n+RNAp = g_PSA_CDK6_AR_p_DHT_2_n_RNAp
		1.0	;	%	334	g_PSA_CDK6_AR_p_DHT_2_n_RNAp = g_PSA_CDK6_AR_p_DHT_2_n+RNAp
		6.0	;	%	335	g_PSA_CDK6_AR_p_DHT_2_n_RNAp = g_PSA+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_PSA
		0.8	;	%	336	g_PSA+CDK6_AR_p_2_n = g_PSA_CDK6_AR_p_2_n
		2.0	;	%	337	g_PSA_CDK6_AR_p_2_n = g_PSA+CDK6_AR_p_2_n
		0.9	;	%	338	g_PSA_CDK6_AR_p_2_n+RNAp = g_PSA_CDK6_AR_p_2_n_RNAp
		2.0	;	%	339	g_PSA_CDK6_AR_p_2_n_RNAp = g_PSA_CDK6_AR_p_2_n+RNAp
		3.3	;	%	340	g_PSA_CDK6_AR_p_2_n_RNAp = g_PSA+CDK6_AR_p_2_n+RNAp+mRNA_n_PSA
		3.0	;	%	341	g_PSA+CDK6_AR_p_DHT_AR_p_n = g_PSA_CDK6_AR_p_DHT_AR_p_n
		1.0	;	%	342	g_PSA_CDK6_AR_p_DHT_AR_p_n = g_PSA+CDK6_AR_p_DHT_AR_p_n
		5.0	;	%	343	g_PSA_CDK6_AR_p_DHT_AR_p_n+RNAp = g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	344	g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp = g_PSA_CDK6_AR_p_DHT_AR_p_n+RNAp
		6.6	;	%	345	g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp = g_PSA+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
		0.5	;	%	346	Export+mRNA_n_PSA = Export_mRNA_n_PSA
		2.5	;	%	347	Export_mRNA_n_PSA = Export+mRNA_n_PSA
		2.5	;	%	348	Export_mRNA_n_PSA = Export+mRNA_PSA
		0.8	;	%	349	g_PAcP+RNAp = g_PAcP_RNAp
		4.0	;	%	350	g_PAcP_RNAp = g_PAcP+RNAp
		4.0	;	%	351	g_PAcP_RNAp = g_PAcP+RNAp+mRNA_n_PAcP
		0.1	;	%	352	g_PAcP+AR_p_2_n = g_PAcP_AR_p_2_n
		5.0	;	%	353	g_PAcP_AR_p_2_n = g_PAcP+AR_p_2_n
		12.0	;	%	354	g_PAcP+AR_p_DHT_2_n = g_PAcP_AR_p_DHT_2_n
		2.0	;	%	355	g_PAcP_AR_p_DHT_2_n = g_PAcP+AR_p_DHT_2_n
		12.0	;	%	356	g_PAcP+AR_p_DHT_AR_p_n = g_PAcP_AR_p_DHT_AR_p_n
		2.0	;	%	357	g_PAcP_AR_p_DHT_AR_p_n = g_PAcP+AR_p_DHT_AR_p_n
		12.0	;	%	358	g_PAcP+CycE_AR_p_DHT_2_n = g_PAcP_CycE_AR_p_DHT_2_n
		2.0	;	%	359	g_PAcP_CycE_AR_p_DHT_2_n = g_PAcP+CycE_AR_p_DHT_2_n
		0.1	;	%	360	g_PAcP+CycE_AR_p_2_n = g_PAcP_CycE_AR_p_2_n
		4.0	;	%	361	g_PAcP_CycE_AR_p_2_n = g_PAcP+CycE_AR_p_2_n
		12.0	;	%	362	g_PAcP+CycE_AR_p_DHT_AR_p_n = g_PAcP_CycE_AR_p_DHT_AR_p_n
		3.0	;	%	363	g_PAcP_CycE_AR_p_DHT_AR_p_n = g_PAcP+CycE_AR_p_DHT_AR_p_n
		12.0	;	%	364	g_PAcP+CDK6_AR_p_DHT_2_n = g_PAcP_CDK6_AR_p_DHT_2_n
		3.0	;	%	365	g_PAcP_CDK6_AR_p_DHT_2_n = g_PAcP+CDK6_AR_p_DHT_2_n
		0.1	;	%	366	g_PAcP+CDK6_AR_p_2_n = g_PAcP_CDK6_AR_p_2_n
		5.0	;	%	367	g_PAcP_CDK6_AR_p_2_n = g_PAcP+CDK6_AR_p_2_n
		12.0	;	%	368	g_PAcP+CDK6_AR_p_DHT_AR_p_n = g_PAcP_CDK6_AR_p_DHT_AR_p_n
		3.0	;	%	369	g_PAcP_CDK6_AR_p_DHT_AR_p_n = g_PAcP+CDK6_AR_p_DHT_AR_p_n
		0.5	;	%	370	Export+mRNA_n_PAcP = Export_mRNA_n_PAcP
		2.5	;	%	371	Export_mRNA_n_PAcP = Export+mRNA_n_PAcP
		2.5	;	%	372	Export_mRNA_n_PAcP = Export+mRNA_PAcP
		0.8	;	%	373	g_AR+RNAp = g_AR_RNAp
		3.0	;	%	374	g_AR_RNAp = g_AR+RNAp
		1.5	;	%	375	g_AR_RNAp = g_AR+RNAp+mRNA_n_AR
		0.5	;	%	376	g_AR+AR_p_2_n = g_AR_AR_p_2_n
		2.0	;	%	377	g_AR_AR_p_2_n = g_AR+AR_p_2_n
		0.6	;	%	378	g_AR_AR_p_2_n+RNAp = g_AR_AR_p_2_n_RNAp
		3.0	;	%	379	g_AR_AR_p_2_n_RNAp = g_AR_AR_p_2_n+RNAp
		0.8	;	%	380	g_AR_AR_p_2_n_RNAp = g_AR+AR_p_2_n+RNAp+mRNA_n_AR
		0.2	;	%	381	g_AR+AR_p_DHT_2_n = g_AR_AR_p_DHT_2_n
		3.0	;	%	382	g_AR_AR_p_DHT_2_n = g_AR+AR_p_DHT_2_n
		0.4	;	%	383	g_AR_AR_p_DHT_2_n+RNAp = g_AR_AR_p_DHT_2_n_RNAp
		3.0	;	%	384	g_AR_AR_p_DHT_2_n_RNAp = g_AR_AR_p_DHT_2_n+RNAp
		0.6	;	%	385	g_AR_AR_p_DHT_2_n_RNAp = g_AR+AR_p_DHT_2_n+RNAp+mRNA_n_AR
		1.0	;	%	386	g_AR+AR_p_DHT_AR_p_n = g_AR_AR_p_DHT_AR_p_n
		1.0	;	%	387	g_AR_AR_p_DHT_AR_p_n = g_AR+AR_p_DHT_AR_p_n
		1.0	;	%	388	g_AR_AR_p_DHT_AR_p_n+RNAp = g_AR_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	389	g_AR_AR_p_DHT_AR_p_n_RNAp = g_AR_AR_p_DHT_AR_p_n+RNAp
		1.0	;	%	390	g_AR_AR_p_DHT_AR_p_n_RNAp = g_AR+AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
		1.0	;	%	391	g_AR+CycE_AR_p_DHT_2_n = g_AR_CycE_AR_p_DHT_2_n
		1.0	;	%	392	g_AR_CycE_AR_p_DHT_2_n = g_AR+CycE_AR_p_DHT_2_n
		1.0	;	%	393	g_AR_CycE_AR_p_DHT_2_n+RNAp = g_AR_CycE_AR_p_DHT_2_n_RNAp
		1.0	;	%	394	g_AR_CycE_AR_p_DHT_2_n_RNAp = g_AR_CycE_AR_p_DHT_2_n+RNAp
		1.0	;	%	395	g_AR_CycE_AR_p_DHT_2_n_RNAp = g_AR+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_AR
		1.0	;	%	396	g_AR+CycE_AR_p_2_n = g_AR_CycE_AR_p_2_n
		1.0	;	%	397	g_AR_CycE_AR_p_2_n = g_AR+CycE_AR_p_2_n
		1.0	;	%	398	g_AR_CycE_AR_p_2_n+RNAp = g_AR_CycE_AR_p_2_n_RNAp
		1.0	;	%	399	g_AR_CycE_AR_p_2_n_RNAp = g_AR_CycE_AR_p_2_n+RNAp
		1.0	;	%	400	g_AR_CycE_AR_p_2_n_RNAp = g_AR+CycE_AR_p_2_n+RNAp+mRNA_n_AR
		1.0	;	%	401	g_AR+CycE_AR_p_DHT_AR_p_n = g_AR_CycE_AR_p_DHT_AR_p_n
		1.0	;	%	402	g_AR_CycE_AR_p_DHT_AR_p_n = g_AR+CycE_AR_p_DHT_AR_p_n
		1.0	;	%	403	g_AR_CycE_AR_p_DHT_AR_p_n+RNAp = g_AR_CycE_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	404	g_AR_CycE_AR_p_DHT_AR_p_n_RNAp = g_AR_CycE_AR_p_DHT_AR_p_n+RNAp
		1.0	;	%	405	g_AR_CycE_AR_p_DHT_AR_p_n_RNAp = g_AR+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
		1.0	;	%	406	g_AR+CDK6_AR_p_DHT_2_n = g_AR_CDK6_AR_p_DHT_2_n
		1.0	;	%	407	g_AR_CDK6_AR_p_DHT_2_n = g_AR+CDK6_AR_p_DHT_2_n
		1.0	;	%	408	g_AR_CDK6_AR_p_DHT_2_n+RNAp = g_AR_CDK6_AR_p_DHT_2_n_RNAp
		1.0	;	%	409	g_AR_CDK6_AR_p_DHT_2_n_RNAp = g_AR_CDK6_AR_p_DHT_2_n+RNAp
		1.0	;	%	410	g_AR_CDK6_AR_p_DHT_2_n_RNAp = g_AR+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_AR
		1.0	;	%	411	g_AR+CDK6_AR_p_2_n = g_AR_CDK6_AR_p_2_n
		1.0	;	%	412	g_AR_CDK6_AR_p_2_n = g_AR+CDK6_AR_p_2_n
		1.0	;	%	413	g_AR_CDK6_AR_p_2_n+RNAp = g_AR_CDK6_AR_p_2_n_RNAp
		1.0	;	%	414	g_AR_CDK6_AR_p_2_n_RNAp = g_AR_CDK6_AR_p_2_n+RNAp
		1.0	;	%	415	g_AR_CDK6_AR_p_2_n_RNAp = g_AR+CDK6_AR_p_2_n+RNAp+mRNA_n_AR
		1.0	;	%	416	g_AR+CDK6_AR_p_DHT_AR_p_n = g_AR_CDK6_AR_p_DHT_AR_p_n
		1.0	;	%	417	g_AR_CDK6_AR_p_DHT_AR_p_n = g_AR+CDK6_AR_p_DHT_AR_p_n
		1.0	;	%	418	g_AR_CDK6_AR_p_DHT_AR_p_n+RNAp = g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp
		1.0	;	%	419	g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp = g_AR_CDK6_AR_p_DHT_AR_p_n+RNAp
		1.0	;	%	420	g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp = g_AR+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
		0.2	;	%	421	g_AR+E2F_n = g_AR_E2F_n
		3.0	;	%	422	g_AR_E2F_n = g_AR+E2F_n
		0.5	;	%	423	Export+mRNA_n_AR = Export_mRNA_n_AR
		2.5	;	%	424	Export_mRNA_n_AR = Export+mRNA_n_AR
		2.5	;	%	425	Export_mRNA_n_AR = Export+mRNA_AR
		1.0	;	%	426	mRNA_ETS = []
		1.0	;	%	427	mRNA_AP1 = []
		1.0	;	%	428	mRNA_CycD1a = []
		1.0	;	%	429	mRNA_CycD1b = []
		1.0	;	%	430	mRNA_CycE = []
		1.0	;	%	431	mRNA_Rb = []
		1.0	;	%	432	mRNA_E2F = []
		1.0	;	%	433	mRNA_CDC25A = []
		1.0	;	%	434	mRNA_p21Cip1 = []
		1.0	;	%	435	mRNA_p27Kip1 = []
		1.0	;	%	436	mRNA_p16INK4 = []
		1.0	;	%	437	mRNA_PSA = []
		0.8	;	%	438	mRNA_PAcP = []
		1.0	;	%	439	mRNA_AR = []
		1.6	;	%	440	mRNA_ETS+eIF4E = mRNA_ETS_eIF4E
		1.0	;	%	441	mRNA_ETS_eIF4E = mRNA_ETS+eIF4E
		1.8	;	%	442	mRNA_ETS_eIF4E+Ribo40S = mRNA_ETS_eIF4E_Ribo40S
		1.0	;	%	443	mRNA_ETS_eIF4E_Ribo40S = mRNA_ETS_eIF4E+Ribo40S
		1.8	;	%	444	mRNA_ETS_eIF4E_Ribo40S+Ribo60S = mRNA_ETS_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	445	mRNA_ETS_eIF4E_Ribo40S_Ribo60S = mRNA_ETS_eIF4E_Ribo40S+Ribo60S
		1.8	;	%	446	mRNA_ETS_eIF4E_Ribo40S_Ribo60S = mRNA_ETS_Ribo40S_Ribo60S+eIF4E
		1.8	;	%	447	mRNA_ETS_Ribo40S_Ribo60S = mRNA_ETS_Ribo40S_Ribo60S_Elong
		1.8	;	%	448	mRNA_ETS_Ribo40S_Ribo60S_Elong = ETS+Ribo40S+Ribo60S+mRNA_ETS
		1.6	;	%	449	mRNA_AP1+eIF4E = mRNA_AP1_eIF4E
		1.0	;	%	450	mRNA_AP1_eIF4E = mRNA_AP1+eIF4E
		1.8	;	%	451	mRNA_AP1_eIF4E+Ribo40S = mRNA_AP1_eIF4E_Ribo40S
		1.0	;	%	452	mRNA_AP1_eIF4E_Ribo40S = mRNA_AP1_eIF4E+Ribo40S
		1.8	;	%	453	mRNA_AP1_eIF4E_Ribo40S+Ribo60S = mRNA_AP1_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	454	mRNA_AP1_eIF4E_Ribo40S_Ribo60S = mRNA_AP1_eIF4E_Ribo40S+Ribo60S
		1.8	;	%	455	mRNA_AP1_eIF4E_Ribo40S_Ribo60S = mRNA_AP1_Ribo40S_Ribo60S+eIF4E
		1.8	;	%	456	mRNA_AP1_Ribo40S_Ribo60S = mRNA_AP1_Ribo40S_Ribo60S_Elong
		1.8	;	%	457	mRNA_AP1_Ribo40S_Ribo60S_Elong = AP1+Ribo40S+Ribo60S+mRNA_AP1
		2.0	;	%	458	mRNA_CycD1a+eIF4E = mRNA_CycD1a_eIF4E
		1.0	;	%	459	mRNA_CycD1a_eIF4E = mRNA_CycD1a+eIF4E
		2.0	;	%	460	mRNA_CycD1a_eIF4E+Ribo40S = mRNA_CycD1a_eIF4E_Ribo40S
		1.0	;	%	461	mRNA_CycD1a_eIF4E_Ribo40S = mRNA_CycD1a_eIF4E+Ribo40S
		2.0	;	%	462	mRNA_CycD1a_eIF4E_Ribo40S+Ribo60S = mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	463	mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1a_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	464	mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1a_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	465	mRNA_CycD1a_Ribo40S_Ribo60S = mRNA_CycD1a_Ribo40S_Ribo60S_Elong
		2.0	;	%	466	mRNA_CycD1a_Ribo40S_Ribo60S_Elong = CycD1a+Ribo40S+Ribo60S+mRNA_CycD1a
		2.0	;	%	467	mRNA_CycD1b+eIF4E = mRNA_CycD1b_eIF4E
		1.0	;	%	468	mRNA_CycD1b_eIF4E = mRNA_CycD1b+eIF4E
		2.0	;	%	469	mRNA_CycD1b_eIF4E+Ribo40S = mRNA_CycD1b_eIF4E_Ribo40S
		1.0	;	%	470	mRNA_CycD1b_eIF4E_Ribo40S = mRNA_CycD1b_eIF4E+Ribo40S
		2.0	;	%	471	mRNA_CycD1b_eIF4E_Ribo40S+Ribo60S = mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	472	mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1b_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	473	mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1b_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	474	mRNA_CycD1b_Ribo40S_Ribo60S = mRNA_CycD1b_Ribo40S_Ribo60S_Elong
		2.0	;	%	475	mRNA_CycD1b_Ribo40S_Ribo60S_Elong = CycD1b+Ribo40S+Ribo60S+mRNA_CycD1b
		2.0	;	%	476	mRNA_CycE+eIF4E = mRNA_CycE_eIF4E
		1.0	;	%	477	mRNA_CycE_eIF4E = mRNA_CycE+eIF4E
		2.0	;	%	478	mRNA_CycE_eIF4E+Ribo40S = mRNA_CycE_eIF4E_Ribo40S
		1.0	;	%	479	mRNA_CycE_eIF4E_Ribo40S = mRNA_CycE_eIF4E+Ribo40S
		2.0	;	%	480	mRNA_CycE_eIF4E_Ribo40S+Ribo60S = mRNA_CycE_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	481	mRNA_CycE_eIF4E_Ribo40S_Ribo60S = mRNA_CycE_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	482	mRNA_CycE_eIF4E_Ribo40S_Ribo60S = mRNA_CycE_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	483	mRNA_CycE_Ribo40S_Ribo60S = mRNA_CycE_Ribo40S_Ribo60S_Elong
		2.0	;	%	484	mRNA_CycE_Ribo40S_Ribo60S_Elong = CycE+Ribo40S+Ribo60S+mRNA_CycE
		1.4	;	%	485	mRNA_Rb+eIF4E = mRNA_Rb_eIF4E
		1.0	;	%	486	mRNA_Rb_eIF4E = mRNA_Rb+eIF4E
		1.8	;	%	487	mRNA_Rb_eIF4E+Ribo40S = mRNA_Rb_eIF4E_Ribo40S
		1.0	;	%	488	mRNA_Rb_eIF4E_Ribo40S = mRNA_Rb_eIF4E+Ribo40S
		1.8	;	%	489	mRNA_Rb_eIF4E_Ribo40S+Ribo60S = mRNA_Rb_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	490	mRNA_Rb_eIF4E_Ribo40S_Ribo60S = mRNA_Rb_eIF4E_Ribo40S+Ribo60S
		1.8	;	%	491	mRNA_Rb_eIF4E_Ribo40S_Ribo60S = mRNA_Rb_Ribo40S_Ribo60S+eIF4E
		1.8	;	%	492	mRNA_Rb_Ribo40S_Ribo60S = mRNA_Rb_Ribo40S_Ribo60S_Elong
		1.8	;	%	493	mRNA_Rb_Ribo40S_Ribo60S_Elong = Rb+Ribo40S+Ribo60S+mRNA_Rb
		1.3	;	%	494	mRNA_E2F+eIF4E = mRNA_E2F_eIF4E
		1.0	;	%	495	mRNA_E2F_eIF4E = mRNA_E2F+eIF4E
		1.8	;	%	496	mRNA_E2F_eIF4E+Ribo40S = mRNA_E2F_eIF4E_Ribo40S
		1.0	;	%	497	mRNA_E2F_eIF4E_Ribo40S = mRNA_E2F_eIF4E+Ribo40S
		1.8	;	%	498	mRNA_E2F_eIF4E_Ribo40S+Ribo60S = mRNA_E2F_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	499	mRNA_E2F_eIF4E_Ribo40S_Ribo60S = mRNA_E2F_eIF4E_Ribo40S+Ribo60S
		1.8	;	%	500	mRNA_E2F_eIF4E_Ribo40S_Ribo60S = mRNA_E2F_Ribo40S_Ribo60S+eIF4E
		1.8	;	%	501	mRNA_E2F_Ribo40S_Ribo60S = mRNA_E2F_Ribo40S_Ribo60S_Elong
		2.0	;	%	502	mRNA_E2F_Ribo40S_Ribo60S_Elong = E2F+Ribo40S+Ribo60S+mRNA_E2F
		2.0	;	%	503	mRNA_CDC25A+eIF4E = mRNA_CDC25A_eIF4E
		1.0	;	%	504	mRNA_CDC25A_eIF4E = mRNA_CDC25A+eIF4E
		2.0	;	%	505	mRNA_CDC25A_eIF4E+Ribo40S = mRNA_CDC25A_eIF4E_Ribo40S
		1.0	;	%	506	mRNA_CDC25A_eIF4E_Ribo40S = mRNA_CDC25A_eIF4E+Ribo40S
		2.0	;	%	507	mRNA_CDC25A_eIF4E_Ribo40S+Ribo60S = mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	508	mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S = mRNA_CDC25A_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	509	mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S = mRNA_CDC25A_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	510	mRNA_CDC25A_Ribo40S_Ribo60S = mRNA_CDC25A_Ribo40S_Ribo60S_Elong
		2.0	;	%	511	mRNA_CDC25A_Ribo40S_Ribo60S_Elong = CDC25A+Ribo40S+Ribo60S+mRNA_CDC25A
		2.0	;	%	512	mRNA_p21Cip1+eIF4E = mRNA_p21Cip1_eIF4E
		1.0	;	%	513	mRNA_p21Cip1_eIF4E = mRNA_p21Cip1+eIF4E
		2.0	;	%	514	mRNA_p21Cip1_eIF4E+Ribo40S = mRNA_p21Cip1_eIF4E_Ribo40S
		1.0	;	%	515	mRNA_p21Cip1_eIF4E_Ribo40S = mRNA_p21Cip1_eIF4E+Ribo40S
		2.0	;	%	516	mRNA_p21Cip1_eIF4E_Ribo40S+Ribo60S = mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	517	mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S = mRNA_p21Cip1_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	518	mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S = mRNA_p21Cip1_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	519	mRNA_p21Cip1_Ribo40S_Ribo60S = mRNA_p21Cip1_Ribo40S_Ribo60S_Elong
		2.0	;	%	520	mRNA_p21Cip1_Ribo40S_Ribo60S_Elong = p21Cip1+Ribo40S+Ribo60S+mRNA_p21Cip1
		2.0	;	%	521	mRNA_p27Kip1+eIF4E = mRNA_p27Kip1_eIF4E
		1.0	;	%	522	mRNA_p27Kip1_eIF4E = mRNA_p27Kip1+eIF4E
		2.0	;	%	523	mRNA_p27Kip1_eIF4E+Ribo40S = mRNA_p27Kip1_eIF4E_Ribo40S
		1.0	;	%	524	mRNA_p27Kip1_eIF4E_Ribo40S = mRNA_p27Kip1_eIF4E+Ribo40S
		2.0	;	%	525	mRNA_p27Kip1_eIF4E_Ribo40S+Ribo60S = mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	526	mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S = mRNA_p27Kip1_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	527	mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S = mRNA_p27Kip1_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	528	mRNA_p27Kip1_Ribo40S_Ribo60S = mRNA_p27Kip1_Ribo40S_Ribo60S_Elong
		2.0	;	%	529	mRNA_p27Kip1_Ribo40S_Ribo60S_Elong = p27Kip1+Ribo40S+Ribo60S+mRNA_p27Kip1
		2.0	;	%	530	mRNA_p16INK4+eIF4E = mRNA_p16INK4_eIF4E
		1.0	;	%	531	mRNA_p16INK4_eIF4E = mRNA_p16INK4+eIF4E
		2.0	;	%	532	mRNA_p16INK4_eIF4E+Ribo40S = mRNA_p16INK4_eIF4E_Ribo40S
		1.0	;	%	533	mRNA_p16INK4_eIF4E_Ribo40S = mRNA_p16INK4_eIF4E+Ribo40S
		2.0	;	%	534	mRNA_p16INK4_eIF4E_Ribo40S+Ribo60S = mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	535	mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S = mRNA_p16INK4_eIF4E_Ribo40S+Ribo60S
		2.0	;	%	536	mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S = mRNA_p16INK4_Ribo40S_Ribo60S+eIF4E
		2.0	;	%	537	mRNA_p16INK4_Ribo40S_Ribo60S = mRNA_p16INK4_Ribo40S_Ribo60S_Elong
		2.0	;	%	538	mRNA_p16INK4_Ribo40S_Ribo60S_Elong = p16INK4+Ribo40S+Ribo60S+mRNA_p16INK4
		2.0	;	%	539	mRNA_PSA+eIF4E = mRNA_PSA_eIF4E
		1.0	;	%	540	mRNA_PSA_eIF4E = mRNA_PSA+eIF4E
		2.0	;	%	541	mRNA_PSA_eIF4E+Ribo40S = mRNA_PSA_eIF4E_Ribo40S
		1.0	;	%	542	mRNA_PSA_eIF4E_Ribo40S = mRNA_PSA_eIF4E+Ribo40S
		2.0	;	%	543	mRNA_PSA_eIF4E_Ribo40S+Ribo60S = mRNA_PSA_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	544	mRNA_PSA_eIF4E_Ribo40S_Ribo60S = mRNA_PSA_eIF4E_Ribo40S+Ribo60S
		2.1	;	%	545	mRNA_PSA_eIF4E_Ribo40S_Ribo60S = mRNA_PSA_Ribo40S_Ribo60S+eIF4E
		2.1	;	%	546	mRNA_PSA_Ribo40S_Ribo60S = mRNA_PSA_Ribo40S_Ribo60S_Elong
		2.1	;	%	547	mRNA_PSA_Ribo40S_Ribo60S_Elong = PSA+Ribo40S+Ribo60S+mRNA_PSA
		2.5	;	%	548	mRNA_PAcP+eIF4E = mRNA_PAcP_eIF4E
		1.0	;	%	549	mRNA_PAcP_eIF4E = mRNA_PAcP+eIF4E
		2.8	;	%	550	mRNA_PAcP_eIF4E+Ribo40S = mRNA_PAcP_eIF4E_Ribo40S
		1.0	;	%	551	mRNA_PAcP_eIF4E_Ribo40S = mRNA_PAcP_eIF4E+Ribo40S
		2.8	;	%	552	mRNA_PAcP_eIF4E_Ribo40S+Ribo60S = mRNA_PAcP_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	553	mRNA_PAcP_eIF4E_Ribo40S_Ribo60S = mRNA_PAcP_eIF4E_Ribo40S+Ribo60S
		4.8	;	%	554	mRNA_PAcP_eIF4E_Ribo40S_Ribo60S = mRNA_PAcP_Ribo40S_Ribo60S+eIF4E
		4.8	;	%	555	mRNA_PAcP_Ribo40S_Ribo60S = mRNA_PAcP_Ribo40S_Ribo60S_Elong
		6.8	;	%	556	mRNA_PAcP_Ribo40S_Ribo60S_Elong = cPAcP+Ribo40S+Ribo60S+mRNA_PAcP
		1.0	;	%	557	mRNA_PAcP_Ribo40S_Ribo60S_Elong = sPAcP+Ribo40S+Ribo60S+mRNA_PAcP
		2.2	;	%	558	mRNA_AR+eIF4E = mRNA_AR_eIF4E
		1.0	;	%	559	mRNA_AR_eIF4E = mRNA_AR+eIF4E
		2.5	;	%	560	mRNA_AR_eIF4E+Ribo40S = mRNA_AR_eIF4E_Ribo40S
		1.0	;	%	561	mRNA_AR_eIF4E_Ribo40S = mRNA_AR_eIF4E+Ribo40S
		2.4	;	%	562	mRNA_AR_eIF4E_Ribo40S+Ribo60S = mRNA_AR_eIF4E_Ribo40S_Ribo60S
		1.0	;	%	563	mRNA_AR_eIF4E_Ribo40S_Ribo60S = mRNA_AR_eIF4E_Ribo40S+Ribo60S
		2.2	;	%	564	mRNA_AR_eIF4E_Ribo40S_Ribo60S = mRNA_AR_Ribo40S_Ribo60S+eIF4E
		2.2	;	%	565	mRNA_AR_Ribo40S_Ribo60S = mRNA_AR_Ribo40S_Ribo60S_Elong
		2.8	;	%	566	mRNA_AR_Ribo40S_Ribo60S_Elong = AR+Ribo40S+Ribo60S+mRNA_AR
		0.8	;	%	567	ETS = []
		0.8	;	%	568	AP1 = []
		0.6	;	%	569	CycD1a = []
		0.6	;	%	570	CycD1b = []
		0.6	;	%	571	CycE = []
		0.6	;	%	572	Rb = []
		0.6	;	%	573	E2F = []
		0.6	;	%	574	CDC25A = []
		0.6	;	%	575	p21Cip1 = []
		0.6	;	%	576	p27Kip1 = []
		0.6	;	%	577	p16INK4 = []
		0.6	;	%	578	PSA = []
		0.5	;	%	579	cPAcP = []
		0.5	;	%	580	sPAcP = []
		0.6	;	%	581	AR = []
		1.5	;	%	582	AR+HSP = AR_HSP
		5.0	;	%	583	AR_HSP = AR+HSP
		18.0	;	%	584	AR+DHT = AR_DHT
		1.0	;	%	585	AR_DHT = AR+DHT
		20.0	;	%	586	AR_DHT = AR_p_DHT
		0.5	;	%	587	AR_p_DHT = AR_p+DHT
		3.0	;	%	588	AR_p+DHT = AR_p_DHT
		18.0	;	%	589	2*AR_p_DHT = AR_p_DHT_2
		1.0	;	%	590	AR_p_DHT_2 = 2*AR_p_DHT
		4.1	;	%	591	2*AR_p = AR_p_2
		6.0	;	%	592	AR_p_2 = 2*AR_p
		13.0	;	%	593	AR_p_DHT+AR_p = AR_p_DHT_AR_p
		1.0	;	%	594	AR_p_DHT_AR_p = AR_p_DHT+AR_p
		0.4	;	%	595	AR_p+ARPase = AR_p_ARPase
		4.0	;	%	596	AR_p_ARPase = AR_p+ARPase
		1.5	;	%	597	AR_p_ARPase = AR+ARPase
		0.1	;	%	598	AR_p_DHT+ARPase = AR_p_DHT_ARPase
		10.0	;	%	599	AR_p_DHT_ARPase = AR_p_DHT+ARPase
		0.1	;	%	600	AR_p_DHT_ARPase = AR_DHT+ARPase
		0.2	;	%	601	Import+AR_p_DHT_2 = Import_AR_p_DHT_2
		2.0	;	%	602	Import_AR_p_DHT_2 = Import+AR_p_DHT_2
		12.0	;	%	603	Import_AR_p_DHT_2 = Import+AR_p_DHT_2_n
		0.2	;	%	604	Export+AR_p_DHT_2_n = Export_AR_p_DHT_2_n
		14.0	;	%	605	Export_AR_p_DHT_2_n = Export+AR_p_DHT_2_n
		1.0	;	%	606	Export_AR_p_DHT_2_n = Export+AR_p_DHT_2
		0.38	;	%	607	Import+AR_p_2 = Import_AR_p_2
		4.0	;	%	608	Import_AR_p_2 = Import+AR_p_2
		3.1	;	%	609	Import_AR_p_2 = Import+AR_p_2_n
		0.32	;	%	610	Export+AR_p_2_n = Export_AR_p_2_n
		4.0	;	%	611	Export_AR_p_2_n = Export+AR_p_2_n
		1.9	;	%	612	Export_AR_p_2_n = Export+AR_p_2
		0.2	;	%	613	Import+AR_p_DHT_AR_p = Import_AR_p_DHT_AR_p
		2.0	;	%	614	Import_AR_p_DHT_AR_p = Import+AR_p_DHT_AR_p
		15.0	;	%	615	Import_AR_p_DHT_AR_p = Import+AR_p_DHT_AR_p_n
		0.2	;	%	616	Export+AR_p_DHT_AR_p_n = Export_AR_p_DHT_AR_p_n
		10.0	;	%	617	Export_AR_p_DHT_AR_p_n = Export+AR_p_DHT_AR_p_n
		1.5	;	%	618	Export_AR_p_DHT_AR_p_n = Export+AR_p_DHT_AR_p
		1.0	;	%	619	2*HER2 = HER2_2
		5.0	;	%	620	HER2_2 = 2*HER2
		1.0	;	%	621	HER2_2 = HER2_2_p
		0.2	;	%	622	HER2_2_p+SHP = HER2_2_p_SHP
		4.7	;	%	623	HER2_2_p_SHP = HER2_2_p+SHP
		2.5	;	%	624	HER2_2_p_SHP = HER2_2+SHP
		0.7	;	%	625	HER2_2_p+Grb2 = HER2_2_p_Grb2
		4.7	;	%	626	HER2_2_p_Grb2 = HER2_2_p+Grb2
		0.7	;	%	627	HER2_2_p_Grb2+Sos = HER2_2_p_Grb2_Sos
		4.7	;	%	628	HER2_2_p_Grb2_Sos = HER2_2_p_Grb2+Sos
		0.8	;	%	629	HER2_2_p+Grb2_Sos = HER2_2_p_Grb2_Sos
		4.7	;	%	630	HER2_2_p_Grb2_Sos = HER2_2_p+Grb2_Sos
		0.45	;	%	631	HER2_2_p_Grb2_Sos+Ras_GDP = HER2_2_p_Grb2_Sos_Ras_GDP
		8.0	;	%	632	HER2_2_p_Grb2_Sos_Ras_GDP = HER2_2_p_Grb2_Sos+Ras_GDP
		3.5	;	%	633	HER2_2_p_Grb2_Sos_Ras_GDP = HER2_2_p_Grb2_Sos_Ras_GTP
		12.0	;	%	634	HER2_2_p_Grb2_Sos_Ras_GTP = HER2_2_p_Grb2_Sos+Ras_GTP
		0.4	;	%	635	HER2_2_p_Grb2_Sos+Ras_GTP = HER2_2_p_Grb2_Sos_Ras_GTP
		0.7	;	%	636	HER2_2_p+Shc = HER2_2_p_Shc
		4.7	;	%	637	HER2_2_p_Shc = HER2_2_p+Shc
		4.0	;	%	638	HER2_2_p_Shc = HER2_2_p_Shc_p
		0.5	;	%	639	HER2_2_p_Shc_p = HER2_2_p+Shc_p
		1.2	;	%	640	HER2_2_p+Shc_p = HER2_2_p_Shc_p
		0.6	;	%	641	HER2_2_p_Shc_p+Grb2 = HER2_2_p_Shc_p_Grb2
		4.8	;	%	642	HER2_2_p_Shc_p_Grb2 = HER2_2_p_Shc_p+Grb2
		0.6	;	%	643	HER2_2_p_Shc_p_Grb2+Sos = HER2_2_p_Shc_p_Grb2_Sos
		4.8	;	%	644	HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p_Shc_p_Grb2+Sos
		0.6	;	%	645	HER2_2_p_Shc_p+Grb2_Sos = HER2_2_p_Shc_p_Grb2_Sos
		4.8	;	%	646	HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p_Shc_p+Grb2_Sos
		0.5	;	%	647	HER2_2_p+Shc_p_Grb2_Sos = HER2_2_p_Shc_p_Grb2_Sos
		4.8	;	%	648	HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p+Shc_p_Grb2_Sos
		0.45	;	%	649	HER2_2_p_Shc_p_Grb2_Sos+Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP
		8.0	;	%	650	HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos+Ras_GDP
		3.6	;	%	651	HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP
		12.0	;	%	652	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP = HER2_2_p_Shc_p_Grb2_Sos+Ras_GTP
		0.4	;	%	653	HER2_2_p_Shc_p_Grb2_Sos+Ras_GTP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP
		1.0	;	%	654	EGFR+EGF = EGFR_EGF
		10.0	;	%	655	EGFR_EGF = EGFR+EGF
		20.0	;	%	656	2*EGFR_EGF = EGFR_EGF_2
		50.0	;	%	657	EGFR_EGF_2 = 2*EGFR_EGF
		30.0	;	%	658	EGFR_EGF_2 = EGFR_EGF_2_p
		0.0	;	%	659	EGFR_EGF_2_p = EGFR_EGF_2
		0.5	;	%	660	EGFR_EGF_2_p+SHP = EGFR_EGF_2_p_SHP
		5.0	;	%	661	EGFR_EGF_2_p_SHP = EGFR_EGF_2_p+SHP
		1.0	;	%	662	EGFR_EGF_2_p_SHP = EGFR_EGF_2+SHP
		30.0	;	%	663	EGFR_EGF_2_p+Grb2 = EGFR_EGF_2_p_Grb2
		100.0	;	%	664	EGFR_EGF_2_p_Grb2 = EGFR_EGF_2_p+Grb2
		20.0	;	%	665	EGFR_EGF_2_p_Grb2+Sos = EGFR_EGF_2_p_Grb2_Sos
		300.0	;	%	666	EGFR_EGF_2_p_Grb2_Sos = EGFR_EGF_2_p_Grb2+Sos
		100.0	;	%	667	EGFR_EGF_2_p+Grb2_Sos = EGFR_EGF_2_p_Grb2_Sos
		30.0	;	%	668	EGFR_EGF_2_p_Grb2_Sos = EGFR_EGF_2_p+Grb2_Sos
		5.0	;	%	669	EGFR_EGF_2_p_Grb2_Sos+Ras_GDP = EGFR_EGF_2_p_Grb2_Sos_Ras_GDP
		100.0	;	%	670	EGFR_EGF_2_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Grb2_Sos+Ras_GDP
		10.0	;	%	671	EGFR_EGF_2_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP
		50.0	;	%	672	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP = EGFR_EGF_2_p_Grb2_Sos+Ras_GTP
		1.0	;	%	673	EGFR_EGF_2_p_Grb2_Sos+Ras_GTP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP
		30.0	;	%	674	EGFR_EGF_2_p+Shc = EGFR_EGF_2_p_Shc
		100.0	;	%	675	EGFR_EGF_2_p_Shc = EGFR_EGF_2_p+Shc
		60.0	;	%	676	EGFR_EGF_2_p_Shc = EGFR_EGF_2_p_Shc_p
		20.0	;	%	677	EGFR_EGF_2_p_Shc_p = EGFR_EGF_2_p+Shc_p
		20.0	;	%	678	EGFR_EGF_2_p+Shc_p = EGFR_EGF_2_p_Shc_p
		30.0	;	%	679	EGFR_EGF_2_p_Shc_p+Grb2 = EGFR_EGF_2_p_Shc_p_Grb2
		200.0	;	%	680	EGFR_EGF_2_p_Shc_p_Grb2 = EGFR_EGF_2_p_Shc_p+Grb2
		20.0	;	%	681	EGFR_EGF_2_p_Shc_p_Grb2+Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
		300.0	;	%	682	EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2+Sos
		20.0	;	%	683	EGFR_EGF_2_p_Shc_p+Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
		300.0	;	%	684	EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p+Grb2_Sos
		20.0	;	%	685	EGFR_EGF_2_p+Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
		300.0	;	%	686	EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p+Shc_p_Grb2_Sos
		5.0	;	%	687	EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP
		100.0	;	%	688	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GDP
		10.0	;	%	689	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP
		50.0	;	%	690	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP = EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GTP
		1.0	;	%	691	EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GTP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP
		0.4	;	%	692	Ras_GTP+RasGAP = Ras_GTP_RasGAP
		4.1	;	%	693	Ras_GTP_RasGAP = Ras_GTP+RasGAP
		1.0	;	%	694	Ras_GTP_RasGAP = Ras_GDP+RasGAP
		0.3	;	%	695	HER2_2_p_Grb2_Sos_Ras_GTP+RasGAP = HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP
		4.0	;	%	696	HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Grb2_Sos_Ras_GTP+RasGAP
		1.0	;	%	697	HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Grb2_Sos_Ras_GDP+RasGAP
		0.3	;	%	698	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
		4.0	;	%	699	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP
		1.0	;	%	700	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP+RasGAP
		1.0	;	%	701	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP
		5.0	;	%	702	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RasGAP
		3.0	;	%	703	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GDP+RasGAP
		1.0	;	%	704	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
		5.0	;	%	705	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP
		3.0	;	%	706	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP+RasGAP
		2.0	;	%	707	EGF = EGF_in
		2.0	;	%	708	EGF_in = []
		15.0	;	%	709	EGFR_EGF_2_p = EGFR_EGF_2_p_in
		15.0	;	%	710	EGFR_EGF_2_p_in = 2*EGFR_in+2*EGF_in
		3.0	;	%	711	EGFR_in = EGFR
		0.8	;	%	712	Grb2+Sos = Grb2_Sos
		3.0	;	%	713	Grb2_Sos = Grb2+Sos
		0.4	;	%	714	Shc_p+Grb2_Sos = Shc_p_Grb2_Sos
		4.0	;	%	715	Shc_p_Grb2_Sos = Shc_p+Grb2_Sos
		0.2	;	%	716	Shc_p+ShcPase = Shc_p_ShcPase
		3.0	;	%	717	Shc_p_ShcPase = Shc_p+ShcPase
		1.5	;	%	718	Shc_p_ShcPase = Shc+ShcPase
		0.2	;	%	719	HER2_2_p_Shc_p+ShcPase = HER2_2_p_Shc_p_ShcPase
		3.0	;	%	720	HER2_2_p_Shc_p_ShcPase = HER2_2_p_Shc_p+ShcPase
		1.6	;	%	721	HER2_2_p_Shc_p_ShcPase = HER2_2_p_Shc+ShcPase
		1.0	;	%	722	EGFR_EGF_2_p_Shc_p+ShcPase = EGFR_EGF_2_p_Shc_p_ShcPase
		5.0	;	%	723	EGFR_EGF_2_p_Shc_p_ShcPase = EGFR_EGF_2_p_Shc_p+ShcPase
		4.0	;	%	724	EGFR_EGF_2_p_Shc_p_ShcPase = EGFR_EGF_2_p_Shc+ShcPase
		0.2	;	%	725	GAB_m_p+GABPase = GAB_m_p_GABPase
		5.0	;	%	726	GAB_m_p_GABPase = GAB_m_p+GABPase
		0.8	;	%	727	GAB_m_p_GABPase = GAB_m+GABPase
		0.3	;	%	728	HER2_2_p_Grb2_GAB_m_p+GABPase = HER2_2_p_Grb2_GAB_m_p_GABPase
		5.0	;	%	729	HER2_2_p_Grb2_GAB_m_p_GABPase = HER2_2_p_Grb2_GAB_m_p+GABPase
		1.0	;	%	730	HER2_2_p_Grb2_GAB_m_p_GABPase = HER2_2_p_Grb2_GAB_m+GABPase
		1.0	;	%	731	EGFR_EGF_2_p_Grb2_GAB_m_p+GABPase = EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase
		4.0	;	%	732	EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase = EGFR_EGF_2_p_Grb2_GAB_m_p+GABPase
		3.0	;	%	733	EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase = EGFR_EGF_2_p_Grb2_GAB_m+GABPase
		0.8	;	%	734	GAB = GAB_m
		4.0	;	%	735	GAB_m = GAB
		0.5	;	%	736	HER2_2_p_Grb2+GAB_m = HER2_2_p_Grb2_GAB_m
		4.0	;	%	737	HER2_2_p_Grb2_GAB_m = HER2_2_p_Grb2+GAB_m
		0.8	;	%	738	HER2_2_p_Grb2_GAB_m = HER2_2_p_Grb2_GAB_m_p
		0.6	;	%	739	HER2_2_p_Grb2_GAB_m_p = HER2_2_p_Grb2+GAB_m_p
		0.8	;	%	740	HER2_2_p_Grb2+GAB_m_p = HER2_2_p_Grb2_GAB_m_p
		0.5	;	%	741	HER2_2_p_Grb2_GAB_m_p+PI3K = HER2_2_p_Grb2_GAB_m_p_PI3K
		4.0	;	%	742	HER2_2_p_Grb2_GAB_m_p_PI3K = HER2_2_p_Grb2_GAB_m_p+PI3K
		1.0	;	%	743	HER2_2_p_Grb2_GAB_m_p_PI3K = HER2_2_p_Grb2_GAB_m_p_PI3K_Act
		7.0	;	%	744	HER2_2_p_Grb2_GAB_m_p_PI3K_Act = HER2_2_p_Grb2_GAB_m_p+PI3K_Act
		0.3	;	%	745	HER2_2_p_Grb2_GAB_m_p+PI3K_Act = HER2_2_p_Grb2_GAB_m_p_PI3K_Act
		0.4	;	%	746	HER2_2_p_Grb2_Sos_Ras_GTP+PI3K = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K
		4.0	;	%	747	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Grb2_Sos_Ras_GTP+PI3K
		2.0	;	%	748	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		7.0	;	%	749	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act = HER2_2_p_Grb2_Sos_Ras_GTP+PI3K_Act
		0.3	;	%	750	HER2_2_p_Grb2_Sos_Ras_GTP+PI3K_Act = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.3	;	%	751	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
		4.0	;	%	752	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K
		1.0	;	%	753	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		7.0	;	%	754	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act
		0.3	;	%	755	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		8.0	;	%	756	EGFR_EGF_2_p_Grb2+GAB_m = EGFR_EGF_2_p_Grb2_GAB_m
		20.0	;	%	757	EGFR_EGF_2_p_Grb2_GAB_m = EGFR_EGF_2_p_Grb2+GAB_m
		8.0	;	%	758	EGFR_EGF_2_p_Grb2_GAB_m = EGFR_EGF_2_p_Grb2_GAB_m_p
		1.0	;	%	759	EGFR_EGF_2_p_Grb2_GAB_m_p = EGFR_EGF_2_p_Grb2+GAB_m_p
		8.0	;	%	760	EGFR_EGF_2_p_Grb2+GAB_m_p = EGFR_EGF_2_p_Grb2_GAB_m_p
		5.0	;	%	761	EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K
		10.0	;	%	762	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K
		10.0	;	%	763	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act
		20.0	;	%	764	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act = EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K_Act
		1.0	;	%	765	EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K_Act = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act
		5.0	;	%	766	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K
		10.0	;	%	767	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K
		10.0	;	%	768	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		20.0	;	%	769	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K_Act
		1.0	;	%	770	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K_Act = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		5.0	;	%	771	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
		10.0	;	%	772	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K
		10.0	;	%	773	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		20.0	;	%	774	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act
		1.0	;	%	775	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.4	;	%	776	PI3K_Act+PI3KPase = PI3K_Act_PI3KPase
		4.0	;	%	777	PI3K_Act_PI3KPase = PI3K_Act+PI3KPase
		2.0	;	%	778	PI3K_Act_PI3KPase = PI3K+PI3KPase
		0.3	;	%	779	HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
		4.0	;	%	780	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase
		3.0	;	%	781	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K+PI3KPase
		0.4	;	%	782	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		4.0	;	%	783	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
		3.0	;	%	784	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
		0.3	;	%	785	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		4.0	;	%	786	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
		3.0	;	%	787	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
		1.0	;	%	788	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
		5.0	;	%	789	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase
		5.0	;	%	790	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K+PI3KPase
		1.0	;	%	791	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		5.0	;	%	792	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
		5.0	;	%	793	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
		1.0	;	%	794	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		5.0	;	%	795	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
		5.0	;	%	796	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
		0.3	;	%	797	HER2_2_p+PLCg = HER2_2_p_PLCg
		5.0	;	%	798	HER2_2_p_PLCg = HER2_2_p+PLCg
		0.8	;	%	799	HER2_2_p_PLCg = HER2_2_p_PLCg_p
		1.3	;	%	800	HER2_2_p_PLCg_p = HER2_2_p+PLCg_p
		0.6	;	%	801	HER2_2_p+PLCg_p = HER2_2_p_PLCg_p
		2.0	;	%	802	EGFR_EGF_2_p+PLCg = EGFR_EGF_2_p_PLCg
		10.0	;	%	803	EGFR_EGF_2_p_PLCg = EGFR_EGF_2_p+PLCg
		8.0	;	%	804	EGFR_EGF_2_p_PLCg = EGFR_EGF_2_p_PLCg_p
		10.0	;	%	805	EGFR_EGF_2_p_PLCg_p = EGFR_EGF_2_p+PLCg_p
		1.0	;	%	806	EGFR_EGF_2_p+PLCg_p = EGFR_EGF_2_p_PLCg_p
		0.3	;	%	807	PLCg_p+PLCgPase = PLCg_p_PLCgPase
		4.0	;	%	808	PLCg_p_PLCgPase = PLCg_p+PLCgPase
		1.0	;	%	809	PLCg_p_PLCgPase = PLCg+PLCgPase
		0.4	;	%	810	HER2_2_p_PLCg_p+PLCgPase = HER2_2_p_PLCg_p_PLCgPase
		5.0	;	%	811	HER2_2_p_PLCg_p_PLCgPase = HER2_2_p_PLCg_p+PLCgPase
		1.0	;	%	812	HER2_2_p_PLCg_p_PLCgPase = HER2_2_p_PLCg+PLCgPase
		1.0	;	%	813	EGFR_EGF_2_p_PLCg_p+PLCgPase = EGFR_EGF_2_p_PLCg_p_PLCgPase
		5.0	;	%	814	EGFR_EGF_2_p_PLCg_p_PLCgPase = EGFR_EGF_2_p_PLCg_p+PLCgPase
		5.0	;	%	815	EGFR_EGF_2_p_PLCg_p_PLCgPase = EGFR_EGF_2_p_PLCg+PLCgPase
		0.4	;	%	816	PLCg_p+PIP2 = PLCg_p_PIP2
		4.0	;	%	817	PLCg_p_PIP2 = PLCg_p+PIP2
		0.8	;	%	818	PLCg_p_PIP2 = PLCg_p+DAG+IP3
		0.6	;	%	819	HER2_2_p_PLCg_p+PIP2 = HER2_2_p_PLCg_p_PIP2
		5.0	;	%	820	HER2_2_p_PLCg_p_PIP2 = HER2_2_p_PLCg_p+PIP2
		1.0	;	%	821	HER2_2_p_PLCg_p_PIP2 = HER2_2_p_PLCg_p+DAG+IP3
		1.0	;	%	822	EGFR_EGF_2_p_PLCg_p+PIP2 = EGFR_EGF_2_p_PLCg_p_PIP2
		5.0	;	%	823	EGFR_EGF_2_p_PLCg_p_PIP2 = EGFR_EGF_2_p_PLCg_p+PIP2
		5.0	;	%	824	EGFR_EGF_2_p_PLCg_p_PIP2 = EGFR_EGF_2_p_PLCg_p+DAG+IP3
		1.5	;	%	825	DAG+IP3 = PIP2
		0.3	;	%	826	DAG+PKC = DAG_PKC
		4.0	;	%	827	DAG_PKC = DAG+PKC
		1.2	;	%	828	DAG_PKC = DAG+PKC_Act
		0.4	;	%	829	PKC_Act+PKCPase = PKC_Act_PKCPase
		4.0	;	%	830	PKC_Act_PKCPase = PKC_Act+PKCPase
		0.9	;	%	831	PKC_Act_PKCPase = PKC+PKCPase
		0.5	;	%	832	PKC_Act+CK2 = PKC_Act_CK2
		3.0	;	%	833	PKC_Act_CK2 = PKC_Act+CK2
		1.2	;	%	834	PKC_Act_CK2 = PKC_Act+CK2_p
		0.3	;	%	835	CK2Pase+CK2_p = CK2Pase_CK2_p
		2.0	;	%	836	CK2Pase_CK2_p = CK2Pase+CK2_p
		1.0	;	%	837	CK2Pase_CK2_p = CK2Pase+CK2
		0.4	;	%	838	CK2_p+MKP3 = CK2_p_MKP3
		2.0	;	%	839	CK2_p_MKP3 = CK2_p+MKP3
		1.0	;	%	840	CK2_p_MKP3 = CK2_p+MKP3_p
		0.3	;	%	841	PP2A+MKP3_p = PP2A_MKP3_p
		3.0	;	%	842	PP2A_MKP3_p = PP2A+MKP3_p
		1.0	;	%	843	PP2A_MKP3_p = PP2A+MKP3
		0.3	;	%	844	PKC_Act+Ras_GDP = PKC_Act_Ras_GDP
		3.0	;	%	845	PKC_Act_Ras_GDP = PKC_Act+Ras_GDP
		1.1	;	%	846	PKC_Act_Ras_GDP = PKC_Act+Ras_GTP
		0.2	;	%	847	PKC_Act+RAF = PKC_Act_RAF
		4.0	;	%	848	PKC_Act_RAF = PKC_Act+RAF
		0.9	;	%	849	PKC_Act_RAF = PKC_Act+RAF_Act
		0.32	;	%	850	HER2_2_p_Grb2_Sos_Ras_GTP+RAF = HER2_2_p_Grb2_Sos_Ras_GTP_RAF
		3.0	;	%	851	HER2_2_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Grb2_Sos_Ras_GTP+RAF
		1.4	;	%	852	HER2_2_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Grb2_Sos_Ras_GTP+RAF_Act
		0.32	;	%	853	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
		3.0	;	%	854	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF
		1.42	;	%	855	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF_Act
		5.0	;	%	856	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF
		10.0	;	%	857	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF
		20.0	;	%	858	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF_Act
		5.0	;	%	859	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
		10.0	;	%	860	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF
		20.0	;	%	861	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF_Act
		0.36	;	%	862	Ras_GTP+RAF = Ras_GTP_RAF
		3.0	;	%	863	Ras_GTP_RAF = Ras_GTP+RAF
		3.0	;	%	864	Ras_GTP_RAF = Ras_GTP+RAF_Act
		0.38	;	%	865	RAF_Act+PP1 = RAF_Act_PP1
		4.1	;	%	866	RAF_Act_PP1 = RAF_Act+PP1
		1.0	;	%	867	RAF_Act_PP1 = RAF+PP1
		0.38	;	%	868	RAF_Act+PP2A = RAF_Act_PP2A
		3.1	;	%	869	RAF_Act_PP2A = RAF_Act+PP2A
		1.4	;	%	870	RAF_Act_PP2A = RAF+PP2A
		0.42	;	%	871	MEK+RAF_Act = MEK_RAF_Act
		3.0	;	%	872	MEK_RAF_Act = MEK+RAF_Act
		2.8	;	%	873	MEK_RAF_Act = MEK_p+RAF_Act
		0.4	;	%	874	MEK_p+RAF_Act = MEK_p_RAF_Act
		4.0	;	%	875	MEK_p_RAF_Act = MEK_p+RAF_Act
		3.1	;	%	876	MEK_p_RAF_Act = MEK_pp+RAF_Act
		0.3	;	%	877	ERK+MEK_pp = ERK_MEK_pp
		3.5	;	%	878	ERK_MEK_pp = ERK+MEK_pp
		3.1	;	%	879	ERK_MEK_pp = ERK_p+MEK_pp
		0.32	;	%	880	ERK_p+MEK_pp = ERK_p_MEK_pp
		3.3	;	%	881	ERK_p_MEK_pp = ERK_p+MEK_pp
		4.1	;	%	882	ERK_p_MEK_pp = ERK_pp+MEK_pp
		0.38	;	%	883	MEK_p+MKP3_p = MEK_p_MKP3_p
		3.2	;	%	884	MEK_p_MKP3_p = MEK_p+MKP3_p
		1.5	;	%	885	MEK_p_MKP3_p = MEK+MKP3_p
		0.35	;	%	886	MEK_pp+MKP3_p = MEK_pp_MKP3_p
		4.7	;	%	887	MEK_pp_MKP3_p = MEK_pp+MKP3_p
		3.2	;	%	888	MEK_pp_MKP3_p = MEK_p+MKP3_p
		0.38	;	%	889	MEK_p+PP2A = MEK_p_PP2A
		4.1	;	%	890	MEK_p_PP2A = MEK_p+PP2A
		2.0	;	%	891	MEK_p_PP2A = MEK+PP2A
		0.36	;	%	892	MEK_pp+PP2A = MEK_pp_PP2A
		4.1	;	%	893	MEK_pp_PP2A = MEK_pp+PP2A
		2.0	;	%	894	MEK_pp_PP2A = MEK_p+PP2A
		0.36	;	%	895	ERK_p+MKP2 = ERK_p_MKP2
		4.2	;	%	896	ERK_p_MKP2 = ERK_p+MKP2
		1.6	;	%	897	ERK_p_MKP2 = ERK+MKP2
		0.27	;	%	898	ERK_pp+MKP2 = ERK_pp_MKP2
		4.1	;	%	899	ERK_pp_MKP2 = ERK_pp+MKP2
		1.6	;	%	900	ERK_pp_MKP2 = ERK_p+MKP2
		0.28	;	%	901	ERK_p+MKP3_p = ERK_p_MKP3_p
		4.1	;	%	902	ERK_p_MKP3_p = ERK_p+MKP3_p
		1.6	;	%	903	ERK_p_MKP3_p = ERK+MKP3_p
		0.24	;	%	904	ERK_pp+MKP3_p = ERK_pp_MKP3_p
		4.3	;	%	905	ERK_pp_MKP3_p = ERK_pp+MKP3_p
		1.6	;	%	906	ERK_pp_MKP3_p = ERK_p+MKP3_p
		0.2	;	%	907	ERK_p+MKP1 = ERK_p_MKP1
		4.2	;	%	908	ERK_p_MKP1 = ERK_p+MKP1
		1.6	;	%	909	ERK_p_MKP1 = ERK+MKP1
		0.27	;	%	910	ERK_pp+MKP1 = ERK_pp_MKP1
		4.2	;	%	911	ERK_pp_MKP1 = ERK_pp+MKP1
		1.6	;	%	912	ERK_pp_MKP1 = ERK_p+MKP1
		0.26	;	%	913	ERK_p+MKP1_p = ERK_p_MKP1_p
		4.2	;	%	914	ERK_p_MKP1_p = ERK_p+MKP1_p
		1.6	;	%	915	ERK_p_MKP1_p = ERK+MKP1_p
		0.2	;	%	916	ERK_pp+MKP1_p = ERK_pp_MKP1_p
		4.1	;	%	917	ERK_pp_MKP1_p = ERK_pp+MKP1_p
		1.6	;	%	918	ERK_pp_MKP1_p = ERK_p+MKP1_p
		0.2	;	%	919	ERK_pp+MKP1 = ERK_pp_MKP1
		4.0	;	%	920	ERK_pp_MKP1 = ERK_pp+MKP1
		1.6	;	%	921	ERK_pp_MKP1 = ERK_pp+MKP1_p
		0.3	;	%	922	MKP3_p+MKP1_p = MKP3_p_MKP1_p
		4.0	;	%	923	MKP3_p_MKP1_p = MKP3_p+MKP1_p
		1.0	;	%	924	MKP3_p_MKP1_p = MKP3_p+MKP1
		0.4	;	%	925	HER2_2_p_Grb2_Sos+ERK_pp = HER2_2_p_Grb2_Sos_ERK_pp
		5.0	;	%	926	HER2_2_p_Grb2_Sos_ERK_pp = HER2_2_p_Grb2_Sos+ERK_pp
		4.0	;	%	927	HER2_2_p_Grb2_Sos_ERK_pp = HER2_2_p_Grb2_Sos_p+ERK_pp
		2.2	;	%	928	HER2_2_p_Grb2_Sos_p = HER2_2_p_Grb2+Sos_p
		2.0	;	%	929	HER2_2_p_Grb2_Sos_p = HER2_2_p+Grb2_Sos_p
		0.4	;	%	930	HER2_2_p_Shc_p_Grb2_Sos+ERK_pp = HER2_2_p_Shc_p_Grb2_Sos_ERK_pp
		5.0	;	%	931	HER2_2_p_Shc_p_Grb2_Sos_ERK_pp = HER2_2_p_Shc_p_Grb2_Sos+ERK_pp
		4.0	;	%	932	HER2_2_p_Shc_p_Grb2_Sos_ERK_pp = HER2_2_p_Shc_p_Grb2_Sos_p+ERK_pp
		2.2	;	%	933	HER2_2_p_Shc_p_Grb2_Sos_p = HER2_2_p_Shc_p_Grb2+Sos_p
		2.2	;	%	934	HER2_2_p_Shc_p_Grb2_Sos_p = HER2_2_p_Shc_p+Grb2_Sos_p
		10.0	;	%	935	EGFR_EGF_2_p_Grb2_Sos+ERK_pp = EGFR_EGF_2_p_Grb2_Sos_ERK_pp
		30.0	;	%	936	EGFR_EGF_2_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Grb2_Sos+ERK_pp
		80.0	;	%	937	EGFR_EGF_2_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Grb2_Sos_p+ERK_pp
		100.0	;	%	938	EGFR_EGF_2_p_Grb2_Sos_p = EGFR_EGF_2_p_Grb2+Sos_p
		100.0	;	%	939	EGFR_EGF_2_p_Grb2_Sos_p = EGFR_EGF_2_p+Grb2_Sos_p
		10.0	;	%	940	EGFR_EGF_2_p_Shc_p_Grb2_Sos+ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp
		30.0	;	%	941	EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos+ERK_pp
		80.0	;	%	942	EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+ERK_pp
		100.0	;	%	943	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p = EGFR_EGF_2_p_Shc_p_Grb2+Sos_p
		100.0	;	%	944	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p = EGFR_EGF_2_p_Shc_p+Grb2_Sos_p
		0.3	;	%	945	Sos_p+SosPase = Sos_p_SosPase
		6.0	;	%	946	Sos_p_SosPase = Sos_p+SosPase
		4.0	;	%	947	Sos_p_SosPase = Sos+SosPase
		0.26	;	%	948	Grb2_Sos_p+SosPase = Grb2_Sos_p_SosPase
		6.0	;	%	949	Grb2_Sos_p_SosPase = Grb2_Sos_p+SosPase
		4.0	;	%	950	Grb2_Sos_p_SosPase = Grb2_Sos+SosPase
		0.2	;	%	951	HER2_2_p_Grb2_Sos_p+SosPase = HER2_2_p_Grb2_Sos_p_SosPase
		5.0	;	%	952	HER2_2_p_Grb2_Sos_p_SosPase = HER2_2_p_Grb2_Sos_p+SosPase
		2.0	;	%	953	HER2_2_p_Grb2_Sos_p_SosPase = HER2_2_p_Grb2_Sos+SosPase
		0.2	;	%	954	HER2_2_p_Shc_p_Grb2_Sos_p+SosPase = HER2_2_p_Shc_p_Grb2_Sos_p_SosPase
		5.0	;	%	955	HER2_2_p_Shc_p_Grb2_Sos_p_SosPase = HER2_2_p_Shc_p_Grb2_Sos_p+SosPase
		2.0	;	%	956	HER2_2_p_Shc_p_Grb2_Sos_p_SosPase = HER2_2_p_Shc_p_Grb2_Sos+SosPase
		1.0	;	%	957	EGFR_EGF_2_p_Grb2_Sos_p+SosPase = EGFR_EGF_2_p_Grb2_Sos_p_SosPase
		5.0	;	%	958	EGFR_EGF_2_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Grb2_Sos_p+SosPase
		5.0	;	%	959	EGFR_EGF_2_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Grb2_Sos+SosPase
		1.0	;	%	960	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase
		5.0	;	%	961	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+SosPase
		5.0	;	%	962	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos+SosPase
		0.08	;	%	963	ERK_pp+MEK = ERK_pp_MEK
		3.1	;	%	964	ERK_pp_MEK = ERK_pp+MEK
		1.3	;	%	965	ERK_pp_MEK = ERK_pp+MEK_rp
		0.3	;	%	966	MEK_rp+MKP3_p = MEK_rp_MKP3_p
		3.0	;	%	967	MEK_rp_MKP3_p = MEK_rp+MKP3_p
		1.4	;	%	968	MEK_rp_MKP3_p = MEK+MKP3_p
		0.3	;	%	969	MEK_rp+PP2A = MEK_rp_PP2A
		3.0	;	%	970	MEK_rp_PP2A = MEK_rp+PP2A
		1.5	;	%	971	MEK_rp_PP2A = MEK+PP2A
		0.07	;	%	972	ERK_pp+RAF_Act = ERK_pp_RAF_Act
		5.3	;	%	973	ERK_pp_RAF_Act = ERK_pp+RAF_Act
		2.0	;	%	974	ERK_pp_RAF_Act = ERK_pp+RAF_Act_Inhib
		0.1	;	%	975	AKT_p+RAF = AKT_p_RAF
		5.0	;	%	976	AKT_p_RAF = AKT_p+RAF
		0.6	;	%	977	AKT_p_RAF = AKT_p+RAF_Inhib
		0.07	;	%	978	AKT_p+RAF_Act = AKT_p_RAF_Act
		5.2	;	%	979	AKT_p_RAF_Act = AKT_p+RAF_Act
		0.6	;	%	980	AKT_p_RAF_Act = AKT_p+RAF_Act_Inhib
		0.25	;	%	981	RAF_Inhib+PP1 = RAF_Inhib_PP1
		4.0	;	%	982	RAF_Inhib_PP1 = RAF_Inhib+PP1
		2.8	;	%	983	RAF_Inhib_PP1 = RAF+PP1
		0.2	;	%	984	RAF_Act_Inhib+PP1 = RAF_Act_Inhib_PP1
		6.0	;	%	985	RAF_Act_Inhib_PP1 = RAF_Act_Inhib+PP1
		3.0	;	%	986	RAF_Act_Inhib_PP1 = RAF_Act+PP1
		0.25	;	%	987	RAF_Inhib+PP2A = RAF_Inhib_PP2A
		5.0	;	%	988	RAF_Inhib_PP2A = RAF_Inhib+PP2A
		3.0	;	%	989	RAF_Inhib_PP2A = RAF+PP2A
		0.05	;	%	990	ERK_pp+cPLA2 = ERK_pp_cPLA2
		4.2	;	%	991	ERK_pp_cPLA2 = ERK_pp+cPLA2
		0.7	;	%	992	ERK_pp_cPLA2 = ERK_pp+cPLA2_p
		0.4	;	%	993	cPLA2_p+cPLA2Pase = cPLA2_p_cPLA2Pase
		5.0	;	%	994	cPLA2_p_cPLA2Pase = cPLA2_p+cPLA2Pase
		0.8	;	%	995	cPLA2_p_cPLA2Pase = cPLA2+cPLA2Pase
		0.3	;	%	996	cPLA2_p+PKC = cPLA2_p_PKC
		5.0	;	%	997	cPLA2_p_PKC = cPLA2_p+PKC
		0.7	;	%	998	cPLA2_p_PKC = cPLA2_p+PKC_Act
		0.2	;	%	999	PI3K_Act+PIP2 = PI3K_Act_PIP2
		4.0	;	%	1000	PI3K_Act_PIP2 = PI3K_Act+PIP2
		1.5	;	%	1001	PI3K_Act_PIP2 = PI3K_Act+PIP3
		0.1	;	%	1002	HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
		4.0	;	%	1003	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2
		1.1	;	%	1004	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP3
		0.1	;	%	1005	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		4.0	;	%	1006	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
		1.1	;	%	1007	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
		0.1	;	%	1008	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		4.0	;	%	1009	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
		1.1	;	%	1010	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
		5.0	;	%	1011	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
		10.0	;	%	1012	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2
		20.0	;	%	1013	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP3
		5.0	;	%	1014	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		10.0	;	%	1015	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
		20.0	;	%	1016	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
		5.0	;	%	1017	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		10.0	;	%	1018	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
		20.0	;	%	1019	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
		0.2	;	%	1020	PIP3+GAB = PIP3_GAB
		4.0	;	%	1021	PIP3_GAB = PIP3+GAB
		0.9	;	%	1022	PIP3_GAB = PIP3+GAB_m
		0.3	;	%	1023	PIP3+PTEN = PIP3_PTEN
		4.0	;	%	1024	PIP3_PTEN = PIP3+PTEN
		1.7	;	%	1025	PIP3_PTEN = PIP2+PTEN
		0.4	;	%	1026	PIP3+AKT = PIP3_AKT
		4.0	;	%	1027	PIP3_AKT = PIP3+AKT
		2.3	;	%	1028	PIP3_AKT = PIP3+AKT_m
		0.4	;	%	1029	PIP3+PDK1 = PIP3_PDK1
		4.0	;	%	1030	PIP3_PDK1 = PIP3+PDK1
		2.3	;	%	1031	PIP3_PDK1 = PIP3+PDK1_m
		0.6	;	%	1032	PDK1_m+AKT_m = PDK1_m_AKT_m
		5.0	;	%	1033	PDK1_m_AKT_m = PDK1_m+AKT_m
		3.7	;	%	1034	PDK1_m_AKT_m = PDK1_m+AKT_p
		1.5	;	%	1035	AKT_m = AKT
		1.5	;	%	1036	PDK1_m = PDK1
		0.4	;	%	1037	AKT_p+PP2A = AKT_p_PP2A
		4.0	;	%	1038	AKT_p_PP2A = AKT_p+PP2A
		0.9	;	%	1039	AKT_p_PP2A = AKT+PP2A
		0.2	;	%	1040	AKT_p+TOR = AKT_p_TOR
		5.0	;	%	1041	AKT_p_TOR = AKT_p+TOR
		2.3	;	%	1042	AKT_p_TOR = AKT_p+TOR_Act
		0.2	;	%	1043	TOR_Act+TORPase = TOR_Act_TORPase
		4.0	;	%	1044	TOR_Act_TORPase = TOR_Act+TORPase
		1.6	;	%	1045	TOR_Act_TORPase = TOR+TORPase
		0.35	;	%	1046	TSC1+TSC2 = TSC1_TSC2
		5.0	;	%	1047	TSC1_TSC2 = TSC1+TSC2
		0.2	;	%	1048	Rheb_GTP+TSC1_TSC2 = Rheb_GTP_TSC1_TSC2
		4.0	;	%	1049	Rheb_GTP_TSC1_TSC2 = Rheb_GTP+TSC1_TSC2
		1.0	;	%	1050	Rheb_GTP_TSC1_TSC2 = Rheb_GDP+TSC1_TSC2
		0.2	;	%	1051	Rheb_GTP+TSC1 = Rheb_GTP_TSC1
		4.0	;	%	1052	Rheb_GTP_TSC1 = Rheb_GTP+TSC1
		1.0	;	%	1053	Rheb_GTP_TSC1 = Rheb_GDP+TSC1
		0.2	;	%	1054	Rheb_GTP+TSC2 = Rheb_GTP_TSC2
		4.0	;	%	1055	Rheb_GTP_TSC2 = Rheb_GTP+TSC2
		1.0	;	%	1056	Rheb_GTP_TSC2 = Rheb_GDP+TSC2
		0.1	;	%	1057	Rheb_GDP+RhebGEF = Rheb_GDP_RhebGEF
		5.0	;	%	1058	Rheb_GDP_RhebGEF = Rheb_GDP+RhebGEF
		2.1	;	%	1059	Rheb_GDP_RhebGEF = Rheb_GTP+RhebGEF
		0.2	;	%	1060	Rheb_GTP+TOR = Rheb_GTP_TOR
		5.0	;	%	1061	Rheb_GTP_TOR = Rheb_GTP+TOR
		2.0	;	%	1062	Rheb_GTP_TOR = Rheb_GTP+TOR_Act
		0.2	;	%	1063	TSC1+AKT_p = TSC1_AKT_p
		4.2	;	%	1064	TSC1_AKT_p = TSC1+AKT_p
		1.2	;	%	1065	TSC1_AKT_p = TSC1_p+AKT_p
		0.2	;	%	1066	TSC2+AKT_p = TSC2_AKT_p
		4.3	;	%	1067	TSC2_AKT_p = TSC2+AKT_p
		1.2	;	%	1068	TSC2_AKT_p = TSC2_p+AKT_p
		0.2	;	%	1069	TSC1_TSC2+AKT_p = TSC1_TSC2_AKT_p
		5.2	;	%	1070	TSC1_TSC2_AKT_p = TSC1_TSC2+AKT_p
		1.2	;	%	1071	TSC1_TSC2_AKT_p = TSC1_TSC2_p+AKT_p
		0.02	;	%	1072	TSC2+ERK_pp = TSC2_ERK_pp
		4.4	;	%	1073	TSC2_ERK_pp = TSC2+ERK_pp
		0.8	;	%	1074	TSC2_ERK_pp = TSC2_p+ERK_pp
		0.04	;	%	1075	TSC1_TSC2+ERK_pp = TSC1_TSC2_ERK_pp
		5.0	;	%	1076	TSC1_TSC2_ERK_pp = TSC1_TSC2+ERK_pp
		0.7	;	%	1077	TSC1_TSC2_ERK_pp = TSC1_TSC2_p+ERK_pp
		0.4	;	%	1078	TSC1_p+TSCPase = TSC1_p_TSCPase
		4.0	;	%	1079	TSC1_p_TSCPase = TSC1_p+TSCPase
		1.0	;	%	1080	TSC1_p_TSCPase = TSC1+TSCPase
		0.5	;	%	1081	TSC2_p+TSCPase = TSC2_p_TSCPase
		4.0	;	%	1082	TSC2_p_TSCPase = TSC2_p+TSCPase
		1.0	;	%	1083	TSC2_p_TSCPase = TSC2+TSCPase
		0.3	;	%	1084	TSC1_TSC2_p+TSCPase = TSC1_TSC2_p_TSCPase
		4.0	;	%	1085	TSC1_TSC2_p_TSCPase = TSC1_TSC2_p+TSCPase
		2.0	;	%	1086	TSC1_TSC2_p_TSCPase = TSC1_TSC2+TSCPase
		2.0	;	%	1087	R4EBP1+eIF4E = R4EBP1_eIF4E
		3.0	;	%	1088	R4EBP1_eIF4E = R4EBP1+eIF4E
		0.8	;	%	1089	R4EBP1+TOR_Act = R4EBP1_TOR_Act
		4.0	;	%	1090	R4EBP1_TOR_Act = R4EBP1+TOR_Act
		3.6	;	%	1091	R4EBP1_TOR_Act = R4EBP1_p+TOR_Act
		0.8	;	%	1092	R4EBP1_eIF4E+TOR_Act = R4EBP1_eIF4E_TOR_Act
		4.0	;	%	1093	R4EBP1_eIF4E_TOR_Act = R4EBP1_eIF4E+TOR_Act
		3.7	;	%	1094	R4EBP1_eIF4E_TOR_Act = R4EBP1_p+eIF4E+TOR_Act
		0.5	;	%	1095	R4EBP1_p+R4EBP1Pase = R4EBP1_p_R4EBP1Pase
		4.0	;	%	1096	R4EBP1_p_R4EBP1Pase = R4EBP1_p+R4EBP1Pase
		2.0	;	%	1097	R4EBP1_p_R4EBP1Pase = R4EBP1+R4EBP1Pase
		0.3	;	%	1098	p70+TOR_Act = p70_TOR_Act
		4.0	;	%	1099	p70_TOR_Act = p70+TOR_Act
		3.0	;	%	1100	p70_TOR_Act = p70_Act+TOR_Act
		0.4	;	%	1101	p70_Act+Ribo40S_inact = p70_Act_Ribo40S_inact
		4.0	;	%	1102	p70_Act_Ribo40S_inact = p70_Act+Ribo40S_inact
		3.0	;	%	1103	p70_Act_Ribo40S_inact = p70_Act+Ribo40S
		0.3	;	%	1104	p70_Act+p70Pase = p70_Act_p70Pase
		4.0	;	%	1105	p70_Act_p70Pase = p70_Act+p70Pase
		2.0	;	%	1106	p70_Act_p70Pase = p70+p70Pase
		0.3	;	%	1107	Ribo40S+Ribo40SPase = Ribo40S_Ribo40SPase
		4.0	;	%	1108	Ribo40S_Ribo40SPase = Ribo40S+Ribo40SPase
		2.0	;	%	1109	Ribo40S_Ribo40SPase = Ribo40S_inact+Ribo40SPase
		1.0	;	%	1110	HER2_2_p+cPAcP = HER2_2_p_cPAcP
		8.0	;	%	1111	HER2_2_p_cPAcP = HER2_2_p+cPAcP
		7.0	;	%	1112	HER2_2_p_cPAcP = HER2_2+cPAcP
		1.0	;	%	1113	EGFR_EGF_2_p+cPAcP = EGFR_EGF_2_p_cPAcP
		5.0	;	%	1114	EGFR_EGF_2_p_cPAcP = EGFR_EGF_2_p+cPAcP
		2.0	;	%	1115	EGFR_EGF_2_p_cPAcP = EGFR_EGF_2+cPAcP
		0.04	;	%	1116	2*cPAcP = cPAcP_2
		7.0	;	%	1117	cPAcP_2 = 2*cPAcP
		0.02	;	%	1118	2*cPAcP_2 = cPAcP_2_4
		8.0	;	%	1119	cPAcP_2_4 = 2*cPAcP_2
		0.2	;	%	1120	2*HER2_2_p+cPAcP_2 = HER2_2_p_cPAcP_2
		7.0	;	%	1121	HER2_2_p_cPAcP_2 = 2*HER2_2_p+cPAcP_2
		5.0	;	%	1122	HER2_2_p_cPAcP_2 = 2*HER2_2+cPAcP_2
		0.2	;	%	1123	4*HER2_2_p+cPAcP_4 = HER2_2_p_cPAcP_4
		7.0	;	%	1124	HER2_2_p_cPAcP_4 = 4*HER2_2_p+cPAcP_4
		5.0	;	%	1125	HER2_2_p_cPAcP_4 = 4*HER2_2+cPAcP_4
		0.2	;	%	1126	HER2_2+sPAcP = HER2_2_sPAcP
		8.0	;	%	1127	HER2_2_sPAcP = HER2_2+sPAcP
		0.8	;	%	1128	HER2_2_sPAcP = HER2_2_p+sPAcP
		4.0	;	%	1129	sPAcP = sPAcP_e
		0.2	;	%	1130	sPAcP_e = sPAcP
		4.0	;	%	1131	sPAcP_e = []
		0.075	;	%	1132	ERK_pp+AR = ERK_pp_AR
		7.1	;	%	1133	ERK_pp_AR = ERK_pp+AR
		3.8	;	%	1134	ERK_pp_AR = ERK_pp+AR_p
		0.0	;	%	1135	AKT_p+AR = AKT_p_AR
		0.0	;	%	1136	AKT_p_AR = AKT_p+AR
		0.0	;	%	1137	AKT_p_AR = AKT_p+AR_p
		0.1	;	%	1138	Import+ETS = Import_ETS
		5.0	;	%	1139	Import_ETS = Import+ETS
		2.0	;	%	1140	Import_ETS = Import+ETS_n
		0.1	;	%	1141	Export+ETS_n = Export_ETS_n
		4.0	;	%	1142	Export_ETS_n = Export+ETS_n
		2.0	;	%	1143	Export_ETS_n = Export+ETS
		0.1	;	%	1144	Import+AP1 = Import_AP1
		4.0	;	%	1145	Import_AP1 = Import+AP1
		2.0	;	%	1146	Import_AP1 = Import+AP1_n
		0.1	;	%	1147	Export+AP1_n = Export_AP1_n
		5.0	;	%	1148	Export_AP1_n = Export+AP1_n
		2.0	;	%	1149	Export_AP1_n = Export+AP1
		2.5	;	%	1150	ETS_n = []
		2.5	;	%	1151	AP1_n = []
		0.2	;	%	1152	Import+ERK_pp = Import_ERK_pp
		4.0	;	%	1153	Import_ERK_pp = Import+ERK_pp
		2.3	;	%	1154	Import_ERK_pp = Import+ERK_pp_n
		0.2	;	%	1155	Export+ERK_pp_n = Export_ERK_pp_n
		4.0	;	%	1156	Export_ERK_pp_n = Export+ERK_pp_n
		2.0	;	%	1157	Export_ERK_pp_n = Export+ERK_pp
		0.08	;	%	1158	ERK_pp+ETS = ERK_pp_ETS
		4.0	;	%	1159	ERK_pp_ETS = ERK_pp+ETS
		2.0	;	%	1160	ERK_pp_ETS = ERK_pp+ETS_p
		0.08	;	%	1161	ERK_pp_n+ETS_n = ERK_pp_n_ETS_n
		4.0	;	%	1162	ERK_pp_n_ETS_n = ERK_pp_n+ETS_n
		2.0	;	%	1163	ERK_pp_n_ETS_n = ERK_pp_n+ETS_p_n
		0.08	;	%	1164	ERK_pp+AP1 = ERK_pp_AP1
		4.0	;	%	1165	ERK_pp_AP1 = ERK_pp+AP1
		2.0	;	%	1166	ERK_pp_AP1 = ERK_pp+AP1_p
		0.08	;	%	1167	ERK_pp_n+AP1_n = ERK_pp_n_AP1_n
		4.0	;	%	1168	ERK_pp_n_AP1_n = ERK_pp_n+AP1_n
		2.0	;	%	1169	ERK_pp_n_AP1_n = ERK_pp_n+AP1_p_n
		0.1	;	%	1170	PKC_Act+ETS = PKC_Act_ETS
		6.0	;	%	1171	PKC_Act_ETS = PKC_Act+ETS
		1.0	;	%	1172	PKC_Act_ETS = PKC_Act+ETS_p
		0.3	;	%	1173	Import+ETS_p = Import_ETS_p
		4.0	;	%	1174	Import_ETS_p = Import+ETS_p
		3.0	;	%	1175	Import_ETS_p = Import+ETS_p_n
		0.2	;	%	1176	Export+ETS_p_n = Export_ETS_p_n
		4.0	;	%	1177	Export_ETS_p_n = Export+ETS_p_n
		2.0	;	%	1178	Export_ETS_p_n = Export+ETS_p
		0.3	;	%	1179	Import+AP1_p = Import_AP1_p
		4.0	;	%	1180	Import_AP1_p = Import+AP1_p
		2.0	;	%	1181	Import_AP1_p = Import+AP1_p_n
		0.2	;	%	1182	Export+AP1_p_n = Export_AP1_p_n
		4.0	;	%	1183	Export_AP1_p_n = Export+AP1_p_n
		2.0	;	%	1184	Export_AP1_p_n = Export+AP1_p
		0.3	;	%	1185	ETS_p+ETSPase = ETS_p_ETSPase
		2.0	;	%	1186	ETS_p_ETSPase = ETS_p+ETSPase
		1.0	;	%	1187	ETS_p_ETSPase = ETS+ETSPase
		0.3	;	%	1188	AP1_p+AP1Pase = AP1_p_AP1Pase
		2.0	;	%	1189	AP1_p_AP1Pase = AP1_p+AP1Pase
		1.0	;	%	1190	AP1_p_AP1Pase = AP1+AP1Pase
		0.3	;	%	1191	Import+PP2A = Import_PP2A
		3.0	;	%	1192	Import_PP2A = Import+PP2A
		2.0	;	%	1193	Import_PP2A = Import+PP2A_n
		0.3	;	%	1194	Export+PP2A_n = Export_PP2A_n
		3.0	;	%	1195	Export_PP2A_n = Export+PP2A_n
		2.0	;	%	1196	Export_PP2A_n = Export+PP2A
		1.5	;	%	1197	PP2A_n = []
		0.06	;	%	1198	ERK_pp_n+PP2A_n = ERK_pp_n_PP2A_n
		3.0	;	%	1199	ERK_pp_n_PP2A_n = ERK_pp_n+PP2A_n
		2.1	;	%	1200	ERK_pp_n_PP2A_n = ERK_p_n+PP2A_n
		0.08	;	%	1201	ERK_p_n+PP2A_n = ERK_p_n_PP2A_n
		3.0	;	%	1202	ERK_p_n_PP2A_n = ERK_p_n+PP2A_n
		2.1	;	%	1203	ERK_p_n_PP2A_n = ERK_n+PP2A_n
		0.3	;	%	1204	Export+ERK_p_n = Export_ERK_p_n
		3.0	;	%	1205	Export_ERK_p_n = Export+ERK_p_n
		3.1	;	%	1206	Export_ERK_p_n = Export+ERK_p
		0.4	;	%	1207	Export+ERK_n = Export_ERK_n
		3.0	;	%	1208	Export_ERK_n = Export+ERK_n
		4.2	;	%	1209	Export_ERK_n = Export+ERK
		1.5	;	%	1210	ERK_n = []
		0.3	;	%	1211	Import+Sam68 = Import_Sam68
		3.0	;	%	1212	Import_Sam68 = Import+Sam68
		1.0	;	%	1213	Import_Sam68 = Import+Sam68_n
		0.3	;	%	1214	Export+Sam68_n = Export_Sam68_n
		3.0	;	%	1215	Export_Sam68_n = Export+Sam68_n
		1.0	;	%	1216	Export_Sam68_n = Export+Sam68
		0.03	;	%	1217	Sam68+ERK_pp = Sam68_ERK_pp
		3.4	;	%	1218	Sam68_ERK_pp = Sam68+ERK_pp
		2.1	;	%	1219	Sam68_ERK_pp = Sam68_p+ERK_pp
		0.3	;	%	1220	Import+Sam68_p = Import_Sam68_p
		3.0	;	%	1221	Import_Sam68_p = Import+Sam68_p
		2.0	;	%	1222	Import_Sam68_p = Import+Sam68_p_n
		0.03	;	%	1223	Sam68_n+ERK_pp_n = Sam68_n_ERK_pp_n
		3.2	;	%	1224	Sam68_n_ERK_pp_n = Sam68_n+ERK_pp_n
		1.1	;	%	1225	Sam68_n_ERK_pp_n = Sam68_p_n+ERK_pp_n
		0.3	;	%	1226	Import+Sam68Pase = Import_Sam68Pase
		3.0	;	%	1227	Import_Sam68Pase = Import+Sam68Pase
		1.0	;	%	1228	Import_Sam68Pase = Import+Sam68Pase_n
		0.3	;	%	1229	Export+Sam68Pase_n = Export_Sam68Pase_n
		3.0	;	%	1230	Export_Sam68Pase_n = Export+Sam68Pase_n
		1.0	;	%	1231	Export_Sam68Pase_n = Export+Sam68Pase
		0.3	;	%	1232	Sam68_p+Sam68Pase = Sam68_p_Sam68Pase
		2.0	;	%	1233	Sam68_p_Sam68Pase = Sam68_p+Sam68Pase
		1.0	;	%	1234	Sam68_p_Sam68Pase = Sam68+Sam68Pase
		0.3	;	%	1235	Sam68_p_n+Sam68Pase_n = Sam68_p_n_Sam68Pase_n
		2.0	;	%	1236	Sam68_p_n_Sam68Pase_n = Sam68_p_n+Sam68Pase_n
		1.0	;	%	1237	Sam68_p_n_Sam68Pase_n = Sam68_n+Sam68Pase_n
		1.3	;	%	1238	Sam68_n = []
		1.3	;	%	1239	Sam68Pase_n = []
		0.2	;	%	1240	Sam68_p_n+mRNA_n_CycD1a = Sam68_p_n_mRNA_n_CycD1a
		2.0	;	%	1241	Sam68_p_n_mRNA_n_CycD1a = Sam68_p_n+mRNA_n_CycD1a
		1.0	;	%	1242	Sam68_p_n_mRNA_n_CycD1a = Sam68_p_n+mRNA_n_CycD1b
		0.2	;	%	1243	CycD1a+CDK4 = CycD1a_CDK4
		3.0	;	%	1244	CycD1a_CDK4 = CycD1a+CDK4
		0.2	;	%	1245	CycD1a+CDK6 = CycD1a_CDK6
		3.0	;	%	1246	CycD1a_CDK6 = CycD1a+CDK6
		0.2	;	%	1247	CycD1b+CDK4 = CycD1b_CDK4
		3.0	;	%	1248	CycD1b_CDK4 = CycD1b+CDK4
		0.2	;	%	1249	CycD1b+CDK6 = CycD1b_CDK6
		3.0	;	%	1250	CycD1b_CDK6 = CycD1b+CDK6
		0.3	;	%	1251	Import+CycD1a_CDK4 = Import_CycD1a_CDK4
		2.0	;	%	1252	Import_CycD1a_CDK4 = Import+CycD1a_CDK4
		1.0	;	%	1253	Import_CycD1a_CDK4 = Import+CycD1a_n_CDK4_n
		0.3	;	%	1254	Export+CycD1a_n_CDK4_n = Export_CycD1a_n_CDK4_n
		2.0	;	%	1255	Export_CycD1a_n_CDK4_n = Export+CycD1a_n_CDK4_n
		1.0	;	%	1256	Export_CycD1a_n_CDK4_n = Export+CycD1a_CDK4
		0.3	;	%	1257	Import+CycD1a_CDK6 = Import_CycD1a_CDK6
		2.0	;	%	1258	Import_CycD1a_CDK6 = Import+CycD1a_CDK6
		1.0	;	%	1259	Import_CycD1a_CDK6 = Import+CycD1a_n_CDK6_n
		0.3	;	%	1260	Export+CycD1a_n_CDK6_n = Export_CycD1a_n_CDK6_n
		2.0	;	%	1261	Export_CycD1a_n_CDK6_n = Export+CycD1a_n_CDK6_n
		1.0	;	%	1262	Export_CycD1a_n_CDK6_n = Export+CycD1a_CDK6
		0.3	;	%	1263	Import+CycD1b_CDK4 = Import_CycD1b_CDK4
		2.0	;	%	1264	Import_CycD1b_CDK4 = Import+CycD1b_CDK4
		1.0	;	%	1265	Import_CycD1b_CDK4 = Import+CycD1b_n_CDK4_n
		0.3	;	%	1266	Export+CycD1b_n_CDK4_n = Export_CycD1b_n_CDK4_n
		2.0	;	%	1267	Export_CycD1b_n_CDK4_n = Export+CycD1b_n_CDK4_n
		1.0	;	%	1268	Export_CycD1b_n_CDK4_n = Export+CycD1b_CDK4
		0.3	;	%	1269	Import+CycD1b_CDK6 = Import_CycD1b_CDK6
		2.0	;	%	1270	Import_CycD1b_CDK6 = Import+CycD1b_CDK6
		1.0	;	%	1271	Import_CycD1b_CDK6 = Import+CycD1b_n_CDK6_n
		0.3	;	%	1272	Export+CycD1b_n_CDK6_n = Export_CycD1b_n_CDK6_n
		2.0	;	%	1273	Export_CycD1b_n_CDK6_n = Export+CycD1b_n_CDK6_n
		1.0	;	%	1274	Export_CycD1b_n_CDK6_n = Export+CycD1b_CDK6
		0.3	;	%	1275	Import+p21Cip1 = Import_p21Cip1
		2.0	;	%	1276	Import_p21Cip1 = Import+p21Cip1
		1.0	;	%	1277	Import_p21Cip1 = Import+p21Cip1_n
		0.3	;	%	1278	Export+p21Cip1_n = Export_p21Cip1_n
		2.0	;	%	1279	Export_p21Cip1_n = Export+p21Cip1_n
		1.0	;	%	1280	Export_p21Cip1_n = Export+p21Cip1
		0.3	;	%	1281	Import+p27Kip1 = Import_p27Kip1
		2.0	;	%	1282	Import_p27Kip1 = Import+p27Kip1
		1.0	;	%	1283	Import_p27Kip1 = Import+p27Kip1_n
		0.3	;	%	1284	Export+p27Kip1_n = Export_p27Kip1_n
		2.0	;	%	1285	Export_p27Kip1_n = Export+p27Kip1_n
		1.0	;	%	1286	Export_p27Kip1_n = Export+p27Kip1
		0.3	;	%	1287	Import+p16INK4 = Import_p16INK4
		2.0	;	%	1288	Import_p16INK4 = Import+p16INK4
		1.0	;	%	1289	Import_p16INK4 = Import+p16INK4_n
		0.3 ;	%	1290	Export+p16INK4_n = Export_p16INK4_n
		2.0	;	%	1291	Export_p16INK4_n = Export+p16INK4_n
		1.0	;	%	1292	Export_p16INK4_n = Export+p16INK4
		0.1	;	%	1293	CycD1a+p21Cip1 = CycD1a_p21Cip1
		4.0	;	%	1294	CycD1a_p21Cip1 = CycD1a+p21Cip1
		0.1	;	%	1295	CycD1a+p27Kip1 = CycD1a_p27Kip1
		4.0	;	%	1296	CycD1a_p27Kip1 = CycD1a+p27Kip1
		0.1	;	%	1297	CycD1a_p21Cip1+CDK4 = CycD1a_CDK4_p21Cip1
		3.0	;	%	1298	CycD1a_CDK4_p21Cip1 = CycD1a_p21Cip1+CDK4
		0.1	;	%	1299	CycD1a_p27Kip1+CDK4 = CycD1a_CDK4_p27Kip1
		3.0	;	%	1300	CycD1a_CDK4_p27Kip1 = CycD1a_p27Kip1+CDK4
		0.1	;	%	1301	CycD1a_p21Cip1+CDK6 = CycD1a_CDK6_p21Cip1
		3.0	;	%	1302	CycD1a_CDK6_p21Cip1 = CycD1a_p21Cip1+CDK6
		0.1	;	%	1303	CycD1a_p27Kip1+CDK6 = CycD1a_CDK6_p27Kip1
		3.0	;	%	1304	CycD1a_CDK6_p27Kip1 = CycD1a_p27Kip1+CDK6
		0.1	;	%	1305	CycD1b+p21Cip1 = CycD1b_p21Cip1
		4.0	;	%	1306	CycD1b_p21Cip1 = CycD1b+p21Cip1
		0.1	;	%	1307	CycD1b+p27Kip1 = CycD1b_p27Kip1
		4.0	;	%	1308	CycD1b_p27Kip1 = CycD1b+p27Kip1
		0.1	;	%	1309	CycD1b_p21Cip1+CDK4 = CycD1b_CDK4_p21Cip1
		3.0	;	%	1310	CycD1b_CDK4_p21Cip1 = CycD1b_p21Cip1+CDK4
		0.1	;	%	1311	CycD1b_p27Kip1+CDK4 = CycD1b_CDK4_p27Kip1
		3.0	;	%	1312	CycD1b_CDK4_p27Kip1 = CycD1b_p27Kip1+CDK4
		0.1	;	%	1313	CycD1b_p21Cip1+CDK6 = CycD1b_CDK6_p21Cip1
		3.0	;	%	1314	CycD1b_CDK6_p21Cip1 = CycD1b_p21Cip1+CDK6
		0.1	;	%	1315	CycD1b_p27Kip1+CDK6 = CycD1b_CDK6_p27Kip1
		3.0	;	%	1316	CycD1b_CDK6_p27Kip1 = CycD1b_p27Kip1+CDK6
		0.3	;	%	1317	Import+CycD1a_CDK4_p21Cip1 = Import_CycD1a_CDK4_p21Cip1
		2.0	;	%	1318	Import_CycD1a_CDK4_p21Cip1 = Import+CycD1a_CDK4_p21Cip1
		1.0	;	%	1319	Import_CycD1a_CDK4_p21Cip1 = Import+CycD1a_n_CDK4_n_p21Cip1_n
		0.3	;	%	1320	Import+CycD1a_CDK4_p27Kip1 = Import_CycD1a_CDK4_p27Kip1
		2.0	;	%	1321	Import_CycD1a_CDK4_p27Kip1 = Import+CycD1a_CDK4_p27Kip1
		1.0	;	%	1322	Import_CycD1a_CDK4_p27Kip1 = Import+CycD1a_n_CDK4_n_p27Kip1_n
		0.3	;	%	1323	Import+CycD1a_CDK6_p21Cip1 = Import_CycD1a_CDK6_p21Cip1
		2.0	;	%	1324	Import_CycD1a_CDK6_p21Cip1 = Import+CycD1a_CDK6_p21Cip1
		1.0	;	%	1325	Import_CycD1a_CDK6_p21Cip1 = Import+CycD1a_n_CDK6_n_p21Cip1_n
		0.3	;	%	1326	Import+CycD1a_CDK6_p27Kip1 = Import_CycD1a_CDK6_p27Kip1
		2.0	;	%	1327	Import_CycD1a_CDK6_p27Kip1 = Import+CycD1a_CDK6_p27Kip1
		1.0	;	%	1328	Import_CycD1a_CDK6_p27Kip1 = Import+CycD1a_n_CDK6_n_p27Kip1_n
		0.2	;	%	1329	CycD1a_n_CDK4_n+p21Cip1_n = CycD1a_n_CDK4_n_p21Cip1_n
		3.0	;	%	1330	CycD1a_n_CDK4_n_p21Cip1_n = CycD1a_n_CDK4_n+p21Cip1_n
		0.2	;	%	1331	CycD1a_n_CDK4_n+p27Kip1_n = CycD1a_n_CDK4_n_p27Kip1_n
		3.0	;	%	1332	CycD1a_n_CDK4_n_p27Kip1_n = CycD1a_n_CDK4_n+p27Kip1_n
		0.2	;	%	1333	CycD1a_n_CDK6_n+p21Cip1_n = CycD1a_n_CDK6_n_p21Cip1_n
		3.0	;	%	1334	CycD1a_n_CDK6_n_p21Cip1_n = CycD1a_n_CDK6_n+p21Cip1_n
		0.2	;	%	1335	CycD1a_n_CDK6_n+p27Kip1_n = CycD1a_n_CDK6_n_p27Kip1_n
		3.0	;	%	1336	CycD1a_n_CDK6_n_p27Kip1_n = CycD1a_n_CDK6_n+p27Kip1_n
		0.3	;	%	1337	Import+CycD1b_CDK4_p21Cip1 = Import_CycD1b_CDK4_p21Cip1
		2.0	;	%	1338	Import_CycD1b_CDK4_p21Cip1 = Import+CycD1b_CDK4_p21Cip1
		1.0	;	%	1339	Import_CycD1b_CDK4_p21Cip1 = Import+CycD1b_n_CDK4_n_p21Cip1_n
		0.3	;	%	1340	Import+CycD1b_CDK4_p27Kip1 = Import_CycD1b_CDK4_p27Kip1
		2.0	;	%	1341	Import_CycD1b_CDK4_p27Kip1 = Import+CycD1b_CDK4_p27Kip1
		1.0	;	%	1342	Import_CycD1b_CDK4_p27Kip1 = Import+CycD1b_n_CDK4_n_p27Kip1_n
		0.3	;	%	1343	Import+CycD1b_CDK6_p21Cip1 = Import_CycD1b_CDK6_p21Cip1
		2.0	;	%	1344	Import_CycD1b_CDK6_p21Cip1 = Import+CycD1b_CDK6_p21Cip1
		1.0	;	%	1345	Import_CycD1b_CDK6_p21Cip1 = Import+CycD1b_n_CDK6_n_p21Cip1_n
		0.3	;	%	1346	Import+CycD1b_CDK6_p27Kip1 = Import_CycD1b_CDK6_p27Kip1
		2.0	;	%	1347	Import_CycD1b_CDK6_p27Kip1 = Import+CycD1b_CDK6_p27Kip1
		1.0	;	%	1348	Import_CycD1b_CDK6_p27Kip1 = Import+CycD1b_n_CDK6_n_p27Kip1_n
		0.2	;	%	1349	CycD1b_n_CDK4_n+p21Cip1_n = CycD1b_n_CDK4_n_p21Cip1_n
		3.0	;	%	1350	CycD1b_n_CDK4_n_p21Cip1_n = CycD1b_n_CDK4_n+p21Cip1_n
		0.2	;	%	1351	CycD1b_n_CDK4_n+p27Kip1_n = CycD1b_n_CDK4_n_p27Kip1_n
		3.0	;	%	1352	CycD1b_n_CDK4_n_p27Kip1_n = CycD1b_n_CDK4_n+p27Kip1_n
		0.2	;	%	1353	CycD1b_n_CDK6_n+p21Cip1_n = CycD1b_n_CDK6_n_p21Cip1_n
		3.0	;	%	1354	CycD1b_n_CDK6_n_p21Cip1_n = CycD1b_n_CDK6_n+p21Cip1_n
		0.2	;	%	1355	CycD1b_n_CDK6_n+p27Kip1_n = CycD1b_n_CDK6_n_p27Kip1_n
		3.0	;	%	1356	CycD1b_n_CDK6_n_p27Kip1_n = CycD1b_n_CDK6_n+p27Kip1_n
		0.4	;	%	1357	Import+Rb = Import_Rb
		3.0	;	%	1358	Import_Rb = Import+Rb
		1.0	;	%	1359	Import_Rb = Import+Rb_n
		0.4	;	%	1360	Export+Rb_n = Export_Rb_n
		3.0	;	%	1361	Export_Rb_n = Export+Rb_n
		1.0	;	%	1362	Export_Rb_n = Export+Rb
		0.3	;	%	1363	Import+E2F = Import_E2F
		4.0	;	%	1364	Import_E2F = Import+E2F
		0.8	;	%	1365	Import_E2F = Import+E2F_n
		0.2	;	%	1366	Export+E2F_n = Export_E2F_n
		4.0	;	%	1367	Export_E2F_n = Export+E2F_n
		0.8	;	%	1368	Export_E2F_n = Export+E2F
		0.6	;	%	1369	Rb_n = []
		0.6	;	%	1370	E2F_n = []
		1.0	;	%	1371	E2F+Rb = E2F_Rb
		2.0	;	%	1372	E2F_Rb = E2F+Rb
		0.2	;	%	1373	Import+E2F_Rb = Import_E2F_Rb
		4.0	;	%	1374	Import_E2F_Rb = Import+E2F_Rb
		0.8	;	%	1375	Import_E2F_Rb = Import+E2F_n_Rb_n
		0.2	;	%	1376	Export+E2F_n_Rb_n = Export_E2F_n_Rb_n
		4.0	;	%	1377	Export_E2F_n_Rb_n = Export+E2F_n_Rb_n
		0.8	;	%	1378	Export_E2F_n_Rb_n = Export+E2F_Rb
		1.0	;	%	1379	E2F_n+Rb_n = E2F_n_Rb_n
		2.0	;	%	1380	E2F_n_Rb_n = E2F_n+Rb_n
		0.2	;	%	1381	CycD1a_n_CDK4_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_E2F_n_Rb_n
		3.0	;	%	1382	CycD1a_n_CDK4_n_E2F_n_Rb_n = CycD1a_n_CDK4_n+E2F_n_Rb_n
		0.6	;	%	1383	CycD1a_n_CDK4_n_E2F_n_Rb_n = CycD1a_n_CDK4_n+E2F_n+Rb_n_p
		0.2	;	%	1384	CycD1a_n_CDK6_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_E2F_n_Rb_n
		3.0	;	%	1385	CycD1a_n_CDK6_n_E2F_n_Rb_n = CycD1a_n_CDK6_n+E2F_n_Rb_n
		0.6	;	%	1386	CycD1a_n_CDK6_n_E2F_n_Rb_n = CycD1a_n_CDK6_n+E2F_n+Rb_n_p
		0.2	;	%	1387	CycD1a_n_CDK4_n+Rb_n = CycD1a_n_CDK4_n_Rb_n
		3.0	;	%	1388	CycD1a_n_CDK4_n_Rb_n = CycD1a_n_CDK4_n+Rb_n
		0.6	;	%	1389	CycD1a_n_CDK4_n_Rb_n = CycD1a_n_CDK4_n+Rb_n_p
		0.2	;	%	1390	CycD1a_n_CDK6_n+Rb_n = CycD1a_n_CDK6_n_Rb_n
		3.0	;	%	1391	CycD1a_n_CDK6_n_Rb_n = CycD1a_n_CDK6_n+Rb_n
		0.6	;	%	1392	CycD1a_n_CDK6_n_Rb_n = CycD1a_n_CDK6_n+Rb_n_p
		0.2	;	%	1393	CycD1a_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
		3.0	;	%	1394	CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n
		0.6	;	%	1395	CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n+E2F_n+Rb_n_p
		0.2	;	%	1396	CycD1a_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
		3.0	;	%	1397	CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n
		0.6	;	%	1398	CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n+E2F_n+Rb_n_p
		0.2	;	%	1399	CycD1a_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
		3.0	;	%	1400	CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n
		0.6	;	%	1401	CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n+E2F_n+Rb_n_p
		0.2	;	%	1402	CycD1a_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
		3.0	;	%	1403	CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n
		0.6	;	%	1404	CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n+E2F_n+Rb_n_p
		0.2	;	%	1405	CycD1b_n_CDK4_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_E2F_n_Rb_n
		3.0	;	%	1406	CycD1b_n_CDK4_n_E2F_n_Rb_n = CycD1b_n_CDK4_n+E2F_n_Rb_n
		0.6	;	%	1407	CycD1b_n_CDK4_n_E2F_n_Rb_n = CycD1b_n_CDK4_n+E2F_n+Rb_n_p
		0.2	;	%	1408	CycD1b_n_CDK6_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_E2F_n_Rb_n
		3.0	;	%	1409	CycD1b_n_CDK6_n_E2F_n_Rb_n = CycD1b_n_CDK6_n+E2F_n_Rb_n
		0.6	;	%	1410	CycD1b_n_CDK6_n_E2F_n_Rb_n = CycD1b_n_CDK6_n+E2F_n+Rb_n_p
		0.2	;	%	1411	CycD1b_n_CDK4_n+Rb_n = CycD1b_n_CDK4_n_Rb_n
		3.0	;	%	1412	CycD1b_n_CDK4_n_Rb_n = CycD1b_n_CDK4_n+Rb_n
		0.6	;	%	1413	CycD1b_n_CDK4_n_Rb_n = CycD1b_n_CDK4_n+Rb_n_p
		0.2	;	%	1414	CycD1b_n_CDK6_n+Rb_n = CycD1b_n_CDK6_n_Rb_n
		3.0	;	%	1415	CycD1b_n_CDK6_n_Rb_n = CycD1b_n_CDK6_n+Rb_n
		0.6	;	%	1416	CycD1b_n_CDK6_n_Rb_n = CycD1b_n_CDK6_n+Rb_n_p
		0.2	;	%	1417	CycD1b_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
		3.0	;	%	1418	CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n
		0.6	;	%	1419	CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n+E2F_n+Rb_n_p
		0.2	;	%	1420	CycD1b_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
		3.0	;	%	1421	CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n
		0.6	;	%	1422	CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n+E2F_n+Rb_n_p
		0.2	;	%	1423	CycD1b_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
		3.0	;	%	1424	CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n
		0.6	;	%	1425	CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n+E2F_n+Rb_n_p
		0.2	;	%	1426	CycD1b_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
		3.0	;	%	1427	CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n
		0.6	;	%	1428	CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n+E2F_n+Rb_n_p
		0.1	;	%	1429	CycE+Cdk2 = CycE_Cdk2
		3.0	;	%	1430	CycE_Cdk2 = CycE+Cdk2
		0.1	;	%	1431	CDC25A+RAF_Act = CDC25A_RAF_Act
		3.0	;	%	1432	CDC25A_RAF_Act = CDC25A+RAF_Act
		0.5	;	%	1433	CDC25A_RAF_Act = CDC25A_p+RAF_Act
		0.1	;	%	1434	CDC25A+PKC_Act = CDC25A_PKC_Act
		3.0	;	%	1435	CDC25A_PKC_Act = CDC25A+PKC_Act
		0.5	;	%	1436	CDC25A_PKC_Act = CDC25A_p+PKC_Act
		0.1	;	%	1437	CDC25A+p70_Act = CDC25A_p70_Act
		3.0	;	%	1438	CDC25A_p70_Act = CDC25A+p70_Act
		0.5	;	%	1439	CDC25A_p70_Act = CDC25A_p+p70_Act
		0.2	;	%	1440	CycE_Cdk2+CDC25A_p = CycE_Cdk2_CDC25A_p
		3.0	;	%	1441	CycE_Cdk2_CDC25A_p = CycE_Cdk2+CDC25A_p
		0.5	;	%	1442	CycE_Cdk2_CDC25A_p = CycE_Cdk2_Act+CDC25A_p
		0.35	;	%	1443	Import+CycE_Cdk2_Act = Import_CycE_Cdk2_Act
		2.0	;	%	1444	Import_CycE_Cdk2_Act = Import+CycE_Cdk2_Act
		1.0	;	%	1445	Import_CycE_Cdk2_Act = Import+CycE_Cdk2_Act_n
		0.3	;	%	1446	Export+CycE_Cdk2_Act_n = Export_CycE_Cdk2_Act_n
		2.0	;	%	1447	Export_CycE_Cdk2_Act_n = Export+CycE_Cdk2_Act_n
		1.0	;	%	1448	Export_CycE_Cdk2_Act_n = Export+CycE_Cdk2_Act
		0.2	;	%	1449	CycE_Cdk2_Act+CDC25A = CycE_Cdk2_Act_CDC25A
		2.0	;	%	1450	CycE_Cdk2_Act_CDC25A = CycE_Cdk2_Act+CDC25A
		0.5	;	%	1451	CycE_Cdk2_Act_CDC25A = CycE_Cdk2_Act+CDC25A_p
		0.8	;	%	1452	CDC25A_p+CDC25APase = CDC25A_p_CDC25APase
		2.0	;	%	1453	CDC25A_p_CDC25APase = CDC25A_p+CDC25APase
		3.0	;	%	1454	CDC25A_p_CDC25APase = CDC25A+CDC25APase
		1.0	;	%	1455	CycE_Cdk2_Act+Cdk2Pase = CycE_Cdk2_Act_Cdk2Pase
		2.0	;	%	1456	CycE_Cdk2_Act_Cdk2Pase = CycE_Cdk2_Act+Cdk2Pase
		2.0	;	%	1457	CycE_Cdk2_Act_Cdk2Pase = CycE_Cdk2+Cdk2Pase
		0.2	;	%	1458	CycE_Cdk2_Act_n+E2F_n_Rb_n = CycE_Cdk2_Act_n_E2F_n_Rb_n
		3.0	;	%	1459	CycE_Cdk2_Act_n_E2F_n_Rb_n = CycE_Cdk2_Act_n+E2F_n_Rb_n
		0.5	;	%	1460	CycE_Cdk2_Act_n_E2F_n_Rb_n = CycE_Cdk2_Act_n+E2F_n+Rb_n_p
		0.2	;	%	1461	CycE_Cdk2_Act_n+Rb_n = CycE_Cdk2_Act_n_Rb_n
		3.0	;	%	1462	CycE_Cdk2_Act_n_Rb_n = CycE_Cdk2_Act_n+Rb_n
		0.5	;	%	1463	CycE_Cdk2_Act_n_Rb_n = CycE_Cdk2_Act_n+Rb_n_p
		0.3	;	%	1464	Import+RbPase = Import_RbPase
		2.0	;	%	1465	Import_RbPase = Import+RbPase
		1.0	;	%	1466	Import_RbPase = Import+RbPase_n
		0.3	;	%	1467	Export+RbPase_n = Export_RbPase_n
		2.0	;	%	1468	Export_RbPase_n = Export+RbPase_n
		1.0	;	%	1469	Export_RbPase_n = Export+RbPase
		1.6	;	%	1470	RbPase_n = []
		0.6	;	%	1471	Rb_n_p+RbPase_n = Rb_n_p_RbPase_n
		2.0	;	%	1472	Rb_n_p_RbPase_n = Rb_n_p+RbPase_n
		2.5	;	%	1473	Rb_n_p_RbPase_n = Rb_n+RbPase_n
		0.2	;	%	1474	CycE_Cdk2_Act_n+E2F_n = CycE_Cdk2_Act_n_E2F_n
		3.0	;	%	1475	CycE_Cdk2_Act_n_E2F_n = CycE_Cdk2_Act_n+E2F_n
		0.4	;	%	1476	CycE_Cdk2_Act_n_E2F_n = CycE_Cdk2_Act_n+E2F_n_p
		0.3	;	%	1477	E2F_n_p = []
		0.1	;	%	1478	p21Cip1+Cdk2 = p21Cip1_Cdk2
		3.0	;	%	1479	p21Cip1_Cdk2 = p21Cip1+Cdk2
		0.1	;	%	1480	p27Kip1+Cdk2 = p27Kip1_Cdk2
		3.0	;	%	1481	p27Kip1_Cdk2 = p27Kip1+Cdk2
		0.1	;	%	1482	p21Cip1+CycE_Cdk2 = p21Cip1_CycE_Cdk2
		3.0	;	%	1483	p21Cip1_CycE_Cdk2 = p21Cip1+CycE_Cdk2
		0.1	;	%	1484	p27Kip1+CycE_Cdk2 = p27Kip1_CycE_Cdk2
		3.0	;	%	1485	p27Kip1_CycE_Cdk2 = p27Kip1+CycE_Cdk2
		0.1	;	%	1486	p21Cip1+CycE_Cdk2_Act = p21Cip1_CycE_Cdk2_Act
		3.0	;	%	1487	p21Cip1_CycE_Cdk2_Act = p21Cip1+CycE_Cdk2_Act
		0.1	;	%	1488	p27Kip1+CycE_Cdk2_Act = p27Kip1_CycE_Cdk2_Act
		3.0	;	%	1489	p27Kip1_CycE_Cdk2_Act = p27Kip1+CycE_Cdk2_Act
		0.1	;	%	1490	p21Cip1_n+CycE_Cdk2_Act_n = p21Cip1_n_CycE_Cdk2_Act_n
		3.0	;	%	1491	p21Cip1_n_CycE_Cdk2_Act_n = p21Cip1_n+CycE_Cdk2_Act_n
		0.1	;	%	1492	p27Kip1_n+CycE_Cdk2_Act_n = p27Kip1_n_CycE_Cdk2_Act_n
		3.0	;	%	1493	p27Kip1_n_CycE_Cdk2_Act_n = p27Kip1_n+CycE_Cdk2_Act_n
		2.0	;	%	1494	p21Cip1_CycE_Cdk2_Act = p21Cip1_p+CycE_Cdk2_Act
		2.0	;	%	1495	p27Kip1_CycE_Cdk2_Act = p27Kip1_p+CycE_Cdk2_Act
		2.0	;	%	1496	p21Cip1_n_CycE_Cdk2_Act_n = p21Cip1_n_p+CycE_Cdk2_Act_n
		2.0	;	%	1497	p27Kip1_n_CycE_Cdk2_Act_n = p27Kip1_n_p+CycE_Cdk2_Act_n
		0.4	;	%	1498	p21Cip1_p = []
		0.4	;	%	1499	p27Kip1_p = []
		0.4	;	%	1500	p21Cip1_n_p = []
		0.4	;	%	1501	p27Kip1_n_p = []
		1.0	;	%	1502	p21Cip1_p = p21Cip1
		1.0	;	%	1503	p27Kip1_p = p27Kip1
		1.0	;	%	1504	p21Cip1_n_p = p21Cip1_n
		1.0	;	%	1505	p27Kip1_n_p = p27Kip1_n
		0.2	;	%	1506	p16INK4+CDK4 = p16INK4_CDK4
		3.0	;	%	1507	p16INK4_CDK4 = p16INK4+CDK4
		0.2	;	%	1508	p16INK4+CDK6 = p16INK4_CDK6
		3.0	;	%	1509	p16INK4_CDK6 = p16INK4+CDK6
		0.2	;	%	1510	p16INK4+CycD1a_CDK4 = p16INK4_CycD1a_CDK4
		3.0	;	%	1511	p16INK4_CycD1a_CDK4 = p16INK4+CycD1a_CDK4
		0.2	;	%	1512	p16INK4+CycD1a_CDK6 = p16INK4_CycD1a_CDK6
		3.0	;	%	1513	p16INK4_CycD1a_CDK6 = p16INK4+CycD1a_CDK6
		0.2	;	%	1514	p16INK4_n+CycD1a_n_CDK4_n = p16INK4_n_CycD1a_n_CDK4_n
		3.0	;	%	1515	p16INK4_n_CycD1a_n_CDK4_n = p16INK4_n+CycD1a_n_CDK4_n
		0.2	;	%	1516	p16INK4_n+CycD1a_n_CDK6_n = p16INK4_n_CycD1a_n_CDK6_n
		3.0	;	%	1517	p16INK4_n_CycD1a_n_CDK6_n = p16INK4_n+CycD1a_n_CDK6_n
		0.2	;	%	1518	p16INK4+CycD1b_CDK4 = p16INK4_CycD1b_CDK4
		3.0	;	%	1519	p16INK4_CycD1b_CDK4 = p16INK4+CycD1b_CDK4
		0.2	;	%	1520	p16INK4+CycD1b_CDK6 = p16INK4_CycD1b_CDK6
		3.0	;	%	1521	p16INK4_CycD1b_CDK6 = p16INK4+CycD1b_CDK6
		0.2	;	%	1522	p16INK4_n+CycD1b_n_CDK4_n = p16INK4_n_CycD1b_n_CDK4_n
		3.0	;	%	1523	p16INK4_n_CycD1b_n_CDK4_n = p16INK4_n+CycD1b_n_CDK4_n
		0.2	;	%	1524	p16INK4_n+CycD1b_n_CDK6_n = p16INK4_n_CycD1b_n_CDK6_n
		3.0	;	%	1525	p16INK4_n_CycD1b_n_CDK6_n = p16INK4_n+CycD1b_n_CDK6_n
		0.3	;	%	1526	Export+p16INK4_n_CycD1a_n_CDK4_n = Export_p16INK4_n_CycD1a_n_CDK4_n
		2.0	;	%	1527	Export_p16INK4_n_CycD1a_n_CDK4_n = Export+p16INK4_n_CycD1a_n_CDK4_n
		1.0	;	%	1528	Export_p16INK4_n_CycD1a_n_CDK4_n = Export+p16INK4_CycD1a_CDK4
		0.3	;	%	1529	Export+p16INK4_n_CycD1a_n_CDK6_n = Export_p16INK4_n_CycD1a_n_CDK6_n
		2.0	;	%	1530	Export_p16INK4_n_CycD1a_n_CDK6_n = Export+p16INK4_n_CycD1a_n_CDK6_n
		1.0	;	%	1531	Export_p16INK4_n_CycD1a_n_CDK6_n = Export+p16INK4_CycD1a_CDK6
		0.3	;	%	1532	Export+p16INK4_n_CycD1b_n_CDK4_n = Export_p16INK4_n_CycD1b_n_CDK4_n
		2.0	;	%	1533	Export_p16INK4_n_CycD1b_n_CDK4_n = Export+p16INK4_n_CycD1b_n_CDK4_n
		1.0	;	%	1534	Export_p16INK4_n_CycD1b_n_CDK4_n = Export+p16INK4_CycD1b_CDK4
		0.3	;	%	1535	Export+p16INK4_n_CycD1b_n_CDK6_n = Export_p16INK4_n_CycD1b_n_CDK6_n
		2.0	;	%	1536	Export_p16INK4_n_CycD1b_n_CDK6_n = Export+p16INK4_n_CycD1b_n_CDK6_n
		1.0	;	%	1537	Export_p16INK4_n_CycD1b_n_CDK6_n = Export+p16INK4_CycD1b_CDK6
		0.06	;	%	1538	AP1+AR = AP1_AR
		8.0	;	%	1539	AP1_AR = AP1+AR
		0.3	;	%	1540	AP1+AR_p = AP1_AR_p
		6.0	;	%	1541	AP1_AR_p = AP1+AR_p
		0.3	;	%	1542	AP1+AR_p_DHT_2 = AP1_AR_p_DHT_2
		6.0	;	%	1543	AP1_AR_p_DHT_2 = AP1+AR_p_DHT_2
		0.3	;	%	1544	AP1+AR_p_2 = AP1_AR_p_2
		6.0	;	%	1545	AP1_AR_p_2 = AP1+AR_p_2
		0.3	;	%	1546	AP1+AR_p_DHT_AR_p = AP1_AR_p_DHT_AR_p
		6.0	;	%	1547	AP1_AR_p_DHT_AR_p = AP1+AR_p_DHT_AR_p
		0.3	;	%	1548	AP1_n+AR_p_DHT_2_n = AP1_n_AR_p_DHT_2_n
		6.0	;	%	1549	AP1_n_AR_p_DHT_2_n = AP1_n+AR_p_DHT_2_n
		0.3	;	%	1550	AP1_n+AR_p_2_n = AP1_n_AR_p_2_n
		6.0	;	%	1551	AP1_n_AR_p_2_n = AP1_n+AR_p_2_n
		0.3	;	%	1552	AP1_n+AR_p_DHT_AR_p_n = AP1_n_AR_p_DHT_AR_p_n
		6.0	;	%	1553	AP1_n_AR_p_DHT_AR_p_n = AP1_n+AR_p_DHT_AR_p_n
		0.3	;	%	1554	AP1_p_n+AR_p_DHT_2_n = AP1_p_n_AR_p_DHT_2_n
		6.0	;	%	1555	AP1_p_n_AR_p_DHT_2_n = AP1_p_n+AR_p_DHT_2_n
		0.3	;	%	1556	AP1_p_n+AR_p_2_n = AP1_p_n_AR_p_2_n
		6.0	;	%	1557	AP1_p_n_AR_p_2_n = AP1_p_n+AR_p_2_n
		0.3	;	%	1558	AP1_p_n+AR_p_DHT_AR_p_n = AP1_p_n_AR_p_DHT_AR_p_n
		6.0	;	%	1559	AP1_p_n_AR_p_DHT_AR_p_n = AP1_p_n+AR_p_DHT_AR_p_n
		0.03	;	%	1560	CycD1a+AR = CycD1a_AR
		10.0	;	%	1561	CycD1a_AR = CycD1a+AR
		0.03	;	%	1562	CycD1a+AR_DHT = CycD1a_AR_DHT
		10.0	;	%	1563	CycD1a_AR_DHT = CycD1a+AR_DHT
		0.03	;	%	1564	CycD1a+AR_p_DHT = CycD1a_AR_p_DHT
		10.0	;	%	1565	CycD1a_AR_p_DHT = CycD1a+AR_p_DHT
		0.03	;	%	1566	CycD1a+AR_p_DHT_2 = CycD1a_AR_p_DHT_2
		10.0	;	%	1567	CycD1a_AR_p_DHT_2 = CycD1a+AR_p_DHT_2
		0.03	;	%	1568	CycD1a+AR_p_2 = CycD1a_AR_p_2
		10.0	;	%	1569	CycD1a_AR_p_2 = CycD1a+AR_p_2
		0.03	;	%	1570	CycD1a+AR_p_DHT_AR_p = CycD1a_AR_p_DHT_AR_p
		10.0	;	%	1571	CycD1a_AR_p_DHT_AR_p = CycD1a+AR_p_DHT_AR_p
		0.03	;	%	1572	CycD1a_CDK4+AR = CycD1a_CDK4_AR
		10.0	;	%	1573	CycD1a_CDK4_AR = CycD1a_CDK4+AR
		0.03	;	%	1574	CycD1a_CDK4+AR_DHT = CycD1a_CDK4_AR_DHT
		10.0	;	%	1575	CycD1a_CDK4_AR_DHT = CycD1a_CDK4+AR_DHT
		0.03	;	%	1576	CycD1a_CDK4+AR_p_DHT = CycD1a_CDK4_AR_p_DHT
		10.0	;	%	1577	CycD1a_CDK4_AR_p_DHT = CycD1a_CDK4+AR_p_DHT
		0.03	;	%	1578	CycD1a_CDK4+AR_p_DHT_2 = CycD1a_CDK4_AR_p_DHT_2
		10.0	;	%	1579	CycD1a_CDK4_AR_p_DHT_2 = CycD1a_CDK4+AR_p_DHT_2
		0.03	;	%	1580	CycD1a_CDK4+AR_p_2 = CycD1a_CDK4_AR_p_2
		10.0	;	%	1581	CycD1a_CDK4_AR_p_2 = CycD1a_CDK4+AR_p_2
		0.03	;	%	1582	CycD1a_CDK4+AR_p_DHT_AR_p = CycD1a_CDK4_AR_p_DHT_AR_p
		10.0	;	%	1583	CycD1a_CDK4_AR_p_DHT_AR_p = CycD1a_CDK4+AR_p_DHT_AR_p
		0.03	;	%	1584	CycD1a_CDK6+AR = CycD1a_CDK6_AR
		10.0	;	%	1585	CycD1a_CDK6_AR = CycD1a_CDK6+AR
		0.03	;	%	1586	CycD1a_CDK6+AR_DHT = CycD1a_CDK6_AR_DHT
		10.0	;	%	1587	CycD1a_CDK6_AR_DHT = CycD1a_CDK6+AR_DHT
		0.03	;	%	1588	CycD1a_CDK6+AR_p_DHT = CycD1a_CDK6_AR_p_DHT
		10.0	;	%	1589	CycD1a_CDK6_AR_p_DHT = CycD1a_CDK6+AR_p_DHT
		0.03	;	%	1590	CycD1a_CDK6+AR_p_DHT_2 = CycD1a_CDK6_AR_p_DHT_2
		10.0	;	%	1591	CycD1a_CDK6_AR_p_DHT_2 = CycD1a_CDK6+AR_p_DHT_2
		0.03	;	%	1592	CycD1a_CDK6+AR_p_2 = CycD1a_CDK6_AR_p_2
		10.0	;	%	1593	CycD1a_CDK6_AR_p_2 = CycD1a_CDK6+AR_p_2
		0.03	;	%	1594	CycD1a_CDK6+AR_p_DHT_AR_p = CycD1a_CDK6_AR_p_DHT_AR_p
		10.0	;	%	1595	CycD1a_CDK6_AR_p_DHT_AR_p = CycD1a_CDK6+AR_p_DHT_AR_p
		0.03	;	%	1596	CycD1a_n_CDK4_n+AR_p_DHT_2_n = CycD1a_n_CDK4_n_AR_p_DHT_2_n
		10.0	;	%	1597	CycD1a_n_CDK4_n_AR_p_DHT_2_n = CycD1a_n_CDK4_n+AR_p_DHT_2_n
		0.03	;	%	1598	CycD1a_n_CDK4_n+AR_p_2_n = CycD1a_n_CDK4_n_AR_p_2_n
		10.0	;	%	1599	CycD1a_n_CDK4_n_AR_p_2_n = CycD1a_n_CDK4_n+AR_p_2_n
		0.03	;	%	1600	CycD1a_n_CDK4_n+AR_p_DHT_AR_p_n = CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n
		10.0	;	%	1601	CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n = CycD1a_n_CDK4_n+AR_p_DHT_AR_p_n
		0.03	;	%	1602	CycD1a_n_CDK6_n+AR_p_DHT_2_n = CycD1a_n_CDK6_n_AR_p_DHT_2_n
		10.0	;	%	1603	CycD1a_n_CDK6_n_AR_p_DHT_2_n = CycD1a_n_CDK6_n+AR_p_DHT_2_n
		0.03	;	%	1604	CycD1a_n_CDK6_n+AR_p_2_n = CycD1a_n_CDK6_n_AR_p_2_n
		10.0	;	%	1605	CycD1a_n_CDK6_n_AR_p_2_n = CycD1a_n_CDK6_n+AR_p_2_n
		0.03	;	%	1606	CycD1a_n_CDK6_n+AR_p_DHT_AR_p_n = CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n
		10.0	;	%	1607	CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n = CycD1a_n_CDK6_n+AR_p_DHT_AR_p_n
		0.07	;	%	1608	CycE+AR_p_DHT_2 = CycE_AR_p_DHT_2
		10.0	;	%	1609	CycE_AR_p_DHT_2 = CycE+AR_p_DHT_2
		0.03	;	%	1610	CycE+AR_p_2 = CycE_AR_p_2
		6.0		;	%	1611	CycE_AR_p_2 = CycE+AR_p_2
		0.07	;	%	1612	CycE+AR_p_DHT_AR_p = CycE_AR_p_DHT_AR_p
		6.0		;	%	1613	CycE_AR_p_DHT_AR_p = CycE+AR_p_DHT_AR_p
		0.2		;	%	1614	Import+CycE_AR_p_DHT_2 = Import_CycE_AR_p_DHT_2
		2.0		;	%	1615	Import_CycE_AR_p_DHT_2 = Import+CycE_AR_p_DHT_2
		10.0	;	%	1616	Import_CycE_AR_p_DHT_2 = Import+CycE_AR_p_DHT_2_n
		0.1		;	%	1617	Export+CycE_AR_p_DHT_2_n = Export_CycE_AR_p_DHT_2_n
		10.0	;	%	1618	Export_CycE_AR_p_DHT_2_n = Export+CycE_AR_p_DHT_2_n
		1.0		;	%	1619	Export_CycE_AR_p_DHT_2_n = Export+CycE_AR_p_DHT_2
		0.1		;	%	1620	Import+CycE_AR_p_2 = Import_CycE_AR_p_2
		3.0		;	%	1621	Import_CycE_AR_p_2 = Import+CycE_AR_p_2
		4.0		;	%	1622	Import_CycE_AR_p_2 = Import+CycE_AR_p_2_n
		0.1		;	%	1623	Export+CycE_AR_p_2_n = Export_CycE_AR_p_2_n
		3.0		;	%	1624	Export_CycE_AR_p_2_n = Export+CycE_AR_p_2_n
		2.0		;	%	1625	Export_CycE_AR_p_2_n = Export+CycE_AR_p_2
		0.2		;	%	1626	Import+CycE_AR_p_DHT_AR_p = Import_CycE_AR_p_DHT_AR_p
		2.0		;	%	1627	Import_CycE_AR_p_DHT_AR_p = Import+CycE_AR_p_DHT_AR_p
		10.0	;	%	1628	Import_CycE_AR_p_DHT_AR_p = Import+CycE_AR_p_DHT_AR_p_n
		0.2		;	%	1629	Export+CycE_AR_p_DHT_AR_p_n = Export_CycE_AR_p_DHT_AR_p_n
		10.0	;	%	1630	Export_CycE_AR_p_DHT_AR_p_n = Export+CycE_AR_p_DHT_AR_p_n
		1.0		;	%	1631	Export_CycE_AR_p_DHT_AR_p_n = Export+CycE_AR_p_DHT_AR_p
		0.3		;	%	1632	CDK6+AR_p_DHT_2 = CDK6_AR_p_DHT_2
		10.0	;	%	1633	CDK6_AR_p_DHT_2 = CDK6+AR_p_DHT_2
		0.3		;	%	1634	CDK6+AR_p_2 = CDK6_AR_p_2
		10.0	;	%	1635	CDK6_AR_p_2 = CDK6+AR_p_2
		0.3		;	%	1636	CDK6+AR_p_DHT_AR_p = CDK6_AR_p_DHT_AR_p
		10.0	;	%	1637	CDK6_AR_p_DHT_AR_p = CDK6+AR_p_DHT_AR_p
		0.2		;	%	1638	Import+CDK6_AR_p_DHT_2 = Import_CDK6_AR_p_DHT_2
		2.0	;	%	1639	Import_CDK6_AR_p_DHT_2 = Import+CDK6_AR_p_DHT_2
		10.0		;	%	1640	Import_CDK6_AR_p_DHT_2 = Import+CDK6_AR_p_DHT_2_n
		0.1		;	%	1641	Export+CDK6_AR_p_DHT_2_n = Export_CDK6_AR_p_DHT_2_n
		10.0	;	%	1642	Export_CDK6_AR_p_DHT_2_n = Export+CDK6_AR_p_DHT_2_n
		1.0		;	%	1643	Export_CDK6_AR_p_DHT_2_n = Export+CDK6_AR_p_DHT_2
		0.2	;	%	1644	Import+CDK6_AR_p_2 = Import_CDK6_AR_p_2
		4.0	;	%	1645	Import_CDK6_AR_p_2 = Import+CDK6_AR_p_2
		1.0	;	%	1646	Import_CDK6_AR_p_2 = Import+CDK6_AR_p_2_n
		0.1	;	%	1647	Export+CDK6_AR_p_2_n = Export_CDK6_AR_p_2_n
		3.0	;	%	1648	Export_CDK6_AR_p_2_n = Export+CDK6_AR_p_2_n
		1.0	;	%	1649	Export_CDK6_AR_p_2_n = Export+CDK6_AR_p_2
		0.2	;	%	1650	Import+CDK6_AR_p_DHT_AR_p = Import_CDK6_AR_p_DHT_AR_p
		2.0	;	%	1651	Import_CDK6_AR_p_DHT_AR_p = Import+CDK6_AR_p_DHT_AR_p
		11.0	;	%	1652	Import_CDK6_AR_p_DHT_AR_p = Import+CDK6_AR_p_DHT_AR_p_n
		0.2	;	%	1653	Export+CDK6_AR_p_DHT_AR_p_n = Export_CDK6_AR_p_DHT_AR_p_n
		12.0	;	%	1654	Export_CDK6_AR_p_DHT_AR_p_n = Export+CDK6_AR_p_DHT_AR_p_n
		1.0	;	%	1655	Export_CDK6_AR_p_DHT_AR_p_n = Export+CDK6_AR_p_DHT_AR_p
		0.03	;	%	1656	CDC25A_p+AR = CDC25A_p_AR
		10.0	;	%	1657	CDC25A_p_AR = CDC25A_p+AR
		0.03	;	%	1658	CDC25A_p+AR_p = CDC25A_p_AR_p
		10.0	;	%	1659	CDC25A_p_AR_p = CDC25A_p+AR_p
		0.03	;	%	1660	CDC25A_p+AR_p_DHT_2 = CDC25A_p_AR_p_DHT_2
		10.0	;	%	1661	CDC25A_p_AR_p_DHT_2 = CDC25A_p+AR_p_DHT_2
		0.03	;	%	1662	CDC25A_p+AR_p_2 = CDC25A_p_AR_p_2
		10.0	;	%	1663	CDC25A_p_AR_p_2 = CDC25A_p+AR_p_2
		0.03	;	%	1664	CDC25A_p+AR_p_DHT_AR_p = CDC25A_p_AR_p_DHT_AR_p
		10.0	;	%	1665	CDC25A_p_AR_p_DHT_AR_p = CDC25A_p+AR_p_DHT_AR_p
		0.2	;	%	1666	AR_p+PP2A = AR_p_PP2A
		3.0	;	%	1667	AR_p_PP2A = AR_p+PP2A
		1.0	;	%	1668	AR_p_PP2A = AR+PP2A
		0.1	;	%	1669	AR_p_DHT+PP2A = AR_p_DHT_PP2A
		5.0	;	%	1670	AR_p_DHT_PP2A = AR_p_DHT+PP2A
		0.8	;	%	1671	AR_p_DHT_PP2A = AR_DHT+PP2A
		0.0 ;	%	1672	TOR = TOR_Act
		0.0	;	%	1673	ERK_p = []
		0.0	;	%	1674	ERK_pp = []
	];
	
	% Initial conditions -
	IC=[
		0.0	;%	1	RNAp
		0.0	;%	2	eIF4E
		0.0	;%	3	Ribo60S
		0.0	;%	4	HSP
		0.0	;%	5	ARPase
		0.0	;%	6	HER2
		0.0	;%	7	SHP
		0.0	;%	8	Grb2
		0.0	;%	9	Sos
		0.0	;%	10	Ras_GDP
		0.0	;%	11	Shc
		0.0	;%	12	EGFR
		0.0	;%	13	EGF
		0.0	;%	14	RasGAP
		0.0	;%	15	ShcPase
		0.0	;%	16	GABPase
		0.0	;%	17	GAB
		0.0	;%	18	PI3K
		0.0	;%	19	PI3KPase
		0.0	;%	20	PLCg
		0.0	;%	21	PLCgPase
		0.0	;%	22	PIP2
		0.0	;%	23	PKC
		0.0	;%	24	PKCPase
		0.0	;%	25	CK2
		0.0	;%	26	CK2Pase
		0.0	;%	27	RAF
		0.0	;%	28	MEK
		0.0	;%	29	ERK
		0.0	;%	30	MKP1
		0.0	;%	31	MKP2
		0.0	;%	32	MKP3
		0.0	;%	33	PP1
		0.0	;%	34	PP2A
		0.0	;%	35	SosPase
		0.0	;%	36	cPLA2
		0.0	;%	37	cPLA2Pase
		0.0	;%	38	PTEN
		0.0	;%	39	AKT
		0.0	;%	40	PDK1
		0.0	;%	41	TOR
		0.0	;%	42	TORPase
		0.0	;%	43	TSC1
		0.0	;%	44	TSC2
		0.0	;%	45	Rheb_GDP
		0.0	;%	46	RhebGEF
		0.0	;%	47	TSCPase
		0.0	;%	48	R4EBP1
		0.0	;%	49	R4EBP1Pase
		0.0	;%	50	p70
		0.0	;%	51	Ribo40S_inact
		0.0	;%	52	p70Pase
		0.0	;%	53	Ribo40SPase
		0.0	;%	54	ETSPase
		0.0	;%	55	AP1Pase
		0.0	;%	56	Sam68
		0.0	;%	57	Sam68Pase
		0.0	;%	58	CDK4
		0.0	;%	59	CDK6
		0.0	;%	60	Cdk2
		0.0	;%	61	CDC25APase
		0.0	;%	62	Cdk2Pase
		0.0	;%	63	RbPase
		0.0	;%	64	Import
		0.0	;%	65	Export
		0.0	;%	66	DHT
		1.0	;%	67	g_ETS
		0.0	;%	68	g_ETS_RNAp
		0.0	;%	69	mRNA_n_ETS
		0.0	;%	70	Export_mRNA_n_ETS
		0.0	;%	71	mRNA_ETS
		1.0	;%	72	g_AP1
		0.0	;%	73	g_AP1_RNAp
		0.0	;%	74	mRNA_n_AP1
		0.0	;%	75	AP1_p_n
		0.0	;%	76	g_AP1_AP1_p_n
		0.0	;%	77	g_AP1_AP1_p_n_RNAp
		0.0	;%	78	Export_mRNA_n_AP1
		0.0	;%	79	mRNA_AP1
		1.0	;%	80	g_CycD1
		0.0	;%	81	g_CycD1_RNAp
		0.0	;%	82	mRNA_n_CycD1a
		0.0	;%	83	ETS_p_n
		0.0	;%	84	g_CycD1_ETS_p_n
		0.0	;%	85	g_CycD1_ETS_p_n_RNAp
		0.0	;%	86	g_CycD1_AP1_p_n
		0.0	;%	87	g_CycD1_AP1_p_n_RNAp
		0.0	;%	88	E2F_n
		0.0	;%	89	g_CycD1_E2F_n
		0.0	;%	90	g_CycD1_E2F_n_RNAp
		0.0	;%	91	Export_mRNA_n_CycD1a
		0.0	;%	92	mRNA_CycD1a
		0.0	;%	93	mRNA_n_CycD1b
		0.0	;%	94	Export_mRNA_n_CycD1b
		0.0	;%	95	mRNA_CycD1b
		1.0	;%	96	g_CycE
		0.0	;%	97	g_CycE_RNAp
		0.0	;%	98	mRNA_n_CycE
		0.0	;%	99	g_CycE_E2F_n
		0.0	;%	100	g_CycE_E2F_n_RNAp
		0.0	;%	101	Export_mRNA_n_CycE
		0.0	;%	102	mRNA_CycE
		1.0	;%	103	g_Rb
		0.0	;%	104	g_Rb_RNAp
		0.0	;%	105	mRNA_n_Rb
		0.0	;%	106	g_Rb_E2F_n
		0.0	;%	107	g_Rb_E2F_n_RNAp
		0.0	;%	108	Export_mRNA_n_Rb
		0.0	;%	109	mRNA_Rb
		1.0	;%	110	g_E2F
		0.0	;%	111	g_E2F_RNAp
		0.0	;%	112	mRNA_n_E2F
		0.0	;%	113	g_E2F_AP1_p_n
		0.0	;%	114	g_E2F_AP1_p_n_RNAp
		0.0	;%	115	g_E2F_E2F_n
		0.0	;%	116	g_E2F_E2F_n_RNAp
		0.0	;%	117	Export_mRNA_n_E2F
		0.0	;%	118	mRNA_E2F
		1.0	;%	119	g_CDC25A
		0.0	;%	120	g_CDC25A_RNAp
		0.0	;%	121	mRNA_n_CDC25A
		0.0	;%	122	g_CDC25A_E2F_n
		0.0	;%	123	g_CDC25A_E2F_n_RNAp
		0.0	;%	124	Export_mRNA_n_CDC25A
		0.0	;%	125	mRNA_CDC25A
		1.0	;%	126	g_p21Cip1
		0.0	;%	127	g_p21Cip1_RNAp
		0.0	;%	128	mRNA_n_p21Cip1
		0.0	;%	129	g_p21Cip1_ETS_p_n
		0.0	;%	130	g_p21Cip1_ETS_p_n_RNAp
		0.0	;%	131	g_p21Cip1_E2F_n
		0.0	;%	132	g_p21Cip1_E2F_n_RNAp
		0.0	;%	133	AR_p_2_n
		0.0	;%	134	g_p21Cip1_AR_p_2_n
		0.0	;%	135	g_p21Cip1_AR_p_2_n_RNAp
		0.0	;%	136	AR_p_DHT_2_n
		0.0	;%	137	g_p21Cip1_AR_p_DHT_2_n
		0.0	;%	138	g_p21Cip1_AR_p_DHT_2_n_RNAp
		0.0	;%	139	AR_p_DHT_AR_p_n
		0.0	;%	140	g_p21Cip1_AR_p_DHT_AR_p_n
		0.0	;%	141	g_p21Cip1_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	142	CycE_AR_p_DHT_2_n
		0.0	;%	143	g_p21Cip1_CycE_AR_p_DHT_2_n
		0.0	;%	144	g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp
		0.0	;%	145	CycE_AR_p_2_n
		0.0	;%	146	g_p21Cip1_CycE_AR_p_2_n
		0.0	;%	147	g_p21Cip1_CycE_AR_p_2_n_RNAp
		0.0	;%	148	CycE_AR_p_DHT_AR_p_n
		0.0	;%	149	g_p21Cip1_CycE_AR_p_DHT_AR_p_n
		0.0	;%	150	g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	151	CDK6_AR_p_DHT_2_n
		0.0	;%	152	g_p21Cip1_CDK6_AR_p_DHT_2_n
		0.0	;%	153	g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp
		0.0	;%	154	CDK6_AR_p_2_n
		0.0	;%	155	g_p21Cip1_CDK6_AR_p_2_n
		0.0	;%	156	g_p21Cip1_CDK6_AR_p_2_n_RNAp
		0.0	;%	157	CDK6_AR_p_DHT_AR_p_n
		0.0	;%	158	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n
		0.0	;%	159	g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	160	Export_mRNA_n_p21Cip1
		0.0	;%	161	mRNA_p21Cip1
		1.0	;%	162	g_p27Kip1
		0.0	;%	163	g_p27Kip1_RNAp
		0.0	;%	164	mRNA_n_p27Kip1
		0.0	;%	165	g_p27Kip1_AP1_p_n
		0.0	;%	166	Export_mRNA_n_p27Kip1
		0.0	;%	167	mRNA_p27Kip1
		1.0	;%	168	g_p16INK4
		0.0	;%	169	g_p16INK4_RNAp
		0.0	;%	170	mRNA_n_p16INK4
		0.0	;%	171	Export_mRNA_n_p16INK4
		0.0	;%	172	mRNA_p16INK4
		1.0	;%	173	g_PSA
		0.0	;%	174	g_PSA_RNAp
		0.0	;%	175	mRNA_n_PSA
		0.0	;%	176	g_PSA_AR_p_2_n
		0.0	;%	177	g_PSA_AR_p_2_n_RNAp
		0.0	;%	178	g_PSA_AR_p_DHT_2_n
		0.0	;%	179	g_PSA_AR_p_DHT_2_n_RNAp
		0.0	;%	180	g_PSA_AR_p_DHT_AR_p_n
		0.0	;%	181	g_PSA_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	182	g_PSA_CycE_AR_p_DHT_2_n
		0.0	;%	183	g_PSA_CycE_AR_p_DHT_2_n_RNAp
		0.0	;%	184	g_PSA_CycE_AR_p_2_n
		0.0	;%	185	g_PSA_CycE_AR_p_2_n_RNAp
		0.0	;%	186	g_PSA_CycE_AR_p_DHT_AR_p_n
		0.0	;%	187	g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	188	g_PSA_CDK6_AR_p_DHT_2_n
		0.0	;%	189	g_PSA_CDK6_AR_p_DHT_2_n_RNAp
		0.0	;%	190	g_PSA_CDK6_AR_p_2_n
		0.0	;%	191	g_PSA_CDK6_AR_p_2_n_RNAp
		0.0	;%	192	g_PSA_CDK6_AR_p_DHT_AR_p_n
		0.0	;%	193	g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	194	Export_mRNA_n_PSA
		0.0	;%	195	mRNA_PSA
		1.0	;%	196	g_PAcP
		0.0	;%	197	g_PAcP_RNAp
		0.0	;%	198	mRNA_n_PAcP
		0.0	;%	199	g_PAcP_AR_p_2_n
		0.0	;%	200	g_PAcP_AR_p_DHT_2_n
		0.0	;%	201	g_PAcP_AR_p_DHT_AR_p_n
		0.0	;%	202	g_PAcP_CycE_AR_p_DHT_2_n
		0.0	;%	203	g_PAcP_CycE_AR_p_2_n
		0.0	;%	204	g_PAcP_CycE_AR_p_DHT_AR_p_n
		0.0	;%	205	g_PAcP_CDK6_AR_p_DHT_2_n
		0.0	;%	206	g_PAcP_CDK6_AR_p_2_n
		0.0	;%	207	g_PAcP_CDK6_AR_p_DHT_AR_p_n
		0.0	;%	208	Export_mRNA_n_PAcP
		0.0	;%	209	mRNA_PAcP
		1.0	;%	210	g_AR
		0.0	;%	211	g_AR_RNAp
		0.0	;%	212	mRNA_n_AR
		0.0	;%	213	g_AR_AR_p_2_n
		0.0	;%	214	g_AR_AR_p_2_n_RNAp
		0.0	;%	215	g_AR_AR_p_DHT_2_n
		0.0	;%	216	g_AR_AR_p_DHT_2_n_RNAp
		0.0	;%	217	g_AR_AR_p_DHT_AR_p_n
		0.0	;%	218	g_AR_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	219	g_AR_CycE_AR_p_DHT_2_n
		0.0	;%	220	g_AR_CycE_AR_p_DHT_2_n_RNAp
		0.0	;%	221	g_AR_CycE_AR_p_2_n
		0.0	;%	222	g_AR_CycE_AR_p_2_n_RNAp
		0.0	;%	223	g_AR_CycE_AR_p_DHT_AR_p_n
		0.0	;%	224	g_AR_CycE_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	225	g_AR_CDK6_AR_p_DHT_2_n
		0.0	;%	226	g_AR_CDK6_AR_p_DHT_2_n_RNAp
		0.0	;%	227	g_AR_CDK6_AR_p_2_n
		0.0	;%	228	g_AR_CDK6_AR_p_2_n_RNAp
		0.0	;%	229	g_AR_CDK6_AR_p_DHT_AR_p_n
		0.0	;%	230	g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp
		0.0	;%	231	g_AR_E2F_n
		0.0	;%	232	Export_mRNA_n_AR
		0.0	;%	233	mRNA_AR
		0.0	;%	234	mRNA_ETS_eIF4E
		0.0	;%	235	Ribo40S
		0.0	;%	236	mRNA_ETS_eIF4E_Ribo40S
		0.0	;%	237	mRNA_ETS_eIF4E_Ribo40S_Ribo60S
		0.0	;%	238	mRNA_ETS_Ribo40S_Ribo60S
		0.0	;%	239	mRNA_ETS_Ribo40S_Ribo60S_Elong
		0.0	;%	240	ETS
		0.0	;%	241	mRNA_AP1_eIF4E
		0.0	;%	242	mRNA_AP1_eIF4E_Ribo40S
		0.0	;%	243	mRNA_AP1_eIF4E_Ribo40S_Ribo60S
		0.0	;%	244	mRNA_AP1_Ribo40S_Ribo60S
		0.0	;%	245	mRNA_AP1_Ribo40S_Ribo60S_Elong
		0.0	;%	246	AP1
		0.0	;%	247	mRNA_CycD1a_eIF4E
		0.0	;%	248	mRNA_CycD1a_eIF4E_Ribo40S
		0.0	;%	249	mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S
		0.0	;%	250	mRNA_CycD1a_Ribo40S_Ribo60S
		0.0	;%	251	mRNA_CycD1a_Ribo40S_Ribo60S_Elong
		0.0	;%	252	CycD1a
		0.0	;%	253	mRNA_CycD1b_eIF4E
		0.0	;%	254	mRNA_CycD1b_eIF4E_Ribo40S
		0.0	;%	255	mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S
		0.0	;%	256	mRNA_CycD1b_Ribo40S_Ribo60S
		0.0	;%	257	mRNA_CycD1b_Ribo40S_Ribo60S_Elong
		0.0	;%	258	CycD1b
		0.0	;%	259	mRNA_CycE_eIF4E
		0.0	;%	260	mRNA_CycE_eIF4E_Ribo40S
		0.0	;%	261	mRNA_CycE_eIF4E_Ribo40S_Ribo60S
		0.0	;%	262	mRNA_CycE_Ribo40S_Ribo60S
		0.0	;%	263	mRNA_CycE_Ribo40S_Ribo60S_Elong
		0.0	;%	264	CycE
		0.0	;%	265	mRNA_Rb_eIF4E
		0.0	;%	266	mRNA_Rb_eIF4E_Ribo40S
		0.0	;%	267	mRNA_Rb_eIF4E_Ribo40S_Ribo60S
		0.0	;%	268	mRNA_Rb_Ribo40S_Ribo60S
		0.0	;%	269	mRNA_Rb_Ribo40S_Ribo60S_Elong
		0.0	;%	270	Rb
		0.0	;%	271	mRNA_E2F_eIF4E
		0.0	;%	272	mRNA_E2F_eIF4E_Ribo40S
		0.0	;%	273	mRNA_E2F_eIF4E_Ribo40S_Ribo60S
		0.0	;%	274	mRNA_E2F_Ribo40S_Ribo60S
		0.0	;%	275	mRNA_E2F_Ribo40S_Ribo60S_Elong
		0.0	;%	276	E2F
		0.0	;%	277	mRNA_CDC25A_eIF4E
		0.0	;%	278	mRNA_CDC25A_eIF4E_Ribo40S
		0.0	;%	279	mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S
		0.0	;%	280	mRNA_CDC25A_Ribo40S_Ribo60S
		0.0	;%	281	mRNA_CDC25A_Ribo40S_Ribo60S_Elong
		0.0	;%	282	CDC25A
		0.0	;%	283	mRNA_p21Cip1_eIF4E
		0.0	;%	284	mRNA_p21Cip1_eIF4E_Ribo40S
		0.0	;%	285	mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S
		0.0	;%	286	mRNA_p21Cip1_Ribo40S_Ribo60S
		0.0	;%	287	mRNA_p21Cip1_Ribo40S_Ribo60S_Elong
		0.0	;%	288	p21Cip1
		0.0	;%	289	mRNA_p27Kip1_eIF4E
		0.0	;%	290	mRNA_p27Kip1_eIF4E_Ribo40S
		0.0	;%	291	mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S
		0.0	;%	292	mRNA_p27Kip1_Ribo40S_Ribo60S
		0.0	;%	293	mRNA_p27Kip1_Ribo40S_Ribo60S_Elong
		0.0	;%	294	p27Kip1
		0.0	;%	295	mRNA_p16INK4_eIF4E
		0.0	;%	296	mRNA_p16INK4_eIF4E_Ribo40S
		0.0	;%	297	mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S
		0.0	;%	298	mRNA_p16INK4_Ribo40S_Ribo60S
		0.0	;%	299	mRNA_p16INK4_Ribo40S_Ribo60S_Elong
		0.0	;%	300	p16INK4
		0.0	;%	301	mRNA_PSA_eIF4E
		0.0	;%	302	mRNA_PSA_eIF4E_Ribo40S
		0.0	;%	303	mRNA_PSA_eIF4E_Ribo40S_Ribo60S
		0.0	;%	304	mRNA_PSA_Ribo40S_Ribo60S
		0.0	;%	305	mRNA_PSA_Ribo40S_Ribo60S_Elong
		0.0	;%	306	PSA
		0.0	;%	307	mRNA_PAcP_eIF4E
		0.0	;%	308	mRNA_PAcP_eIF4E_Ribo40S
		0.0	;%	309	mRNA_PAcP_eIF4E_Ribo40S_Ribo60S
		0.0	;%	310	mRNA_PAcP_Ribo40S_Ribo60S
		0.0	;%	311	mRNA_PAcP_Ribo40S_Ribo60S_Elong
		0.0	;%	312	cPAcP
		0.0	;%	313	sPAcP
		0.0	;%	314	mRNA_AR_eIF4E
		0.0	;%	315	mRNA_AR_eIF4E_Ribo40S
		0.0	;%	316	mRNA_AR_eIF4E_Ribo40S_Ribo60S
		0.0	;%	317	mRNA_AR_Ribo40S_Ribo60S
		0.0	;%	318	mRNA_AR_Ribo40S_Ribo60S_Elong
		0.0	;%	319	AR
		0.0	;%	320	AR_HSP
		0.0	;%	321	AR_DHT
		0.0	;%	322	AR_p_DHT
		0.0	;%	323	AR_p
		0.0	;%	324	AR_p_DHT_2
		0.0	;%	325	AR_p_2
		0.0	;%	326	AR_p_DHT_AR_p
		0.0	;%	327	AR_p_ARPase
		0.0	;%	328	AR_p_DHT_ARPase
		0.0	;%	329	Import_AR_p_DHT_2
		0.0	;%	330	Export_AR_p_DHT_2_n
		0.0	;%	331	Import_AR_p_2
		0.0	;%	332	Export_AR_p_2_n
		0.0	;%	333	Import_AR_p_DHT_AR_p
		0.0	;%	334	Export_AR_p_DHT_AR_p_n
		0.0	;%	335	HER2_2
		0.0	;%	336	HER2_2_p
		0.0	;%	337	HER2_2_p_SHP
		0.0	;%	338	HER2_2_p_Grb2
		0.0	;%	339	HER2_2_p_Grb2_Sos
		0.0	;%	340	Grb2_Sos
		0.0	;%	341	HER2_2_p_Grb2_Sos_Ras_GDP
		0.0	;%	342	HER2_2_p_Grb2_Sos_Ras_GTP
		0.0	;%	343	Ras_GTP
		0.0	;%	344	HER2_2_p_Shc
		0.0	;%	345	HER2_2_p_Shc_p
		0.0	;%	346	Shc_p
		0.0	;%	347	HER2_2_p_Shc_p_Grb2
		0.0	;%	348	HER2_2_p_Shc_p_Grb2_Sos
		0.0	;%	349	Shc_p_Grb2_Sos
		0.0	;%	350	HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP
		0.0	;%	351	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP
		0.0	;%	352	EGFR_EGF
		0.0	;%	353	EGFR_EGF_2
		0.0	;%	354	EGFR_EGF_2_p
		0.0	;%	355	EGFR_EGF_2_p_SHP
		0.0	;%	356	EGFR_EGF_2_p_Grb2
		0.0	;%	357	EGFR_EGF_2_p_Grb2_Sos
		0.0	;%	358	EGFR_EGF_2_p_Grb2_Sos_Ras_GDP
		0.0	;%	359	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP
		0.0	;%	360	EGFR_EGF_2_p_Shc
		0.0	;%	361	EGFR_EGF_2_p_Shc_p
		0.0	;%	362	EGFR_EGF_2_p_Shc_p_Grb2
		0.0	;%	363	EGFR_EGF_2_p_Shc_p_Grb2_Sos
		0.0	;%	364	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP
		0.0	;%	365	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP
		0.0	;%	366	Ras_GTP_RasGAP
		0.0	;%	367	HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP
		0.0	;%	368	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
		0.0	;%	369	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP
		0.0	;%	370	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
		0.0	;%	371	EGF_in
		0.0	;%	372	EGFR_EGF_2_p_in
		0.0	;%	373	EGFR_in
		0.0	;%	374	Shc_p_ShcPase
		0.0	;%	375	HER2_2_p_Shc_p_ShcPase
		0.0	;%	376	EGFR_EGF_2_p_Shc_p_ShcPase
		0.0	;%	377	GAB_m_p
		0.0	;%	378	GAB_m_p_GABPase
		0.0	;%	379	GAB_m
		0.0	;%	380	HER2_2_p_Grb2_GAB_m_p
		0.0	;%	381	HER2_2_p_Grb2_GAB_m_p_GABPase
		0.0	;%	382	HER2_2_p_Grb2_GAB_m
		0.0	;%	383	EGFR_EGF_2_p_Grb2_GAB_m_p
		0.0	;%	384	EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase
		0.0	;%	385	EGFR_EGF_2_p_Grb2_GAB_m
		0.0	;%	386	HER2_2_p_Grb2_GAB_m_p_PI3K
		0.0	;%	387	HER2_2_p_Grb2_GAB_m_p_PI3K_Act
		0.0	;%	388	PI3K_Act
		0.0	;%	389	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K
		0.0	;%	390	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.0	;%	391	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
		0.0	;%	392	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.0	;%	393	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K
		0.0	;%	394	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act
		0.0	;%	395	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K
		0.0	;%	396	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.0	;%	397	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
		0.0	;%	398	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
		0.0	;%	399	PI3K_Act_PI3KPase
		0.0	;%	400	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
		0.0	;%	401	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		0.0	;%	402	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		0.0	;%	403	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
		0.0	;%	404	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		0.0	;%	405	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
		0.0	;%	406	HER2_2_p_PLCg
		0.0	;%	407	HER2_2_p_PLCg_p
		0.0	;%	408	PLCg_p
		0.0	;%	409	EGFR_EGF_2_p_PLCg
		0.0	;%	410	EGFR_EGF_2_p_PLCg_p
		0.0	;%	411	PLCg_p_PLCgPase
		0.0	;%	412	HER2_2_p_PLCg_p_PLCgPase
		0.0	;%	413	EGFR_EGF_2_p_PLCg_p_PLCgPase
		0.0	;%	414	PLCg_p_PIP2
		0.0	;%	415	DAG
		0.0	;%	416	IP3
		0.0	;%	417	HER2_2_p_PLCg_p_PIP2
		0.0	;%	418	EGFR_EGF_2_p_PLCg_p_PIP2
		0.0	;%	419	DAG_PKC
		0.0	;%	420	PKC_Act
		0.0	;%	421	PKC_Act_PKCPase
		0.0	;%	422	PKC_Act_CK2
		0.0	;%	423	CK2_p
		0.0	;%	424	CK2Pase_CK2_p
		0.0	;%	425	CK2_p_MKP3
		0.0	;%	426	MKP3_p
		0.0	;%	427	PP2A_MKP3_p
		0.0	;%	428	PKC_Act_Ras_GDP
		0.0	;%	429	PKC_Act_RAF
		0.0	;%	430	RAF_Act
		0.0	;%	431	HER2_2_p_Grb2_Sos_Ras_GTP_RAF
		0.0	;%	432	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
		0.0	;%	433	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF
		0.0	;%	434	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
		0.0	;%	435	Ras_GTP_RAF
		0.0	;%	436	RAF_Act_PP1
		0.0	;%	437	RAF_Act_PP2A
		0.0	;%	438	MEK_RAF_Act
		0.0	;%	439	MEK_p
		0.0	;%	440	MEK_p_RAF_Act
		0.0	;%	441	MEK_pp
		0.0	;%	442	ERK_MEK_pp
		0.0	;%	443	ERK_p
		0.0	;%	444	ERK_p_MEK_pp
		0.0	;%	445	ERK_pp
		0.0	;%	446	MEK_p_MKP3_p
		0.0	;%	447	MEK_pp_MKP3_p
		0.0	;%	448	MEK_p_PP2A
		0.0	;%	449	MEK_pp_PP2A
		0.0	;%	450	ERK_p_MKP2
		0.0	;%	451	ERK_pp_MKP2
		0.0	;%	452	ERK_p_MKP3_p
		0.0	;%	453	ERK_pp_MKP3_p
		0.0	;%	454	ERK_p_MKP1
		0.0	;%	455	ERK_pp_MKP1
		0.0	;%	456	MKP1_p
		0.0	;%	457	ERK_p_MKP1_p
		0.0	;%	458	ERK_pp_MKP1_p
		0.0	;%	459	MKP3_p_MKP1_p
		0.0	;%	460	HER2_2_p_Grb2_Sos_ERK_pp
		0.0	;%	461	HER2_2_p_Grb2_Sos_p
		0.0	;%	462	Sos_p
		0.0	;%	463	Grb2_Sos_p
		0.0	;%	464	HER2_2_p_Shc_p_Grb2_Sos_ERK_pp
		0.0	;%	465	HER2_2_p_Shc_p_Grb2_Sos_p
		0.0	;%	466	EGFR_EGF_2_p_Grb2_Sos_ERK_pp
		0.0	;%	467	EGFR_EGF_2_p_Grb2_Sos_p
		0.0	;%	468	EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp
		0.0	;%	469	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p
		0.0	;%	470	Sos_p_SosPase
		0.0	;%	471	Grb2_Sos_p_SosPase
		0.0	;%	472	HER2_2_p_Grb2_Sos_p_SosPase
		0.0	;%	473	HER2_2_p_Shc_p_Grb2_Sos_p_SosPase
		0.0	;%	474	EGFR_EGF_2_p_Grb2_Sos_p_SosPase
		0.0	;%	475	EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase
		0.0	;%	476	ERK_pp_MEK
		0.0	;%	477	MEK_rp
		0.0	;%	478	MEK_rp_MKP3_p
		0.0	;%	479	MEK_rp_PP2A
		0.0	;%	480	ERK_pp_RAF_Act
		0.0	;%	481	RAF_Act_Inhib
		0.0	;%	482	AKT_p
		0.0	;%	483	AKT_p_RAF
		0.0	;%	484	RAF_Inhib
		0.0	;%	485	AKT_p_RAF_Act
		0.0	;%	486	RAF_Inhib_PP1
		0.0	;%	487	RAF_Act_Inhib_PP1
		0.0	;%	488	RAF_Inhib_PP2A
		0.0	;%	489	ERK_pp_cPLA2
		0.0	;%	490	cPLA2_p
		0.0	;%	491	cPLA2_p_cPLA2Pase
		0.0	;%	492	cPLA2_p_PKC
		0.0	;%	493	PI3K_Act_PIP2
		0.0	;%	494	PIP3
		0.0	;%	495	HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
		0.0	;%	496	HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		0.0	;%	497	HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		0.0	;%	498	EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
		0.0	;%	499	EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		0.0	;%	500	EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
		0.0	;%	501	PIP3_GAB
		0.0	;%	502	PIP3_PTEN
		0.0	;%	503	PIP3_AKT
		0.0	;%	504	AKT_m
		0.0	;%	505	PIP3_PDK1
		0.0	;%	506	PDK1_m
		0.0	;%	507	PDK1_m_AKT_m
		0.0	;%	508	AKT_p_PP2A
		0.0	;%	509	AKT_p_TOR
		0.0	;%	510	TOR_Act
		0.0	;%	511	TOR_Act_TORPase
		0.0	;%	512	TSC1_TSC2
		0.0	;%	513	Rheb_GTP
		0.0	;%	514	Rheb_GTP_TSC1_TSC2
		0.0	;%	515	Rheb_GTP_TSC1
		0.0	;%	516	Rheb_GTP_TSC2
		0.0	;%	517	Rheb_GDP_RhebGEF
		0.0	;%	518	Rheb_GTP_TOR
		0.0	;%	519	TSC1_AKT_p
		0.0	;%	520	TSC1_p
		0.0	;%	521	TSC2_AKT_p
		0.0	;%	522	TSC2_p
		0.0	;%	523	TSC1_TSC2_AKT_p
		0.0	;%	524	TSC1_TSC2_p
		0.0	;%	525	TSC2_ERK_pp
		0.0	;%	526	TSC1_TSC2_ERK_pp
		0.0	;%	527	TSC1_p_TSCPase
		0.0	;%	528	TSC2_p_TSCPase
		0.0	;%	529	TSC1_TSC2_p_TSCPase
		0.0	;%	530	R4EBP1_eIF4E
		0.0	;%	531	R4EBP1_TOR_Act
		0.0	;%	532	R4EBP1_p
		0.0	;%	533	R4EBP1_eIF4E_TOR_Act
		0.0	;%	534	R4EBP1_p_R4EBP1Pase
		0.0	;%	535	p70_TOR_Act
		0.0	;%	536	p70_Act
		0.0	;%	537	p70_Act_Ribo40S_inact
		0.0	;%	538	p70_Act_p70Pase
		0.0	;%	539	Ribo40S_Ribo40SPase
		0.0	;%	540	HER2_2_p_cPAcP
		0.0	;%	541	EGFR_EGF_2_p_cPAcP
		0.0	;%	542	cPAcP_2
		0.0	;%	543	cPAcP_4
		0.0	;%	544	HER2_2_p_cPAcP_2
		0.0	;%	545	HER2_2_p_cPAcP_4
		0.0	;%	546	HER2_2_sPAcP
		0.0	;%	547	sPAcP_e
		0.0	;%	548	ERK_pp_AR
		0.0	;%	549	AKT_p_AR
		0.0	;%	550	Import_ETS
		0.0	;%	551	ETS_n
		0.0	;%	552	Export_ETS_n
		0.0	;%	553	Import_AP1
		0.0	;%	554	AP1_n
		0.0	;%	555	Export_AP1_n
		0.0	;%	556	Import_ERK_pp
		0.0	;%	557	ERK_pp_n
		0.0	;%	558	Export_ERK_pp_n
		0.0	;%	559	ERK_pp_ETS
		0.0	;%	560	ETS_p
		0.0	;%	561	ERK_pp_n_ETS_n
		0.0	;%	562	ERK_pp_AP1
		0.0	;%	563	AP1_p
		0.0	;%	564	ERK_pp_n_AP1_n
		0.0	;%	565	PKC_Act_ETS
		0.0	;%	566	Import_ETS_p
		0.0	;%	567	Export_ETS_p_n
		0.0	;%	568	Import_AP1_p
		0.0	;%	569	Export_AP1_p_n
		0.0	;%	570	ETS_p_ETSPase
		0.0	;%	571	AP1_p_AP1Pase
		0.0	;%	572	Import_PP2A
		0.0	;%	573	PP2A_n
		0.0	;%	574	Export_PP2A_n
		0.0	;%	575	ERK_pp_n_PP2A_n
		0.0	;%	576	ERK_p_n
		0.0	;%	577	ERK_p_n_PP2A_n
		0.0	;%	578	ERK_n
		0.0	;%	579	Export_ERK_p_n
		0.0	;%	580	Export_ERK_n
		0.0	;%	581	Import_Sam68
		0.0	;%	582	Sam68_n
		0.0	;%	583	Export_Sam68_n
		0.0	;%	584	Sam68_ERK_pp
		0.0	;%	585	Sam68_p
		0.0	;%	586	Import_Sam68_p
		0.0	;%	587	Sam68_p_n
		0.0	;%	588	Sam68_n_ERK_pp_n
		0.0	;%	589	Import_Sam68Pase
		0.0	;%	590	Sam68Pase_n
		0.0	;%	591	Export_Sam68Pase_n
		0.0	;%	592	Sam68_p_Sam68Pase
		0.0	;%	593	Sam68_p_n_Sam68Pase_n
		0.0	;%	594	Sam68_p_n_mRNA_n_CycD1a
		0.0	;%	595	CycD1a_CDK4
		0.0	;%	596	CycD1a_CDK6
		0.0	;%	597	CycD1b_CDK4
		0.0	;%	598	CycD1b_CDK6
		0.0	;%	599	Import_CycD1a_CDK4
		0.0	;%	600	CycD1a_n_CDK4_n
		0.0	;%	601	Export_CycD1a_n_CDK4_n
		0.0	;%	602	Import_CycD1a_CDK6
		0.0	;%	603	CycD1a_n_CDK6_n
		0.0	;%	604	Export_CycD1a_n_CDK6_n
		0.0	;%	605	Import_CycD1b_CDK4
		0.0	;%	606	CycD1b_n_CDK4_n
		0.0	;%	607	Export_CycD1b_n_CDK4_n
		0.0	;%	608	Import_CycD1b_CDK6
		0.0	;%	609	CycD1b_n_CDK6_n
		0.0	;%	610	Export_CycD1b_n_CDK6_n
		0.0	;%	611	Import_p21Cip1
		0.0	;%	612	p21Cip1_n
		0.0	;%	613	Export_p21Cip1_n
		0.0	;%	614	Import_p27Kip1
		0.0	;%	615	p27Kip1_n
		0.0	;%	616	Export_p27Kip1_n
		0.0	;%	617	Import_p16INK4
		0.0	;%	618	p16INK4_n
		0.0	;%	619	Export_p16INK4_n
		0.0	;%	620	CycD1a_p21Cip1
		0.0	;%	621	CycD1a_p27Kip1
		0.0	;%	622	CycD1a_CDK4_p21Cip1
		0.0	;%	623	CycD1a_CDK4_p27Kip1
		0.0	;%	624	CycD1a_CDK6_p21Cip1
		0.0	;%	625	CycD1a_CDK6_p27Kip1
		0.0	;%	626	CycD1b_p21Cip1
		0.0	;%	627	CycD1b_p27Kip1
		0.0	;%	628	CycD1b_CDK4_p21Cip1
		0.0	;%	629	CycD1b_CDK4_p27Kip1
		0.0	;%	630	CycD1b_CDK6_p21Cip1
		0.0	;%	631	CycD1b_CDK6_p27Kip1
		0.0	;%	632	Import_CycD1a_CDK4_p21Cip1
		0.0	;%	633	CycD1a_n_CDK4_n_p21Cip1_n
		0.0	;%	634	Import_CycD1a_CDK4_p27Kip1
		0.0	;%	635	CycD1a_n_CDK4_n_p27Kip1_n
		0.0	;%	636	Import_CycD1a_CDK6_p21Cip1
		0.0	;%	637	CycD1a_n_CDK6_n_p21Cip1_n
		0.0	;%	638	Import_CycD1a_CDK6_p27Kip1
		0.0	;%	639	CycD1a_n_CDK6_n_p27Kip1_n
		0.0	;%	640	Import_CycD1b_CDK4_p21Cip1
		0.0	;%	641	CycD1b_n_CDK4_n_p21Cip1_n
		0.0	;%	642	Import_CycD1b_CDK4_p27Kip1
		0.0	;%	643	CycD1b_n_CDK4_n_p27Kip1_n
		0.0	;%	644	Import_CycD1b_CDK6_p21Cip1
		0.0	;%	645	CycD1b_n_CDK6_n_p21Cip1_n
		0.0	;%	646	Import_CycD1b_CDK6_p27Kip1
		0.0	;%	647	CycD1b_n_CDK6_n_p27Kip1_n
		0.0	;%	648	Import_Rb
		0.0	;%	649	Rb_n
		0.0	;%	650	Export_Rb_n
		0.0	;%	651	Import_E2F
		0.0	;%	652	Export_E2F_n
		0.0	;%	653	E2F_Rb
		0.0	;%	654	Import_E2F_Rb
		0.0	;%	655	E2F_n_Rb_n
		0.0	;%	656	Export_E2F_n_Rb_n
		0.0	;%	657	CycD1a_n_CDK4_n_E2F_n_Rb_n
		0.0	;%	658	Rb_n_p
		0.0	;%	659	CycD1a_n_CDK6_n_E2F_n_Rb_n
		0.0	;%	660	CycD1a_n_CDK4_n_Rb_n
		0.0	;%	661	CycD1a_n_CDK6_n_Rb_n
		0.0	;%	662	CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
		0.0	;%	663	CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
		0.0	;%	664	CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
		0.0	;%	665	CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
		0.0	;%	666	CycD1b_n_CDK4_n_E2F_n_Rb_n
		0.0	;%	667	CycD1b_n_CDK6_n_E2F_n_Rb_n
		0.0	;%	668	CycD1b_n_CDK4_n_Rb_n
		0.0	;%	669	CycD1b_n_CDK6_n_Rb_n
		0.0	;%	670	CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
		0.0	;%	671	CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
		0.0	;%	672	CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
		0.0	;%	673	CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
		0.0	;%	674	CycE_Cdk2
		0.0	;%	675	CDC25A_RAF_Act
		0.0	;%	676	CDC25A_p
		0.0	;%	677	CDC25A_PKC_Act
		0.0	;%	678	CDC25A_p70_Act
		0.0	;%	679	CycE_Cdk2_CDC25A_p
		0.0	;%	680	CycE_Cdk2_Act
		0.0	;%	681	Import_CycE_Cdk2_Act
		0.0	;%	682	CycE_Cdk2_Act_n
		0.0	;%	683	Export_CycE_Cdk2_Act_n
		0.0	;%	684	CycE_Cdk2_Act_CDC25A
		0.0	;%	685	CDC25A_p_CDC25APase
		0.0	;%	686	CycE_Cdk2_Act_Cdk2Pase
		0.0	;%	687	CycE_Cdk2_Act_n_E2F_n_Rb_n
		0.0	;%	688	CycE_Cdk2_Act_n_Rb_n
		0.0	;%	689	Import_RbPase
		0.0	;%	690	RbPase_n
		0.0	;%	691	Export_RbPase_n
		0.0	;%	692	Rb_n_p_RbPase_n
		0.0	;%	693	CycE_Cdk2_Act_n_E2F_n
		0.0	;%	694	E2F_n_p
		0.0	;%	695	p21Cip1_Cdk2
		0.0	;%	696	p27Kip1_Cdk2
		0.0	;%	697	p21Cip1_CycE_Cdk2
		0.0	;%	698	p27Kip1_CycE_Cdk2
		0.0	;%	699	p21Cip1_CycE_Cdk2_Act
		0.0	;%	700	p27Kip1_CycE_Cdk2_Act
		0.0	;%	701	p21Cip1_n_CycE_Cdk2_Act_n
		0.0	;%	702	p27Kip1_n_CycE_Cdk2_Act_n
		0.0	;%	703	p21Cip1_p
		0.0	;%	704	p27Kip1_p
		0.0	;%	705	p21Cip1_n_p
		0.0	;%	706	p27Kip1_n_p
		0.0	;%	707	p16INK4_CDK4
		0.0	;%	708	p16INK4_CDK6
		0.0	;%	709	p16INK4_CycD1a_CDK4
		0.0	;%	710	p16INK4_CycD1a_CDK6
		0.0	;%	711	p16INK4_n_CycD1a_n_CDK4_n
		0.0	;%	712	p16INK4_n_CycD1a_n_CDK6_n
		0.0	;%	713	p16INK4_CycD1b_CDK4
		0.0	;%	714	p16INK4_CycD1b_CDK6
		0.0	;%	715	p16INK4_n_CycD1b_n_CDK4_n
		0.0	;%	716	p16INK4_n_CycD1b_n_CDK6_n
		0.0	;%	717	Export_p16INK4_n_CycD1a_n_CDK4_n
		0.0	;%	718	Export_p16INK4_n_CycD1a_n_CDK6_n
		0.0	;%	719	Export_p16INK4_n_CycD1b_n_CDK4_n
		0.0	;%	720	Export_p16INK4_n_CycD1b_n_CDK6_n
		0.0	;%	721	AP1_AR
		0.0	;%	722	AP1_AR_p
		0.0	;%	723	AP1_AR_p_DHT_2
		0.0	;%	724	AP1_AR_p_2
		0.0	;%	725	AP1_AR_p_DHT_AR_p
		0.0	;%	726	AP1_n_AR_p_DHT_2_n
		0.0	;%	727	AP1_n_AR_p_2_n
		0.0	;%	728	AP1_n_AR_p_DHT_AR_p_n
		0.0	;%	729	AP1_p_n_AR_p_DHT_2_n
		0.0	;%	730	AP1_p_n_AR_p_2_n
		0.0	;%	731	AP1_p_n_AR_p_DHT_AR_p_n
		0.0	;%	732	CycD1a_AR
		0.0	;%	733	CycD1a_AR_DHT
		0.0	;%	734	CycD1a_AR_p_DHT
		0.0	;%	735	CycD1a_AR_p_DHT_2
		0.0	;%	736	CycD1a_AR_p_2
		0.0	;%	737	CycD1a_AR_p_DHT_AR_p
		0.0	;%	738	CycD1a_CDK4_AR
		0.0	;%	739	CycD1a_CDK4_AR_DHT
		0.0	;%	740	CycD1a_CDK4_AR_p_DHT
		0.0	;%	741	CycD1a_CDK4_AR_p_DHT_2
		0.0	;%	742	CycD1a_CDK4_AR_p_2
		0.0	;%	743	CycD1a_CDK4_AR_p_DHT_AR_p
		0.0	;%	744	CycD1a_CDK6_AR
		0.0	;%	745	CycD1a_CDK6_AR_DHT
		0.0	;%	746	CycD1a_CDK6_AR_p_DHT
		0.0	;%	747	CycD1a_CDK6_AR_p_DHT_2
		0.0	;%	748	CycD1a_CDK6_AR_p_2
		0.0	;%	749	CycD1a_CDK6_AR_p_DHT_AR_p
		0.0	;%	750	CycD1a_n_CDK4_n_AR_p_DHT_2_n
		0.0	;%	751	CycD1a_n_CDK4_n_AR_p_2_n
		0.0	;%	752	CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n
		0.0	;%	753	CycD1a_n_CDK6_n_AR_p_DHT_2_n
		0.0	;%	754	CycD1a_n_CDK6_n_AR_p_2_n
		0.0	;%	755	CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n
		0.0	;%	756	CycE_AR_p_DHT_2
		0.0	;%	757	CycE_AR_p_2
		0.0	;%	758	CycE_AR_p_DHT_AR_p
		0.0	;%	759	Import_CycE_AR_p_DHT_2
		0.0	;%	760	Export_CycE_AR_p_DHT_2_n
		0.0	;%	761	Import_CycE_AR_p_2
		0.0	;%	762	Export_CycE_AR_p_2_n
		0.0	;%	763	Import_CycE_AR_p_DHT_AR_p
		0.0	;%	764	Export_CycE_AR_p_DHT_AR_p_n
		0.0	;%	765	CDK6_AR_p_DHT_2
		0.0	;%	766	CDK6_AR_p_2
		0.0	;%	767	CDK6_AR_p_DHT_AR_p
		0.0	;%	768	Import_CDK6_AR_p_DHT_2
		0.0	;%	769	Export_CDK6_AR_p_DHT_2_n
		0.0	;%	770	Import_CDK6_AR_p_2
		0.0	;%	771	Export_CDK6_AR_p_2_n
		0.0	;%	772	Import_CDK6_AR_p_DHT_AR_p
		0.0	;%	773	Export_CDK6_AR_p_DHT_AR_p_n
		0.0	;%	774	CDC25A_p_AR
		0.0	;%	775	CDC25A_p_AR_p
		0.0	;%	776	CDC25A_p_AR_p_DHT_2
		0.0	;%	777	CDC25A_p_AR_p_2
		0.0	;%	778	CDC25A_p_AR_p_DHT_AR_p
		0.0	;%	779	AR_p_PP2A
		0.0	;%	780	AR_p_DHT_PP2A
	];

	% System size -
	NPARAMETERS = length(k);
	NSTATES = length(IC);
	kV = [k; IC];
	
	% Initialize the measurement selection matrix. Default is the identity matrix 
	MEASUREMENT_INDEX_VECTOR = [1:NSTATES];
	
	% =========== DO NOT EDIT BELOW THIS LINE ==============%
	DF.RATE_CONSTANT_VECTOR=k;
	DF.INITIAL_CONDITIONS=IC;
	DF.NUMBER_PARAMETERS=NPARAMETERS;
	DF.NUMBER_OF_STATES=NSTATES;
	DF.PARAMETER_VECTOR=kV;
	DF.MEASUREMENT_SELECTION_VECTOR = MEASUREMENT_INDEX_VECTOR;
	% ======================================================%
	
return;
