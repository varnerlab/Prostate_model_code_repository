% ---------------------------------------------------------------------
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
% Kinetics.m was generated using the UNIVERSAL code generator system.
% Username: kathyrogers
% Type: OCTAVE-M
% Version: v1.0
% 
% Arguments:
% x  - state vector 
% kV - parameter vector 
% rV - rate vector 
% ---------------------------------------------------------------------
%
% ---------------------------------------------- 
% Convert x's to symbols -- helps with debugging.
% ---------------------------------------------- 

function [rV]=Kinetics(x,kV)

RNAp	 = 	x(1,1);
eIF4E	 = 	x(2,1);
Ribo60S	 = 	x(3,1);
HSP	 = 	x(4,1);
ARPase	 = 	x(5,1);
HER2	 = 	x(6,1);
SHP	 = 	x(7,1);
Grb2	 = 	x(8,1);
Sos	 = 	x(9,1);
Ras_GDP	 = 	x(10,1);
Shc	 = 	x(11,1);
EGFR	 = 	x(12,1);
EGF	 = 	x(13,1);
RasGAP	 = 	x(14,1);
ShcPase	 = 	x(15,1);
GABPase	 = 	x(16,1);
GAB	 = 	x(17,1);
PI3K	 = 	x(18,1);
PI3KPase	 = 	x(19,1);
PLCg	 = 	x(20,1);
PLCgPase	 = 	x(21,1);
PIP2	 = 	x(22,1);
PKC	 = 	x(23,1);
PKCPase	 = 	x(24,1);
CK2	 = 	x(25,1);
CK2Pase	 = 	x(26,1);
RAF	 = 	x(27,1);
MEK	 = 	x(28,1);
ERK	 = 	x(29,1);
MKP1	 = 	x(30,1);
MKP2	 = 	x(31,1);
MKP3	 = 	x(32,1);
PP1	 = 	x(33,1);
PP2A	 = 	x(34,1);
SosPase	 = 	x(35,1);
cPLA2	 = 	x(36,1);
cPLA2Pase	 = 	x(37,1);
PTEN	 = 	x(38,1);
AKT	 = 	x(39,1);
PDK1	 = 	x(40,1);
TOR	 = 	x(41,1);
TORPase	 = 	x(42,1);
TSC1	 = 	x(43,1);
TSC2	 = 	x(44,1);
Rheb_GDP	 = 	x(45,1);
RhebGEF	 = 	x(46,1);
TSCPase	 = 	x(47,1);
R4EBP1	 = 	x(48,1);
R4EBP1Pase	 = 	x(49,1);
p70	 = 	x(50,1);
Ribo40S_inact	 = 	x(51,1);
p70Pase	 = 	x(52,1);
Ribo40SPase	 = 	x(53,1);
ETSPase	 = 	x(54,1);
AP1Pase	 = 	x(55,1);
Sam68	 = 	x(56,1);
Sam68Pase	 = 	x(57,1);
CDK4	 = 	x(58,1);
CDK6	 = 	x(59,1);
Cdk2	 = 	x(60,1);
CDC25APase	 = 	x(61,1);
Cdk2Pase	 = 	x(62,1);
RbPase	 = 	x(63,1);
Import	 = 	x(64,1);
Export	 = 	x(65,1);
DHT	 = 	x(66,1);
g_ETS	 = 	x(67,1);
g_ETS_RNAp	 = 	x(68,1);
mRNA_n_ETS	 = 	x(69,1);
Export_mRNA_n_ETS	 = 	x(70,1);
mRNA_ETS	 = 	x(71,1);
g_AP1	 = 	x(72,1);
g_AP1_RNAp	 = 	x(73,1);
mRNA_n_AP1	 = 	x(74,1);
AP1_p_n	 = 	x(75,1);
g_AP1_AP1_p_n	 = 	x(76,1);
g_AP1_AP1_p_n_RNAp	 = 	x(77,1);
Export_mRNA_n_AP1	 = 	x(78,1);
mRNA_AP1	 = 	x(79,1);
g_CycD1	 = 	x(80,1);
g_CycD1_RNAp	 = 	x(81,1);
mRNA_n_CycD1a	 = 	x(82,1);
ETS_p_n	 = 	x(83,1);
g_CycD1_ETS_p_n	 = 	x(84,1);
g_CycD1_ETS_p_n_RNAp	 = 	x(85,1);
g_CycD1_AP1_p_n	 = 	x(86,1);
g_CycD1_AP1_p_n_RNAp	 = 	x(87,1);
E2F_n	 = 	x(88,1);
g_CycD1_E2F_n	 = 	x(89,1);
g_CycD1_E2F_n_RNAp	 = 	x(90,1);
Export_mRNA_n_CycD1a	 = 	x(91,1);
mRNA_CycD1a	 = 	x(92,1);
mRNA_n_CycD1b	 = 	x(93,1);
Export_mRNA_n_CycD1b	 = 	x(94,1);
mRNA_CycD1b	 = 	x(95,1);
g_CycE	 = 	x(96,1);
g_CycE_RNAp	 = 	x(97,1);
mRNA_n_CycE	 = 	x(98,1);
g_CycE_E2F_n	 = 	x(99,1);
g_CycE_E2F_n_RNAp	 = 	x(100,1);
Export_mRNA_n_CycE	 = 	x(101,1);
mRNA_CycE	 = 	x(102,1);
g_Rb	 = 	x(103,1);
g_Rb_RNAp	 = 	x(104,1);
mRNA_n_Rb	 = 	x(105,1);
g_Rb_E2F_n	 = 	x(106,1);
g_Rb_E2F_n_RNAp	 = 	x(107,1);
Export_mRNA_n_Rb	 = 	x(108,1);
mRNA_Rb	 = 	x(109,1);
g_E2F	 = 	x(110,1);
g_E2F_RNAp	 = 	x(111,1);
mRNA_n_E2F	 = 	x(112,1);
g_E2F_AP1_p_n	 = 	x(113,1);
g_E2F_AP1_p_n_RNAp	 = 	x(114,1);
g_E2F_E2F_n	 = 	x(115,1);
g_E2F_E2F_n_RNAp	 = 	x(116,1);
Export_mRNA_n_E2F	 = 	x(117,1);
mRNA_E2F	 = 	x(118,1);
g_CDC25A	 = 	x(119,1);
g_CDC25A_RNAp	 = 	x(120,1);
mRNA_n_CDC25A	 = 	x(121,1);
g_CDC25A_E2F_n	 = 	x(122,1);
g_CDC25A_E2F_n_RNAp	 = 	x(123,1);
Export_mRNA_n_CDC25A	 = 	x(124,1);
mRNA_CDC25A	 = 	x(125,1);
g_p21Cip1	 = 	x(126,1);
g_p21Cip1_RNAp	 = 	x(127,1);
mRNA_n_p21Cip1	 = 	x(128,1);
g_p21Cip1_ETS_p_n	 = 	x(129,1);
g_p21Cip1_ETS_p_n_RNAp	 = 	x(130,1);
g_p21Cip1_E2F_n	 = 	x(131,1);
g_p21Cip1_E2F_n_RNAp	 = 	x(132,1);
AR_p_2_n	 = 	x(133,1);
g_p21Cip1_AR_p_2_n	 = 	x(134,1);
g_p21Cip1_AR_p_2_n_RNAp	 = 	x(135,1);
AR_p_DHT_2_n	 = 	x(136,1);
g_p21Cip1_AR_p_DHT_2_n	 = 	x(137,1);
g_p21Cip1_AR_p_DHT_2_n_RNAp	 = 	x(138,1);
AR_p_DHT_AR_p_n	 = 	x(139,1);
g_p21Cip1_AR_p_DHT_AR_p_n	 = 	x(140,1);
g_p21Cip1_AR_p_DHT_AR_p_n_RNAp	 = 	x(141,1);
CycE_AR_p_DHT_2_n	 = 	x(142,1);
g_p21Cip1_CycE_AR_p_DHT_2_n	 = 	x(143,1);
g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp	 = 	x(144,1);
CycE_AR_p_2_n	 = 	x(145,1);
g_p21Cip1_CycE_AR_p_2_n	 = 	x(146,1);
g_p21Cip1_CycE_AR_p_2_n_RNAp	 = 	x(147,1);
CycE_AR_p_DHT_AR_p_n	 = 	x(148,1);
g_p21Cip1_CycE_AR_p_DHT_AR_p_n	 = 	x(149,1);
g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp	 = 	x(150,1);
CDK6_AR_p_DHT_2_n	 = 	x(151,1);
g_p21Cip1_CDK6_AR_p_DHT_2_n	 = 	x(152,1);
g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp	 = 	x(153,1);
CDK6_AR_p_2_n	 = 	x(154,1);
g_p21Cip1_CDK6_AR_p_2_n	 = 	x(155,1);
g_p21Cip1_CDK6_AR_p_2_n_RNAp	 = 	x(156,1);
CDK6_AR_p_DHT_AR_p_n	 = 	x(157,1);
g_p21Cip1_CDK6_AR_p_DHT_AR_p_n	 = 	x(158,1);
g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp	 = 	x(159,1);
Export_mRNA_n_p21Cip1	 = 	x(160,1);
mRNA_p21Cip1	 = 	x(161,1);
g_p27Kip1	 = 	x(162,1);
g_p27Kip1_RNAp	 = 	x(163,1);
mRNA_n_p27Kip1	 = 	x(164,1);
g_p27Kip1_AP1_p_n	 = 	x(165,1);
Export_mRNA_n_p27Kip1	 = 	x(166,1);
mRNA_p27Kip1	 = 	x(167,1);
g_p16INK4	 = 	x(168,1);
g_p16INK4_RNAp	 = 	x(169,1);
mRNA_n_p16INK4	 = 	x(170,1);
Export_mRNA_n_p16INK4	 = 	x(171,1);
mRNA_p16INK4	 = 	x(172,1);
g_PSA	 = 	x(173,1);
g_PSA_RNAp	 = 	x(174,1);
mRNA_n_PSA	 = 	x(175,1);
g_PSA_AR_p_2_n	 = 	x(176,1);
g_PSA_AR_p_2_n_RNAp	 = 	x(177,1);
g_PSA_AR_p_DHT_2_n	 = 	x(178,1);
g_PSA_AR_p_DHT_2_n_RNAp	 = 	x(179,1);
g_PSA_AR_p_DHT_AR_p_n	 = 	x(180,1);
g_PSA_AR_p_DHT_AR_p_n_RNAp	 = 	x(181,1);
g_PSA_CycE_AR_p_DHT_2_n	 = 	x(182,1);
g_PSA_CycE_AR_p_DHT_2_n_RNAp	 = 	x(183,1);
g_PSA_CycE_AR_p_2_n	 = 	x(184,1);
g_PSA_CycE_AR_p_2_n_RNAp	 = 	x(185,1);
g_PSA_CycE_AR_p_DHT_AR_p_n	 = 	x(186,1);
g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp	 = 	x(187,1);
g_PSA_CDK6_AR_p_DHT_2_n	 = 	x(188,1);
g_PSA_CDK6_AR_p_DHT_2_n_RNAp	 = 	x(189,1);
g_PSA_CDK6_AR_p_2_n	 = 	x(190,1);
g_PSA_CDK6_AR_p_2_n_RNAp	 = 	x(191,1);
g_PSA_CDK6_AR_p_DHT_AR_p_n	 = 	x(192,1);
g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp	 = 	x(193,1);
Export_mRNA_n_PSA	 = 	x(194,1);
mRNA_PSA	 = 	x(195,1);
g_PAcP	 = 	x(196,1);
g_PAcP_RNAp	 = 	x(197,1);
mRNA_n_PAcP	 = 	x(198,1);
g_PAcP_AR_p_2_n	 = 	x(199,1);
g_PAcP_AR_p_DHT_2_n	 = 	x(200,1);
g_PAcP_AR_p_DHT_AR_p_n	 = 	x(201,1);
g_PAcP_CycE_AR_p_DHT_2_n	 = 	x(202,1);
g_PAcP_CycE_AR_p_2_n	 = 	x(203,1);
g_PAcP_CycE_AR_p_DHT_AR_p_n	 = 	x(204,1);
g_PAcP_CDK6_AR_p_DHT_2_n	 = 	x(205,1);
g_PAcP_CDK6_AR_p_2_n	 = 	x(206,1);
g_PAcP_CDK6_AR_p_DHT_AR_p_n	 = 	x(207,1);
Export_mRNA_n_PAcP	 = 	x(208,1);
mRNA_PAcP	 = 	x(209,1);
g_AR	 = 	x(210,1);
g_AR_RNAp	 = 	x(211,1);
mRNA_n_AR	 = 	x(212,1);
g_AR_AR_p_2_n	 = 	x(213,1);
g_AR_AR_p_2_n_RNAp	 = 	x(214,1);
g_AR_AR_p_DHT_2_n	 = 	x(215,1);
g_AR_AR_p_DHT_2_n_RNAp	 = 	x(216,1);
g_AR_AR_p_DHT_AR_p_n	 = 	x(217,1);
g_AR_AR_p_DHT_AR_p_n_RNAp	 = 	x(218,1);
g_AR_CycE_AR_p_DHT_2_n	 = 	x(219,1);
g_AR_CycE_AR_p_DHT_2_n_RNAp	 = 	x(220,1);
g_AR_CycE_AR_p_2_n	 = 	x(221,1);
g_AR_CycE_AR_p_2_n_RNAp	 = 	x(222,1);
g_AR_CycE_AR_p_DHT_AR_p_n	 = 	x(223,1);
g_AR_CycE_AR_p_DHT_AR_p_n_RNAp	 = 	x(224,1);
g_AR_CDK6_AR_p_DHT_2_n	 = 	x(225,1);
g_AR_CDK6_AR_p_DHT_2_n_RNAp	 = 	x(226,1);
g_AR_CDK6_AR_p_2_n	 = 	x(227,1);
g_AR_CDK6_AR_p_2_n_RNAp	 = 	x(228,1);
g_AR_CDK6_AR_p_DHT_AR_p_n	 = 	x(229,1);
g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp	 = 	x(230,1);
g_AR_E2F_n	 = 	x(231,1);
Export_mRNA_n_AR	 = 	x(232,1);
mRNA_AR	 = 	x(233,1);
mRNA_ETS_eIF4E	 = 	x(234,1);
Ribo40S	 = 	x(235,1);
mRNA_ETS_eIF4E_Ribo40S	 = 	x(236,1);
mRNA_ETS_eIF4E_Ribo40S_Ribo60S	 = 	x(237,1);
mRNA_ETS_Ribo40S_Ribo60S	 = 	x(238,1);
mRNA_ETS_Ribo40S_Ribo60S_Elong	 = 	x(239,1);
ETS	 = 	x(240,1);
mRNA_AP1_eIF4E	 = 	x(241,1);
mRNA_AP1_eIF4E_Ribo40S	 = 	x(242,1);
mRNA_AP1_eIF4E_Ribo40S_Ribo60S	 = 	x(243,1);
mRNA_AP1_Ribo40S_Ribo60S	 = 	x(244,1);
mRNA_AP1_Ribo40S_Ribo60S_Elong	 = 	x(245,1);
AP1	 = 	x(246,1);
mRNA_CycD1a_eIF4E	 = 	x(247,1);
mRNA_CycD1a_eIF4E_Ribo40S	 = 	x(248,1);
mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S	 = 	x(249,1);
mRNA_CycD1a_Ribo40S_Ribo60S	 = 	x(250,1);
mRNA_CycD1a_Ribo40S_Ribo60S_Elong	 = 	x(251,1);
CycD1a	 = 	x(252,1);
mRNA_CycD1b_eIF4E	 = 	x(253,1);
mRNA_CycD1b_eIF4E_Ribo40S	 = 	x(254,1);
mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S	 = 	x(255,1);
mRNA_CycD1b_Ribo40S_Ribo60S	 = 	x(256,1);
mRNA_CycD1b_Ribo40S_Ribo60S_Elong	 = 	x(257,1);
CycD1b	 = 	x(258,1);
mRNA_CycE_eIF4E	 = 	x(259,1);
mRNA_CycE_eIF4E_Ribo40S	 = 	x(260,1);
mRNA_CycE_eIF4E_Ribo40S_Ribo60S	 = 	x(261,1);
mRNA_CycE_Ribo40S_Ribo60S	 = 	x(262,1);
mRNA_CycE_Ribo40S_Ribo60S_Elong	 = 	x(263,1);
CycE	 = 	x(264,1);
mRNA_Rb_eIF4E	 = 	x(265,1);
mRNA_Rb_eIF4E_Ribo40S	 = 	x(266,1);
mRNA_Rb_eIF4E_Ribo40S_Ribo60S	 = 	x(267,1);
mRNA_Rb_Ribo40S_Ribo60S	 = 	x(268,1);
mRNA_Rb_Ribo40S_Ribo60S_Elong	 = 	x(269,1);
Rb	 = 	x(270,1);
mRNA_E2F_eIF4E	 = 	x(271,1);
mRNA_E2F_eIF4E_Ribo40S	 = 	x(272,1);
mRNA_E2F_eIF4E_Ribo40S_Ribo60S	 = 	x(273,1);
mRNA_E2F_Ribo40S_Ribo60S	 = 	x(274,1);
mRNA_E2F_Ribo40S_Ribo60S_Elong	 = 	x(275,1);
E2F	 = 	x(276,1);
mRNA_CDC25A_eIF4E	 = 	x(277,1);
mRNA_CDC25A_eIF4E_Ribo40S	 = 	x(278,1);
mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S	 = 	x(279,1);
mRNA_CDC25A_Ribo40S_Ribo60S	 = 	x(280,1);
mRNA_CDC25A_Ribo40S_Ribo60S_Elong	 = 	x(281,1);
CDC25A	 = 	x(282,1);
mRNA_p21Cip1_eIF4E	 = 	x(283,1);
mRNA_p21Cip1_eIF4E_Ribo40S	 = 	x(284,1);
mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S	 = 	x(285,1);
mRNA_p21Cip1_Ribo40S_Ribo60S	 = 	x(286,1);
mRNA_p21Cip1_Ribo40S_Ribo60S_Elong	 = 	x(287,1);
p21Cip1	 = 	x(288,1);
mRNA_p27Kip1_eIF4E	 = 	x(289,1);
mRNA_p27Kip1_eIF4E_Ribo40S	 = 	x(290,1);
mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S	 = 	x(291,1);
mRNA_p27Kip1_Ribo40S_Ribo60S	 = 	x(292,1);
mRNA_p27Kip1_Ribo40S_Ribo60S_Elong	 = 	x(293,1);
p27Kip1	 = 	x(294,1);
mRNA_p16INK4_eIF4E	 = 	x(295,1);
mRNA_p16INK4_eIF4E_Ribo40S	 = 	x(296,1);
mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S	 = 	x(297,1);
mRNA_p16INK4_Ribo40S_Ribo60S	 = 	x(298,1);
mRNA_p16INK4_Ribo40S_Ribo60S_Elong	 = 	x(299,1);
p16INK4	 = 	x(300,1);
mRNA_PSA_eIF4E	 = 	x(301,1);
mRNA_PSA_eIF4E_Ribo40S	 = 	x(302,1);
mRNA_PSA_eIF4E_Ribo40S_Ribo60S	 = 	x(303,1);
mRNA_PSA_Ribo40S_Ribo60S	 = 	x(304,1);
mRNA_PSA_Ribo40S_Ribo60S_Elong	 = 	x(305,1);
PSA	 = 	x(306,1);
mRNA_PAcP_eIF4E	 = 	x(307,1);
mRNA_PAcP_eIF4E_Ribo40S	 = 	x(308,1);
mRNA_PAcP_eIF4E_Ribo40S_Ribo60S	 = 	x(309,1);
mRNA_PAcP_Ribo40S_Ribo60S	 = 	x(310,1);
mRNA_PAcP_Ribo40S_Ribo60S_Elong	 = 	x(311,1);
cPAcP	 = 	x(312,1);
sPAcP	 = 	x(313,1);
mRNA_AR_eIF4E	 = 	x(314,1);
mRNA_AR_eIF4E_Ribo40S	 = 	x(315,1);
mRNA_AR_eIF4E_Ribo40S_Ribo60S	 = 	x(316,1);
mRNA_AR_Ribo40S_Ribo60S	 = 	x(317,1);
mRNA_AR_Ribo40S_Ribo60S_Elong	 = 	x(318,1);
AR	 = 	x(319,1);
AR_HSP	 = 	x(320,1);
AR_DHT	 = 	x(321,1);
AR_p_DHT	 = 	x(322,1);
AR_p	 = 	x(323,1);
AR_p_DHT_2	 = 	x(324,1);
AR_p_2	 = 	x(325,1);
AR_p_DHT_AR_p	 = 	x(326,1);
AR_p_ARPase	 = 	x(327,1);
AR_p_DHT_ARPase	 = 	x(328,1);
Import_AR_p_DHT_2	 = 	x(329,1);
Export_AR_p_DHT_2_n	 = 	x(330,1);
Import_AR_p_2	 = 	x(331,1);
Export_AR_p_2_n	 = 	x(332,1);
Import_AR_p_DHT_AR_p	 = 	x(333,1);
Export_AR_p_DHT_AR_p_n	 = 	x(334,1);
HER2_2	 = 	x(335,1);
HER2_2_p	 = 	x(336,1);
HER2_2_p_SHP	 = 	x(337,1);
HER2_2_p_Grb2	 = 	x(338,1);
HER2_2_p_Grb2_Sos	 = 	x(339,1);
Grb2_Sos	 = 	x(340,1);
HER2_2_p_Grb2_Sos_Ras_GDP	 = 	x(341,1);
HER2_2_p_Grb2_Sos_Ras_GTP	 = 	x(342,1);
Ras_GTP	 = 	x(343,1);
HER2_2_p_Shc	 = 	x(344,1);
HER2_2_p_Shc_p	 = 	x(345,1);
Shc_p	 = 	x(346,1);
HER2_2_p_Shc_p_Grb2	 = 	x(347,1);
HER2_2_p_Shc_p_Grb2_Sos	 = 	x(348,1);
Shc_p_Grb2_Sos	 = 	x(349,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP	 = 	x(350,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP	 = 	x(351,1);
EGFR_EGF	 = 	x(352,1);
EGFR_EGF_2	 = 	x(353,1);
EGFR_EGF_2_p	 = 	x(354,1);
EGFR_EGF_2_p_SHP	 = 	x(355,1);
EGFR_EGF_2_p_Grb2	 = 	x(356,1);
EGFR_EGF_2_p_Grb2_Sos	 = 	x(357,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GDP	 = 	x(358,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP	 = 	x(359,1);
EGFR_EGF_2_p_Shc	 = 	x(360,1);
EGFR_EGF_2_p_Shc_p	 = 	x(361,1);
EGFR_EGF_2_p_Shc_p_Grb2	 = 	x(362,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos	 = 	x(363,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP	 = 	x(364,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP	 = 	x(365,1);
Ras_GTP_RasGAP	 = 	x(366,1);
HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP	 = 	x(367,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 = 	x(368,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP	 = 	x(369,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 = 	x(370,1);
EGF_in	 = 	x(371,1);
EGFR_EGF_2_p_in	 = 	x(372,1);
EGFR_in	 = 	x(373,1);
Shc_p_ShcPase	 = 	x(374,1);
HER2_2_p_Shc_p_ShcPase	 = 	x(375,1);
EGFR_EGF_2_p_Shc_p_ShcPase	 = 	x(376,1);
GAB_m_p	 = 	x(377,1);
GAB_m_p_GABPase	 = 	x(378,1);
GAB_m	 = 	x(379,1);
HER2_2_p_Grb2_GAB_m_p	 = 	x(380,1);
HER2_2_p_Grb2_GAB_m_p_GABPase	 = 	x(381,1);
HER2_2_p_Grb2_GAB_m	 = 	x(382,1);
EGFR_EGF_2_p_Grb2_GAB_m_p	 = 	x(383,1);
EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase	 = 	x(384,1);
EGFR_EGF_2_p_Grb2_GAB_m	 = 	x(385,1);
HER2_2_p_Grb2_GAB_m_p_PI3K	 = 	x(386,1);
HER2_2_p_Grb2_GAB_m_p_PI3K_Act	 = 	x(387,1);
PI3K_Act	 = 	x(388,1);
HER2_2_p_Grb2_Sos_Ras_GTP_PI3K	 = 	x(389,1);
HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act	 = 	x(390,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 = 	x(391,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act	 = 	x(392,1);
EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K	 = 	x(393,1);
EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act	 = 	x(394,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K	 = 	x(395,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act	 = 	x(396,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 = 	x(397,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act	 = 	x(398,1);
PI3K_Act_PI3KPase	 = 	x(399,1);
HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 = 	x(400,1);
HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 = 	x(401,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 = 	x(402,1);
EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 = 	x(403,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 = 	x(404,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 = 	x(405,1);
HER2_2_p_PLCg	 = 	x(406,1);
HER2_2_p_PLCg_p	 = 	x(407,1);
PLCg_p	 = 	x(408,1);
EGFR_EGF_2_p_PLCg	 = 	x(409,1);
EGFR_EGF_2_p_PLCg_p	 = 	x(410,1);
PLCg_p_PLCgPase	 = 	x(411,1);
HER2_2_p_PLCg_p_PLCgPase	 = 	x(412,1);
EGFR_EGF_2_p_PLCg_p_PLCgPase	 = 	x(413,1);
PLCg_p_PIP2	 = 	x(414,1);
DAG	 = 	x(415,1);
IP3	 = 	x(416,1);
HER2_2_p_PLCg_p_PIP2	 = 	x(417,1);
EGFR_EGF_2_p_PLCg_p_PIP2	 = 	x(418,1);
DAG_PKC	 = 	x(419,1);
PKC_Act	 = 	x(420,1);
PKC_Act_PKCPase	 = 	x(421,1);
PKC_Act_CK2	 = 	x(422,1);
CK2_p	 = 	x(423,1);
CK2Pase_CK2_p	 = 	x(424,1);
CK2_p_MKP3	 = 	x(425,1);
MKP3_p	 = 	x(426,1);
PP2A_MKP3_p	 = 	x(427,1);
PKC_Act_Ras_GDP	 = 	x(428,1);
PKC_Act_RAF	 = 	x(429,1);
RAF_Act	 = 	x(430,1);
HER2_2_p_Grb2_Sos_Ras_GTP_RAF	 = 	x(431,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 = 	x(432,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF	 = 	x(433,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 = 	x(434,1);
Ras_GTP_RAF	 = 	x(435,1);
RAF_Act_PP1	 = 	x(436,1);
RAF_Act_PP2A	 = 	x(437,1);
MEK_RAF_Act	 = 	x(438,1);
MEK_p	 = 	x(439,1);
MEK_p_RAF_Act	 = 	x(440,1);
MEK_pp	 = 	x(441,1);
ERK_MEK_pp	 = 	x(442,1);
ERK_p	 = 	x(443,1);
ERK_p_MEK_pp	 = 	x(444,1);
ERK_pp	 = 	x(445,1);
MEK_p_MKP3_p	 = 	x(446,1);
MEK_pp_MKP3_p	 = 	x(447,1);
MEK_p_PP2A	 = 	x(448,1);
MEK_pp_PP2A	 = 	x(449,1);
ERK_p_MKP2	 = 	x(450,1);
ERK_pp_MKP2	 = 	x(451,1);
ERK_p_MKP3_p	 = 	x(452,1);
ERK_pp_MKP3_p	 = 	x(453,1);
ERK_p_MKP1	 = 	x(454,1);
ERK_pp_MKP1	 = 	x(455,1);
MKP1_p	 = 	x(456,1);
ERK_p_MKP1_p	 = 	x(457,1);
ERK_pp_MKP1_p	 = 	x(458,1);
MKP3_p_MKP1_p	 = 	x(459,1);
HER2_2_p_Grb2_Sos_ERK_pp	 = 	x(460,1);
HER2_2_p_Grb2_Sos_p	 = 	x(461,1);
Sos_p	 = 	x(462,1);
Grb2_Sos_p	 = 	x(463,1);
HER2_2_p_Shc_p_Grb2_Sos_ERK_pp	 = 	x(464,1);
HER2_2_p_Shc_p_Grb2_Sos_p	 = 	x(465,1);
EGFR_EGF_2_p_Grb2_Sos_ERK_pp	 = 	x(466,1);
EGFR_EGF_2_p_Grb2_Sos_p	 = 	x(467,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp	 = 	x(468,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_p	 = 	x(469,1);
Sos_p_SosPase	 = 	x(470,1);
Grb2_Sos_p_SosPase	 = 	x(471,1);
HER2_2_p_Grb2_Sos_p_SosPase	 = 	x(472,1);
HER2_2_p_Shc_p_Grb2_Sos_p_SosPase	 = 	x(473,1);
EGFR_EGF_2_p_Grb2_Sos_p_SosPase	 = 	x(474,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase	 = 	x(475,1);
ERK_pp_MEK	 = 	x(476,1);
MEK_rp	 = 	x(477,1);
MEK_rp_MKP3_p	 = 	x(478,1);
MEK_rp_PP2A	 = 	x(479,1);
ERK_pp_RAF_Act	 = 	x(480,1);
RAF_Act_Inhib	 = 	x(481,1);
AKT_p	 = 	x(482,1);
AKT_p_RAF	 = 	x(483,1);
RAF_Inhib	 = 	x(484,1);
AKT_p_RAF_Act	 = 	x(485,1);
RAF_Inhib_PP1	 = 	x(486,1);
RAF_Act_Inhib_PP1	 = 	x(487,1);
RAF_Inhib_PP2A	 = 	x(488,1);
ERK_pp_cPLA2	 = 	x(489,1);
cPLA2_p	 = 	x(490,1);
cPLA2_p_cPLA2Pase	 = 	x(491,1);
cPLA2_p_PKC	 = 	x(492,1);
PI3K_Act_PIP2	 = 	x(493,1);
PIP3	 = 	x(494,1);
HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 = 	x(495,1);
HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 = 	x(496,1);
HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 = 	x(497,1);
EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 = 	x(498,1);
EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 = 	x(499,1);
EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 = 	x(500,1);
PIP3_GAB	 = 	x(501,1);
PIP3_PTEN	 = 	x(502,1);
PIP3_AKT	 = 	x(503,1);
AKT_m	 = 	x(504,1);
PIP3_PDK1	 = 	x(505,1);
PDK1_m	 = 	x(506,1);
PDK1_m_AKT_m	 = 	x(507,1);
AKT_p_PP2A	 = 	x(508,1);
AKT_p_TOR	 = 	x(509,1);
TOR_Act	 = 	x(510,1);
TOR_Act_TORPase	 = 	x(511,1);
TSC1_TSC2	 = 	x(512,1);
Rheb_GTP	 = 	x(513,1);
Rheb_GTP_TSC1_TSC2	 = 	x(514,1);
Rheb_GTP_TSC1	 = 	x(515,1);
Rheb_GTP_TSC2	 = 	x(516,1);
Rheb_GDP_RhebGEF	 = 	x(517,1);
Rheb_GTP_TOR	 = 	x(518,1);
TSC1_AKT_p	 = 	x(519,1);
TSC1_p	 = 	x(520,1);
TSC2_AKT_p	 = 	x(521,1);
TSC2_p	 = 	x(522,1);
TSC1_TSC2_AKT_p	 = 	x(523,1);
TSC1_TSC2_p	 = 	x(524,1);
TSC2_ERK_pp	 = 	x(525,1);
TSC1_TSC2_ERK_pp	 = 	x(526,1);
TSC1_p_TSCPase	 = 	x(527,1);
TSC2_p_TSCPase	 = 	x(528,1);
TSC1_TSC2_p_TSCPase	 = 	x(529,1);
R4EBP1_eIF4E	 = 	x(530,1);
R4EBP1_TOR_Act	 = 	x(531,1);
R4EBP1_p	 = 	x(532,1);
R4EBP1_eIF4E_TOR_Act	 = 	x(533,1);
R4EBP1_p_R4EBP1Pase	 = 	x(534,1);
p70_TOR_Act	 = 	x(535,1);
p70_Act	 = 	x(536,1);
p70_Act_Ribo40S_inact	 = 	x(537,1);
p70_Act_p70Pase	 = 	x(538,1);
Ribo40S_Ribo40SPase	 = 	x(539,1);
HER2_2_p_cPAcP	 = 	x(540,1);
EGFR_EGF_2_p_cPAcP	 = 	x(541,1);
cPAcP_2	 = 	x(542,1);
cPAcP_4	 = 	x(543,1);
HER2_2_p_cPAcP_2	 = 	x(544,1);
HER2_2_p_cPAcP_4	 = 	x(545,1);
HER2_2_sPAcP	 = 	x(546,1);
sPAcP_e	 = 	x(547,1);
ERK_pp_AR	 = 	x(548,1);
AKT_p_AR	 = 	x(549,1);
Import_ETS	 = 	x(550,1);
ETS_n	 = 	x(551,1);
Export_ETS_n	 = 	x(552,1);
Import_AP1	 = 	x(553,1);
AP1_n	 = 	x(554,1);
Export_AP1_n	 = 	x(555,1);
Import_ERK_pp	 = 	x(556,1);
ERK_pp_n	 = 	x(557,1);
Export_ERK_pp_n	 = 	x(558,1);
ERK_pp_ETS	 = 	x(559,1);
ETS_p	 = 	x(560,1);
ERK_pp_n_ETS_n	 = 	x(561,1);
ERK_pp_AP1	 = 	x(562,1);
AP1_p	 = 	x(563,1);
ERK_pp_n_AP1_n	 = 	x(564,1);
PKC_Act_ETS	 = 	x(565,1);
Import_ETS_p	 = 	x(566,1);
Export_ETS_p_n	 = 	x(567,1);
Import_AP1_p	 = 	x(568,1);
Export_AP1_p_n	 = 	x(569,1);
ETS_p_ETSPase	 = 	x(570,1);
AP1_p_AP1Pase	 = 	x(571,1);
Import_PP2A	 = 	x(572,1);
PP2A_n	 = 	x(573,1);
Export_PP2A_n	 = 	x(574,1);
ERK_pp_n_PP2A_n	 = 	x(575,1);
ERK_p_n	 = 	x(576,1);
ERK_p_n_PP2A_n	 = 	x(577,1);
ERK_n	 = 	x(578,1);
Export_ERK_p_n	 = 	x(579,1);
Export_ERK_n	 = 	x(580,1);
Import_Sam68	 = 	x(581,1);
Sam68_n	 = 	x(582,1);
Export_Sam68_n	 = 	x(583,1);
Sam68_ERK_pp	 = 	x(584,1);
Sam68_p	 = 	x(585,1);
Import_Sam68_p	 = 	x(586,1);
Sam68_p_n	 = 	x(587,1);
Sam68_n_ERK_pp_n	 = 	x(588,1);
Import_Sam68Pase	 = 	x(589,1);
Sam68Pase_n	 = 	x(590,1);
Export_Sam68Pase_n	 = 	x(591,1);
Sam68_p_Sam68Pase	 = 	x(592,1);
Sam68_p_n_Sam68Pase_n	 = 	x(593,1);
Sam68_p_n_mRNA_n_CycD1a	 = 	x(594,1);
CycD1a_CDK4	 = 	x(595,1);
CycD1a_CDK6	 = 	x(596,1);
CycD1b_CDK4	 = 	x(597,1);
CycD1b_CDK6	 = 	x(598,1);
Import_CycD1a_CDK4	 = 	x(599,1);
CycD1a_n_CDK4_n	 = 	x(600,1);
Export_CycD1a_n_CDK4_n	 = 	x(601,1);
Import_CycD1a_CDK6	 = 	x(602,1);
CycD1a_n_CDK6_n	 = 	x(603,1);
Export_CycD1a_n_CDK6_n	 = 	x(604,1);
Import_CycD1b_CDK4	 = 	x(605,1);
CycD1b_n_CDK4_n	 = 	x(606,1);
Export_CycD1b_n_CDK4_n	 = 	x(607,1);
Import_CycD1b_CDK6	 = 	x(608,1);
CycD1b_n_CDK6_n	 = 	x(609,1);
Export_CycD1b_n_CDK6_n	 = 	x(610,1);
Import_p21Cip1	 = 	x(611,1);
p21Cip1_n	 = 	x(612,1);
Export_p21Cip1_n	 = 	x(613,1);
Import_p27Kip1	 = 	x(614,1);
p27Kip1_n	 = 	x(615,1);
Export_p27Kip1_n	 = 	x(616,1);
Import_p16INK4	 = 	x(617,1);
p16INK4_n	 = 	x(618,1);
Export_p16INK4_n	 = 	x(619,1);
CycD1a_p21Cip1	 = 	x(620,1);
CycD1a_p27Kip1	 = 	x(621,1);
CycD1a_CDK4_p21Cip1	 = 	x(622,1);
CycD1a_CDK4_p27Kip1	 = 	x(623,1);
CycD1a_CDK6_p21Cip1	 = 	x(624,1);
CycD1a_CDK6_p27Kip1	 = 	x(625,1);
CycD1b_p21Cip1	 = 	x(626,1);
CycD1b_p27Kip1	 = 	x(627,1);
CycD1b_CDK4_p21Cip1	 = 	x(628,1);
CycD1b_CDK4_p27Kip1	 = 	x(629,1);
CycD1b_CDK6_p21Cip1	 = 	x(630,1);
CycD1b_CDK6_p27Kip1	 = 	x(631,1);
Import_CycD1a_CDK4_p21Cip1	 = 	x(632,1);
CycD1a_n_CDK4_n_p21Cip1_n	 = 	x(633,1);
Import_CycD1a_CDK4_p27Kip1	 = 	x(634,1);
CycD1a_n_CDK4_n_p27Kip1_n	 = 	x(635,1);
Import_CycD1a_CDK6_p21Cip1	 = 	x(636,1);
CycD1a_n_CDK6_n_p21Cip1_n	 = 	x(637,1);
Import_CycD1a_CDK6_p27Kip1	 = 	x(638,1);
CycD1a_n_CDK6_n_p27Kip1_n	 = 	x(639,1);
Import_CycD1b_CDK4_p21Cip1	 = 	x(640,1);
CycD1b_n_CDK4_n_p21Cip1_n	 = 	x(641,1);
Import_CycD1b_CDK4_p27Kip1	 = 	x(642,1);
CycD1b_n_CDK4_n_p27Kip1_n	 = 	x(643,1);
Import_CycD1b_CDK6_p21Cip1	 = 	x(644,1);
CycD1b_n_CDK6_n_p21Cip1_n	 = 	x(645,1);
Import_CycD1b_CDK6_p27Kip1	 = 	x(646,1);
CycD1b_n_CDK6_n_p27Kip1_n	 = 	x(647,1);
Import_Rb	 = 	x(648,1);
Rb_n	 = 	x(649,1);
Export_Rb_n	 = 	x(650,1);
Import_E2F	 = 	x(651,1);
Export_E2F_n	 = 	x(652,1);
E2F_Rb	 = 	x(653,1);
Import_E2F_Rb	 = 	x(654,1);
E2F_n_Rb_n	 = 	x(655,1);
Export_E2F_n_Rb_n	 = 	x(656,1);
CycD1a_n_CDK4_n_E2F_n_Rb_n	 = 	x(657,1);
Rb_n_p	 = 	x(658,1);
CycD1a_n_CDK6_n_E2F_n_Rb_n	 = 	x(659,1);
CycD1a_n_CDK4_n_Rb_n	 = 	x(660,1);
CycD1a_n_CDK6_n_Rb_n	 = 	x(661,1);
CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 = 	x(662,1);
CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 = 	x(663,1);
CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 = 	x(664,1);
CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 = 	x(665,1);
CycD1b_n_CDK4_n_E2F_n_Rb_n	 = 	x(666,1);
CycD1b_n_CDK6_n_E2F_n_Rb_n	 = 	x(667,1);
CycD1b_n_CDK4_n_Rb_n	 = 	x(668,1);
CycD1b_n_CDK6_n_Rb_n	 = 	x(669,1);
CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 = 	x(670,1);
CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 = 	x(671,1);
CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 = 	x(672,1);
CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 = 	x(673,1);
CycE_Cdk2	 = 	x(674,1);
CDC25A_RAF_Act	 = 	x(675,1);
CDC25A_p	 = 	x(676,1);
CDC25A_PKC_Act	 = 	x(677,1);
CDC25A_p70_Act	 = 	x(678,1);
CycE_Cdk2_CDC25A_p	 = 	x(679,1);
CycE_Cdk2_Act	 = 	x(680,1);
Import_CycE_Cdk2_Act	 = 	x(681,1);
CycE_Cdk2_Act_n	 = 	x(682,1);
Export_CycE_Cdk2_Act_n	 = 	x(683,1);
CycE_Cdk2_Act_CDC25A	 = 	x(684,1);
CDC25A_p_CDC25APase	 = 	x(685,1);
CycE_Cdk2_Act_Cdk2Pase	 = 	x(686,1);
CycE_Cdk2_Act_n_E2F_n_Rb_n	 = 	x(687,1);
CycE_Cdk2_Act_n_Rb_n	 = 	x(688,1);
Import_RbPase	 = 	x(689,1);
RbPase_n	 = 	x(690,1);
Export_RbPase_n	 = 	x(691,1);
Rb_n_p_RbPase_n	 = 	x(692,1);
CycE_Cdk2_Act_n_E2F_n	 = 	x(693,1);
E2F_n_p	 = 	x(694,1);
p21Cip1_Cdk2	 = 	x(695,1);
p27Kip1_Cdk2	 = 	x(696,1);
p21Cip1_CycE_Cdk2	 = 	x(697,1);
p27Kip1_CycE_Cdk2	 = 	x(698,1);
p21Cip1_CycE_Cdk2_Act	 = 	x(699,1);
p27Kip1_CycE_Cdk2_Act	 = 	x(700,1);
p21Cip1_n_CycE_Cdk2_Act_n	 = 	x(701,1);
p27Kip1_n_CycE_Cdk2_Act_n	 = 	x(702,1);
p21Cip1_p	 = 	x(703,1);
p27Kip1_p	 = 	x(704,1);
p21Cip1_n_p	 = 	x(705,1);
p27Kip1_n_p	 = 	x(706,1);
p16INK4_CDK4	 = 	x(707,1);
p16INK4_CDK6	 = 	x(708,1);
p16INK4_CycD1a_CDK4	 = 	x(709,1);
p16INK4_CycD1a_CDK6	 = 	x(710,1);
p16INK4_n_CycD1a_n_CDK4_n	 = 	x(711,1);
p16INK4_n_CycD1a_n_CDK6_n	 = 	x(712,1);
p16INK4_CycD1b_CDK4	 = 	x(713,1);
p16INK4_CycD1b_CDK6	 = 	x(714,1);
p16INK4_n_CycD1b_n_CDK4_n	 = 	x(715,1);
p16INK4_n_CycD1b_n_CDK6_n	 = 	x(716,1);
Export_p16INK4_n_CycD1a_n_CDK4_n	 = 	x(717,1);
Export_p16INK4_n_CycD1a_n_CDK6_n	 = 	x(718,1);
Export_p16INK4_n_CycD1b_n_CDK4_n	 = 	x(719,1);
Export_p16INK4_n_CycD1b_n_CDK6_n	 = 	x(720,1);
AP1_AR	 = 	x(721,1);
AP1_AR_p	 = 	x(722,1);
AP1_AR_p_DHT_2	 = 	x(723,1);
AP1_AR_p_2	 = 	x(724,1);
AP1_AR_p_DHT_AR_p	 = 	x(725,1);
AP1_n_AR_p_DHT_2_n	 = 	x(726,1);
AP1_n_AR_p_2_n	 = 	x(727,1);
AP1_n_AR_p_DHT_AR_p_n	 = 	x(728,1);
AP1_p_n_AR_p_DHT_2_n	 = 	x(729,1);
AP1_p_n_AR_p_2_n	 = 	x(730,1);
AP1_p_n_AR_p_DHT_AR_p_n	 = 	x(731,1);
CycD1a_AR	 = 	x(732,1);
CycD1a_AR_DHT	 = 	x(733,1);
CycD1a_AR_p_DHT	 = 	x(734,1);
CycD1a_AR_p_DHT_2	 = 	x(735,1);
CycD1a_AR_p_2	 = 	x(736,1);
CycD1a_AR_p_DHT_AR_p	 = 	x(737,1);
CycD1a_CDK4_AR	 = 	x(738,1);
CycD1a_CDK4_AR_DHT	 = 	x(739,1);
CycD1a_CDK4_AR_p_DHT	 = 	x(740,1);
CycD1a_CDK4_AR_p_DHT_2	 = 	x(741,1);
CycD1a_CDK4_AR_p_2	 = 	x(742,1);
CycD1a_CDK4_AR_p_DHT_AR_p	 = 	x(743,1);
CycD1a_CDK6_AR	 = 	x(744,1);
CycD1a_CDK6_AR_DHT	 = 	x(745,1);
CycD1a_CDK6_AR_p_DHT	 = 	x(746,1);
CycD1a_CDK6_AR_p_DHT_2	 = 	x(747,1);
CycD1a_CDK6_AR_p_2	 = 	x(748,1);
CycD1a_CDK6_AR_p_DHT_AR_p	 = 	x(749,1);
CycD1a_n_CDK4_n_AR_p_DHT_2_n	 = 	x(750,1);
CycD1a_n_CDK4_n_AR_p_2_n	 = 	x(751,1);
CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n	 = 	x(752,1);
CycD1a_n_CDK6_n_AR_p_DHT_2_n	 = 	x(753,1);
CycD1a_n_CDK6_n_AR_p_2_n	 = 	x(754,1);
CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n	 = 	x(755,1);
CycE_AR_p_DHT_2	 = 	x(756,1);
CycE_AR_p_2	 = 	x(757,1);
CycE_AR_p_DHT_AR_p	 = 	x(758,1);
Import_CycE_AR_p_DHT_2	 = 	x(759,1);
Export_CycE_AR_p_DHT_2_n	 = 	x(760,1);
Import_CycE_AR_p_2	 = 	x(761,1);
Export_CycE_AR_p_2_n	 = 	x(762,1);
Import_CycE_AR_p_DHT_AR_p	 = 	x(763,1);
Export_CycE_AR_p_DHT_AR_p_n	 = 	x(764,1);
CDK6_AR_p_DHT_2	 = 	x(765,1);
CDK6_AR_p_2	 = 	x(766,1);
CDK6_AR_p_DHT_AR_p	 = 	x(767,1);
Import_CDK6_AR_p_DHT_2	 = 	x(768,1);
Export_CDK6_AR_p_DHT_2_n	 = 	x(769,1);
Import_CDK6_AR_p_2	 = 	x(770,1);
Export_CDK6_AR_p_2_n	 = 	x(771,1);
Import_CDK6_AR_p_DHT_AR_p	 = 	x(772,1);
Export_CDK6_AR_p_DHT_AR_p_n	 = 	x(773,1);
CDC25A_p_AR	 = 	x(774,1);
CDC25A_p_AR_p	 = 	x(775,1);
CDC25A_p_AR_p_DHT_2	 = 	x(776,1);
CDC25A_p_AR_p_2	 = 	x(777,1);
CDC25A_p_AR_p_DHT_AR_p	 = 	x(778,1);
AR_p_PP2A	 = 	x(779,1);
AR_p_DHT_PP2A	 = 	x(780,1);

% --------------------------------------------- 
% Alias the parameters -- helps with debugging.
% --------------------------------------------- 
k_0	 = 	kV(1,1);
k_1	 = 	kV(2,1);
k_2	 = 	kV(3,1);
k_3	 = 	kV(4,1);
k_4	 = 	kV(5,1);
k_5	 = 	kV(6,1);
k_6	 = 	kV(7,1);
k_7	 = 	kV(8,1);
k_8	 = 	kV(9,1);
k_9	 = 	kV(10,1);
k_10	 = 	kV(11,1);
k_11	 = 	kV(12,1);
k_12	 = 	kV(13,1);
k_13	 = 	kV(14,1);
k_14	 = 	kV(15,1);
k_15	 = 	kV(16,1);
k_16	 = 	kV(17,1);
k_17	 = 	kV(18,1);
k_18	 = 	kV(19,1);
k_19	 = 	kV(20,1);
k_20	 = 	kV(21,1);
k_21	 = 	kV(22,1);
k_22	 = 	kV(23,1);
k_23	 = 	kV(24,1);
k_24	 = 	kV(25,1);
k_25	 = 	kV(26,1);
k_26	 = 	kV(27,1);
k_27	 = 	kV(28,1);
k_28	 = 	kV(29,1);
k_29	 = 	kV(30,1);
k_30	 = 	kV(31,1);
k_31	 = 	kV(32,1);
k_32	 = 	kV(33,1);
k_33	 = 	kV(34,1);
k_34	 = 	kV(35,1);
k_35	 = 	kV(36,1);
k_36	 = 	kV(37,1);
k_37	 = 	kV(38,1);
k_38	 = 	kV(39,1);
k_39	 = 	kV(40,1);
k_40	 = 	kV(41,1);
k_41	 = 	kV(42,1);
k_42	 = 	kV(43,1);
k_43	 = 	kV(44,1);
k_44	 = 	kV(45,1);
k_45	 = 	kV(46,1);
k_46	 = 	kV(47,1);
k_47	 = 	kV(48,1);
k_48	 = 	kV(49,1);
k_49	 = 	kV(50,1);
k_50	 = 	kV(51,1);
k_51	 = 	kV(52,1);
k_52	 = 	kV(53,1);
k_53	 = 	kV(54,1);
k_54	 = 	kV(55,1);
k_55	 = 	kV(56,1);
k_56	 = 	kV(57,1);
k_57	 = 	kV(58,1);
k_58	 = 	kV(59,1);
k_59	 = 	kV(60,1);
k_60	 = 	kV(61,1);
k_61	 = 	kV(62,1);
k_62	 = 	kV(63,1);
k_63	 = 	kV(64,1);
k_64	 = 	kV(65,1);
k_65	 = 	kV(66,1);
k_66	 = 	kV(67,1);
k_67	 = 	kV(68,1);
k_68	 = 	kV(69,1);
k_69	 = 	kV(70,1);
k_70	 = 	kV(71,1);
k_71	 = 	kV(72,1);
k_72	 = 	kV(73,1);
k_73	 = 	kV(74,1);
k_74	 = 	kV(75,1);
k_75	 = 	kV(76,1);
k_76	 = 	kV(77,1);
k_77	 = 	kV(78,1);
k_78	 = 	kV(79,1);
k_79	 = 	kV(80,1);
k_80	 = 	kV(81,1);
k_81	 = 	kV(82,1);
k_82	 = 	kV(83,1);
k_83	 = 	kV(84,1);
k_84	 = 	kV(85,1);
k_85	 = 	kV(86,1);
k_86	 = 	kV(87,1);
k_87	 = 	kV(88,1);
k_88	 = 	kV(89,1);
k_89	 = 	kV(90,1);
k_90	 = 	kV(91,1);
k_91	 = 	kV(92,1);
k_92	 = 	kV(93,1);
k_93	 = 	kV(94,1);
k_94	 = 	kV(95,1);
k_95	 = 	kV(96,1);
k_96	 = 	kV(97,1);
k_97	 = 	kV(98,1);
k_98	 = 	kV(99,1);
k_99	 = 	kV(100,1);
k_100	 = 	kV(101,1);
k_101	 = 	kV(102,1);
k_102	 = 	kV(103,1);
k_103	 = 	kV(104,1);
k_104	 = 	kV(105,1);
k_105	 = 	kV(106,1);
k_106	 = 	kV(107,1);
k_107	 = 	kV(108,1);
k_108	 = 	kV(109,1);
k_109	 = 	kV(110,1);
k_110	 = 	kV(111,1);
k_111	 = 	kV(112,1);
k_112	 = 	kV(113,1);
k_113	 = 	kV(114,1);
k_114	 = 	kV(115,1);
k_115	 = 	kV(116,1);
k_116	 = 	kV(117,1);
k_117	 = 	kV(118,1);
k_118	 = 	kV(119,1);
k_119	 = 	kV(120,1);
k_120	 = 	kV(121,1);
k_121	 = 	kV(122,1);
k_122	 = 	kV(123,1);
k_123	 = 	kV(124,1);
k_124	 = 	kV(125,1);
k_125	 = 	kV(126,1);
k_126	 = 	kV(127,1);
k_127	 = 	kV(128,1);
k_128	 = 	kV(129,1);
k_129	 = 	kV(130,1);
k_130	 = 	kV(131,1);
k_131	 = 	kV(132,1);
k_132	 = 	kV(133,1);
k_133	 = 	kV(134,1);
k_134	 = 	kV(135,1);
k_135	 = 	kV(136,1);
k_136	 = 	kV(137,1);
k_137	 = 	kV(138,1);
k_138	 = 	kV(139,1);
k_139	 = 	kV(140,1);
k_140	 = 	kV(141,1);
k_141	 = 	kV(142,1);
k_142	 = 	kV(143,1);
k_143	 = 	kV(144,1);
k_144	 = 	kV(145,1);
k_145	 = 	kV(146,1);
k_146	 = 	kV(147,1);
k_147	 = 	kV(148,1);
k_148	 = 	kV(149,1);
k_149	 = 	kV(150,1);
k_150	 = 	kV(151,1);
k_151	 = 	kV(152,1);
k_152	 = 	kV(153,1);
k_153	 = 	kV(154,1);
k_154	 = 	kV(155,1);
k_155	 = 	kV(156,1);
k_156	 = 	kV(157,1);
k_157	 = 	kV(158,1);
k_158	 = 	kV(159,1);
k_159	 = 	kV(160,1);
k_160	 = 	kV(161,1);
k_161	 = 	kV(162,1);
k_162	 = 	kV(163,1);
k_163	 = 	kV(164,1);
k_164	 = 	kV(165,1);
k_165	 = 	kV(166,1);
k_166	 = 	kV(167,1);
k_167	 = 	kV(168,1);
k_168	 = 	kV(169,1);
k_169	 = 	kV(170,1);
k_170	 = 	kV(171,1);
k_171	 = 	kV(172,1);
k_172	 = 	kV(173,1);
k_173	 = 	kV(174,1);
k_174	 = 	kV(175,1);
k_175	 = 	kV(176,1);
k_176	 = 	kV(177,1);
k_177	 = 	kV(178,1);
k_178	 = 	kV(179,1);
k_179	 = 	kV(180,1);
k_180	 = 	kV(181,1);
k_181	 = 	kV(182,1);
k_182	 = 	kV(183,1);
k_183	 = 	kV(184,1);
k_184	 = 	kV(185,1);
k_185	 = 	kV(186,1);
k_186	 = 	kV(187,1);
k_187	 = 	kV(188,1);
k_188	 = 	kV(189,1);
k_189	 = 	kV(190,1);
k_190	 = 	kV(191,1);
k_191	 = 	kV(192,1);
k_192	 = 	kV(193,1);
k_193	 = 	kV(194,1);
k_194	 = 	kV(195,1);
k_195	 = 	kV(196,1);
k_196	 = 	kV(197,1);
k_197	 = 	kV(198,1);
k_198	 = 	kV(199,1);
k_199	 = 	kV(200,1);
k_200	 = 	kV(201,1);
k_201	 = 	kV(202,1);
k_202	 = 	kV(203,1);
k_203	 = 	kV(204,1);
k_204	 = 	kV(205,1);
k_205	 = 	kV(206,1);
k_206	 = 	kV(207,1);
k_207	 = 	kV(208,1);
k_208	 = 	kV(209,1);
k_209	 = 	kV(210,1);
k_210	 = 	kV(211,1);
k_211	 = 	kV(212,1);
k_212	 = 	kV(213,1);
k_213	 = 	kV(214,1);
k_214	 = 	kV(215,1);
k_215	 = 	kV(216,1);
k_216	 = 	kV(217,1);
k_217	 = 	kV(218,1);
k_218	 = 	kV(219,1);
k_219	 = 	kV(220,1);
k_220	 = 	kV(221,1);
k_221	 = 	kV(222,1);
k_222	 = 	kV(223,1);
k_223	 = 	kV(224,1);
k_224	 = 	kV(225,1);
k_225	 = 	kV(226,1);
k_226	 = 	kV(227,1);
k_227	 = 	kV(228,1);
k_228	 = 	kV(229,1);
k_229	 = 	kV(230,1);
k_230	 = 	kV(231,1);
k_231	 = 	kV(232,1);
k_232	 = 	kV(233,1);
k_233	 = 	kV(234,1);
k_234	 = 	kV(235,1);
k_235	 = 	kV(236,1);
k_236	 = 	kV(237,1);
k_237	 = 	kV(238,1);
k_238	 = 	kV(239,1);
k_239	 = 	kV(240,1);
k_240	 = 	kV(241,1);
k_241	 = 	kV(242,1);
k_242	 = 	kV(243,1);
k_243	 = 	kV(244,1);
k_244	 = 	kV(245,1);
k_245	 = 	kV(246,1);
k_246	 = 	kV(247,1);
k_247	 = 	kV(248,1);
k_248	 = 	kV(249,1);
k_249	 = 	kV(250,1);
k_250	 = 	kV(251,1);
k_251	 = 	kV(252,1);
k_252	 = 	kV(253,1);
k_253	 = 	kV(254,1);
k_254	 = 	kV(255,1);
k_255	 = 	kV(256,1);
k_256	 = 	kV(257,1);
k_257	 = 	kV(258,1);
k_258	 = 	kV(259,1);
k_259	 = 	kV(260,1);
k_260	 = 	kV(261,1);
k_261	 = 	kV(262,1);
k_262	 = 	kV(263,1);
k_263	 = 	kV(264,1);
k_264	 = 	kV(265,1);
k_265	 = 	kV(266,1);
k_266	 = 	kV(267,1);
k_267	 = 	kV(268,1);
k_268	 = 	kV(269,1);
k_269	 = 	kV(270,1);
k_270	 = 	kV(271,1);
k_271	 = 	kV(272,1);
k_272	 = 	kV(273,1);
k_273	 = 	kV(274,1);
k_274	 = 	kV(275,1);
k_275	 = 	kV(276,1);
k_276	 = 	kV(277,1);
k_277	 = 	kV(278,1);
k_278	 = 	kV(279,1);
k_279	 = 	kV(280,1);
k_280	 = 	kV(281,1);
k_281	 = 	kV(282,1);
k_282	 = 	kV(283,1);
k_283	 = 	kV(284,1);
k_284	 = 	kV(285,1);
k_285	 = 	kV(286,1);
k_286	 = 	kV(287,1);
k_287	 = 	kV(288,1);
k_288	 = 	kV(289,1);
k_289	 = 	kV(290,1);
k_290	 = 	kV(291,1);
k_291	 = 	kV(292,1);
k_292	 = 	kV(293,1);
k_293	 = 	kV(294,1);
k_294	 = 	kV(295,1);
k_295	 = 	kV(296,1);
k_296	 = 	kV(297,1);
k_297	 = 	kV(298,1);
k_298	 = 	kV(299,1);
k_299	 = 	kV(300,1);
k_300	 = 	kV(301,1);
k_301	 = 	kV(302,1);
k_302	 = 	kV(303,1);
k_303	 = 	kV(304,1);
k_304	 = 	kV(305,1);
k_305	 = 	kV(306,1);
k_306	 = 	kV(307,1);
k_307	 = 	kV(308,1);
k_308	 = 	kV(309,1);
k_309	 = 	kV(310,1);
k_310	 = 	kV(311,1);
k_311	 = 	kV(312,1);
k_312	 = 	kV(313,1);
k_313	 = 	kV(314,1);
k_314	 = 	kV(315,1);
k_315	 = 	kV(316,1);
k_316	 = 	kV(317,1);
k_317	 = 	kV(318,1);
k_318	 = 	kV(319,1);
k_319	 = 	kV(320,1);
k_320	 = 	kV(321,1);
k_321	 = 	kV(322,1);
k_322	 = 	kV(323,1);
k_323	 = 	kV(324,1);
k_324	 = 	kV(325,1);
k_325	 = 	kV(326,1);
k_326	 = 	kV(327,1);
k_327	 = 	kV(328,1);
k_328	 = 	kV(329,1);
k_329	 = 	kV(330,1);
k_330	 = 	kV(331,1);
k_331	 = 	kV(332,1);
k_332	 = 	kV(333,1);
k_333	 = 	kV(334,1);
k_334	 = 	kV(335,1);
k_335	 = 	kV(336,1);
k_336	 = 	kV(337,1);
k_337	 = 	kV(338,1);
k_338	 = 	kV(339,1);
k_339	 = 	kV(340,1);
k_340	 = 	kV(341,1);
k_341	 = 	kV(342,1);
k_342	 = 	kV(343,1);
k_343	 = 	kV(344,1);
k_344	 = 	kV(345,1);
k_345	 = 	kV(346,1);
k_346	 = 	kV(347,1);
k_347	 = 	kV(348,1);
k_348	 = 	kV(349,1);
k_349	 = 	kV(350,1);
k_350	 = 	kV(351,1);
k_351	 = 	kV(352,1);
k_352	 = 	kV(353,1);
k_353	 = 	kV(354,1);
k_354	 = 	kV(355,1);
k_355	 = 	kV(356,1);
k_356	 = 	kV(357,1);
k_357	 = 	kV(358,1);
k_358	 = 	kV(359,1);
k_359	 = 	kV(360,1);
k_360	 = 	kV(361,1);
k_361	 = 	kV(362,1);
k_362	 = 	kV(363,1);
k_363	 = 	kV(364,1);
k_364	 = 	kV(365,1);
k_365	 = 	kV(366,1);
k_366	 = 	kV(367,1);
k_367	 = 	kV(368,1);
k_368	 = 	kV(369,1);
k_369	 = 	kV(370,1);
k_370	 = 	kV(371,1);
k_371	 = 	kV(372,1);
k_372	 = 	kV(373,1);
k_373	 = 	kV(374,1);
k_374	 = 	kV(375,1);
k_375	 = 	kV(376,1);
k_376	 = 	kV(377,1);
k_377	 = 	kV(378,1);
k_378	 = 	kV(379,1);
k_379	 = 	kV(380,1);
k_380	 = 	kV(381,1);
k_381	 = 	kV(382,1);
k_382	 = 	kV(383,1);
k_383	 = 	kV(384,1);
k_384	 = 	kV(385,1);
k_385	 = 	kV(386,1);
k_386	 = 	kV(387,1);
k_387	 = 	kV(388,1);
k_388	 = 	kV(389,1);
k_389	 = 	kV(390,1);
k_390	 = 	kV(391,1);
k_391	 = 	kV(392,1);
k_392	 = 	kV(393,1);
k_393	 = 	kV(394,1);
k_394	 = 	kV(395,1);
k_395	 = 	kV(396,1);
k_396	 = 	kV(397,1);
k_397	 = 	kV(398,1);
k_398	 = 	kV(399,1);
k_399	 = 	kV(400,1);
k_400	 = 	kV(401,1);
k_401	 = 	kV(402,1);
k_402	 = 	kV(403,1);
k_403	 = 	kV(404,1);
k_404	 = 	kV(405,1);
k_405	 = 	kV(406,1);
k_406	 = 	kV(407,1);
k_407	 = 	kV(408,1);
k_408	 = 	kV(409,1);
k_409	 = 	kV(410,1);
k_410	 = 	kV(411,1);
k_411	 = 	kV(412,1);
k_412	 = 	kV(413,1);
k_413	 = 	kV(414,1);
k_414	 = 	kV(415,1);
k_415	 = 	kV(416,1);
k_416	 = 	kV(417,1);
k_417	 = 	kV(418,1);
k_418	 = 	kV(419,1);
k_419	 = 	kV(420,1);
k_420	 = 	kV(421,1);
k_421	 = 	kV(422,1);
k_422	 = 	kV(423,1);
k_423	 = 	kV(424,1);
k_424	 = 	kV(425,1);
k_425	 = 	kV(426,1);
k_426	 = 	kV(427,1);
k_427	 = 	kV(428,1);
k_428	 = 	kV(429,1);
k_429	 = 	kV(430,1);
k_430	 = 	kV(431,1);
k_431	 = 	kV(432,1);
k_432	 = 	kV(433,1);
k_433	 = 	kV(434,1);
k_434	 = 	kV(435,1);
k_435	 = 	kV(436,1);
k_436	 = 	kV(437,1);
k_437	 = 	kV(438,1);
k_438	 = 	kV(439,1);
k_439	 = 	kV(440,1);
k_440	 = 	kV(441,1);
k_441	 = 	kV(442,1);
k_442	 = 	kV(443,1);
k_443	 = 	kV(444,1);
k_444	 = 	kV(445,1);
k_445	 = 	kV(446,1);
k_446	 = 	kV(447,1);
k_447	 = 	kV(448,1);
k_448	 = 	kV(449,1);
k_449	 = 	kV(450,1);
k_450	 = 	kV(451,1);
k_451	 = 	kV(452,1);
k_452	 = 	kV(453,1);
k_453	 = 	kV(454,1);
k_454	 = 	kV(455,1);
k_455	 = 	kV(456,1);
k_456	 = 	kV(457,1);
k_457	 = 	kV(458,1);
k_458	 = 	kV(459,1);
k_459	 = 	kV(460,1);
k_460	 = 	kV(461,1);
k_461	 = 	kV(462,1);
k_462	 = 	kV(463,1);
k_463	 = 	kV(464,1);
k_464	 = 	kV(465,1);
k_465	 = 	kV(466,1);
k_466	 = 	kV(467,1);
k_467	 = 	kV(468,1);
k_468	 = 	kV(469,1);
k_469	 = 	kV(470,1);
k_470	 = 	kV(471,1);
k_471	 = 	kV(472,1);
k_472	 = 	kV(473,1);
k_473	 = 	kV(474,1);
k_474	 = 	kV(475,1);
k_475	 = 	kV(476,1);
k_476	 = 	kV(477,1);
k_477	 = 	kV(478,1);
k_478	 = 	kV(479,1);
k_479	 = 	kV(480,1);
k_480	 = 	kV(481,1);
k_481	 = 	kV(482,1);
k_482	 = 	kV(483,1);
k_483	 = 	kV(484,1);
k_484	 = 	kV(485,1);
k_485	 = 	kV(486,1);
k_486	 = 	kV(487,1);
k_487	 = 	kV(488,1);
k_488	 = 	kV(489,1);
k_489	 = 	kV(490,1);
k_490	 = 	kV(491,1);
k_491	 = 	kV(492,1);
k_492	 = 	kV(493,1);
k_493	 = 	kV(494,1);
k_494	 = 	kV(495,1);
k_495	 = 	kV(496,1);
k_496	 = 	kV(497,1);
k_497	 = 	kV(498,1);
k_498	 = 	kV(499,1);
k_499	 = 	kV(500,1);
k_500	 = 	kV(501,1);
k_501	 = 	kV(502,1);
k_502	 = 	kV(503,1);
k_503	 = 	kV(504,1);
k_504	 = 	kV(505,1);
k_505	 = 	kV(506,1);
k_506	 = 	kV(507,1);
k_507	 = 	kV(508,1);
k_508	 = 	kV(509,1);
k_509	 = 	kV(510,1);
k_510	 = 	kV(511,1);
k_511	 = 	kV(512,1);
k_512	 = 	kV(513,1);
k_513	 = 	kV(514,1);
k_514	 = 	kV(515,1);
k_515	 = 	kV(516,1);
k_516	 = 	kV(517,1);
k_517	 = 	kV(518,1);
k_518	 = 	kV(519,1);
k_519	 = 	kV(520,1);
k_520	 = 	kV(521,1);
k_521	 = 	kV(522,1);
k_522	 = 	kV(523,1);
k_523	 = 	kV(524,1);
k_524	 = 	kV(525,1);
k_525	 = 	kV(526,1);
k_526	 = 	kV(527,1);
k_527	 = 	kV(528,1);
k_528	 = 	kV(529,1);
k_529	 = 	kV(530,1);
k_530	 = 	kV(531,1);
k_531	 = 	kV(532,1);
k_532	 = 	kV(533,1);
k_533	 = 	kV(534,1);
k_534	 = 	kV(535,1);
k_535	 = 	kV(536,1);
k_536	 = 	kV(537,1);
k_537	 = 	kV(538,1);
k_538	 = 	kV(539,1);
k_539	 = 	kV(540,1);
k_540	 = 	kV(541,1);
k_541	 = 	kV(542,1);
k_542	 = 	kV(543,1);
k_543	 = 	kV(544,1);
k_544	 = 	kV(545,1);
k_545	 = 	kV(546,1);
k_546	 = 	kV(547,1);
k_547	 = 	kV(548,1);
k_548	 = 	kV(549,1);
k_549	 = 	kV(550,1);
k_550	 = 	kV(551,1);
k_551	 = 	kV(552,1);
k_552	 = 	kV(553,1);
k_553	 = 	kV(554,1);
k_554	 = 	kV(555,1);
k_555	 = 	kV(556,1);
k_556	 = 	kV(557,1);
k_557	 = 	kV(558,1);
k_558	 = 	kV(559,1);
k_559	 = 	kV(560,1);
k_560	 = 	kV(561,1);
k_561	 = 	kV(562,1);
k_562	 = 	kV(563,1);
k_563	 = 	kV(564,1);
k_564	 = 	kV(565,1);
k_565	 = 	kV(566,1);
k_566	 = 	kV(567,1);
k_567	 = 	kV(568,1);
k_568	 = 	kV(569,1);
k_569	 = 	kV(570,1);
k_570	 = 	kV(571,1);
k_571	 = 	kV(572,1);
k_572	 = 	kV(573,1);
k_573	 = 	kV(574,1);
k_574	 = 	kV(575,1);
k_575	 = 	kV(576,1);
k_576	 = 	kV(577,1);
k_577	 = 	kV(578,1);
k_578	 = 	kV(579,1);
k_579	 = 	kV(580,1);
k_580	 = 	kV(581,1);
k_581	 = 	kV(582,1);
k_582	 = 	kV(583,1);
k_583	 = 	kV(584,1);
k_584	 = 	kV(585,1);
k_585	 = 	kV(586,1);
k_586	 = 	kV(587,1);
k_587	 = 	kV(588,1);
k_588	 = 	kV(589,1);
k_589	 = 	kV(590,1);
k_590	 = 	kV(591,1);
k_591	 = 	kV(592,1);
k_592	 = 	kV(593,1);
k_593	 = 	kV(594,1);
k_594	 = 	kV(595,1);
k_595	 = 	kV(596,1);
k_596	 = 	kV(597,1);
k_597	 = 	kV(598,1);
k_598	 = 	kV(599,1);
k_599	 = 	kV(600,1);
k_600	 = 	kV(601,1);
k_601	 = 	kV(602,1);
k_602	 = 	kV(603,1);
k_603	 = 	kV(604,1);
k_604	 = 	kV(605,1);
k_605	 = 	kV(606,1);
k_606	 = 	kV(607,1);
k_607	 = 	kV(608,1);
k_608	 = 	kV(609,1);
k_609	 = 	kV(610,1);
k_610	 = 	kV(611,1);
k_611	 = 	kV(612,1);
k_612	 = 	kV(613,1);
k_613	 = 	kV(614,1);
k_614	 = 	kV(615,1);
k_615	 = 	kV(616,1);
k_616	 = 	kV(617,1);
k_617	 = 	kV(618,1);
k_618	 = 	kV(619,1);
k_619	 = 	kV(620,1);
k_620	 = 	kV(621,1);
k_621	 = 	kV(622,1);
k_622	 = 	kV(623,1);
k_623	 = 	kV(624,1);
k_624	 = 	kV(625,1);
k_625	 = 	kV(626,1);
k_626	 = 	kV(627,1);
k_627	 = 	kV(628,1);
k_628	 = 	kV(629,1);
k_629	 = 	kV(630,1);
k_630	 = 	kV(631,1);
k_631	 = 	kV(632,1);
k_632	 = 	kV(633,1);
k_633	 = 	kV(634,1);
k_634	 = 	kV(635,1);
k_635	 = 	kV(636,1);
k_636	 = 	kV(637,1);
k_637	 = 	kV(638,1);
k_638	 = 	kV(639,1);
k_639	 = 	kV(640,1);
k_640	 = 	kV(641,1);
k_641	 = 	kV(642,1);
k_642	 = 	kV(643,1);
k_643	 = 	kV(644,1);
k_644	 = 	kV(645,1);
k_645	 = 	kV(646,1);
k_646	 = 	kV(647,1);
k_647	 = 	kV(648,1);
k_648	 = 	kV(649,1);
k_649	 = 	kV(650,1);
k_650	 = 	kV(651,1);
k_651	 = 	kV(652,1);
k_652	 = 	kV(653,1);
k_653	 = 	kV(654,1);
k_654	 = 	kV(655,1);
k_655	 = 	kV(656,1);
k_656	 = 	kV(657,1);
k_657	 = 	kV(658,1);
k_658	 = 	kV(659,1);
k_659	 = 	kV(660,1);
k_660	 = 	kV(661,1);
k_661	 = 	kV(662,1);
k_662	 = 	kV(663,1);
k_663	 = 	kV(664,1);
k_664	 = 	kV(665,1);
k_665	 = 	kV(666,1);
k_666	 = 	kV(667,1);
k_667	 = 	kV(668,1);
k_668	 = 	kV(669,1);
k_669	 = 	kV(670,1);
k_670	 = 	kV(671,1);
k_671	 = 	kV(672,1);
k_672	 = 	kV(673,1);
k_673	 = 	kV(674,1);
k_674	 = 	kV(675,1);
k_675	 = 	kV(676,1);
k_676	 = 	kV(677,1);
k_677	 = 	kV(678,1);
k_678	 = 	kV(679,1);
k_679	 = 	kV(680,1);
k_680	 = 	kV(681,1);
k_681	 = 	kV(682,1);
k_682	 = 	kV(683,1);
k_683	 = 	kV(684,1);
k_684	 = 	kV(685,1);
k_685	 = 	kV(686,1);
k_686	 = 	kV(687,1);
k_687	 = 	kV(688,1);
k_688	 = 	kV(689,1);
k_689	 = 	kV(690,1);
k_690	 = 	kV(691,1);
k_691	 = 	kV(692,1);
k_692	 = 	kV(693,1);
k_693	 = 	kV(694,1);
k_694	 = 	kV(695,1);
k_695	 = 	kV(696,1);
k_696	 = 	kV(697,1);
k_697	 = 	kV(698,1);
k_698	 = 	kV(699,1);
k_699	 = 	kV(700,1);
k_700	 = 	kV(701,1);
k_701	 = 	kV(702,1);
k_702	 = 	kV(703,1);
k_703	 = 	kV(704,1);
k_704	 = 	kV(705,1);
k_705	 = 	kV(706,1);
k_706	 = 	kV(707,1);
k_707	 = 	kV(708,1);
k_708	 = 	kV(709,1);
k_709	 = 	kV(710,1);
k_710	 = 	kV(711,1);
k_711	 = 	kV(712,1);
k_712	 = 	kV(713,1);
k_713	 = 	kV(714,1);
k_714	 = 	kV(715,1);
k_715	 = 	kV(716,1);
k_716	 = 	kV(717,1);
k_717	 = 	kV(718,1);
k_718	 = 	kV(719,1);
k_719	 = 	kV(720,1);
k_720	 = 	kV(721,1);
k_721	 = 	kV(722,1);
k_722	 = 	kV(723,1);
k_723	 = 	kV(724,1);
k_724	 = 	kV(725,1);
k_725	 = 	kV(726,1);
k_726	 = 	kV(727,1);
k_727	 = 	kV(728,1);
k_728	 = 	kV(729,1);
k_729	 = 	kV(730,1);
k_730	 = 	kV(731,1);
k_731	 = 	kV(732,1);
k_732	 = 	kV(733,1);
k_733	 = 	kV(734,1);
k_734	 = 	kV(735,1);
k_735	 = 	kV(736,1);
k_736	 = 	kV(737,1);
k_737	 = 	kV(738,1);
k_738	 = 	kV(739,1);
k_739	 = 	kV(740,1);
k_740	 = 	kV(741,1);
k_741	 = 	kV(742,1);
k_742	 = 	kV(743,1);
k_743	 = 	kV(744,1);
k_744	 = 	kV(745,1);
k_745	 = 	kV(746,1);
k_746	 = 	kV(747,1);
k_747	 = 	kV(748,1);
k_748	 = 	kV(749,1);
k_749	 = 	kV(750,1);
k_750	 = 	kV(751,1);
k_751	 = 	kV(752,1);
k_752	 = 	kV(753,1);
k_753	 = 	kV(754,1);
k_754	 = 	kV(755,1);
k_755	 = 	kV(756,1);
k_756	 = 	kV(757,1);
k_757	 = 	kV(758,1);
k_758	 = 	kV(759,1);
k_759	 = 	kV(760,1);
k_760	 = 	kV(761,1);
k_761	 = 	kV(762,1);
k_762	 = 	kV(763,1);
k_763	 = 	kV(764,1);
k_764	 = 	kV(765,1);
k_765	 = 	kV(766,1);
k_766	 = 	kV(767,1);
k_767	 = 	kV(768,1);
k_768	 = 	kV(769,1);
k_769	 = 	kV(770,1);
k_770	 = 	kV(771,1);
k_771	 = 	kV(772,1);
k_772	 = 	kV(773,1);
k_773	 = 	kV(774,1);
k_774	 = 	kV(775,1);
k_775	 = 	kV(776,1);
k_776	 = 	kV(777,1);
k_777	 = 	kV(778,1);
k_778	 = 	kV(779,1);
k_779	 = 	kV(780,1);
k_780	 = 	kV(781,1);
k_781	 = 	kV(782,1);
k_782	 = 	kV(783,1);
k_783	 = 	kV(784,1);
k_784	 = 	kV(785,1);
k_785	 = 	kV(786,1);
k_786	 = 	kV(787,1);
k_787	 = 	kV(788,1);
k_788	 = 	kV(789,1);
k_789	 = 	kV(790,1);
k_790	 = 	kV(791,1);
k_791	 = 	kV(792,1);
k_792	 = 	kV(793,1);
k_793	 = 	kV(794,1);
k_794	 = 	kV(795,1);
k_795	 = 	kV(796,1);
k_796	 = 	kV(797,1);
k_797	 = 	kV(798,1);
k_798	 = 	kV(799,1);
k_799	 = 	kV(800,1);
k_800	 = 	kV(801,1);
k_801	 = 	kV(802,1);
k_802	 = 	kV(803,1);
k_803	 = 	kV(804,1);
k_804	 = 	kV(805,1);
k_805	 = 	kV(806,1);
k_806	 = 	kV(807,1);
k_807	 = 	kV(808,1);
k_808	 = 	kV(809,1);
k_809	 = 	kV(810,1);
k_810	 = 	kV(811,1);
k_811	 = 	kV(812,1);
k_812	 = 	kV(813,1);
k_813	 = 	kV(814,1);
k_814	 = 	kV(815,1);
k_815	 = 	kV(816,1);
k_816	 = 	kV(817,1);
k_817	 = 	kV(818,1);
k_818	 = 	kV(819,1);
k_819	 = 	kV(820,1);
k_820	 = 	kV(821,1);
k_821	 = 	kV(822,1);
k_822	 = 	kV(823,1);
k_823	 = 	kV(824,1);
k_824	 = 	kV(825,1);
k_825	 = 	kV(826,1);
k_826	 = 	kV(827,1);
k_827	 = 	kV(828,1);
k_828	 = 	kV(829,1);
k_829	 = 	kV(830,1);
k_830	 = 	kV(831,1);
k_831	 = 	kV(832,1);
k_832	 = 	kV(833,1);
k_833	 = 	kV(834,1);
k_834	 = 	kV(835,1);
k_835	 = 	kV(836,1);
k_836	 = 	kV(837,1);
k_837	 = 	kV(838,1);
k_838	 = 	kV(839,1);
k_839	 = 	kV(840,1);
k_840	 = 	kV(841,1);
k_841	 = 	kV(842,1);
k_842	 = 	kV(843,1);
k_843	 = 	kV(844,1);
k_844	 = 	kV(845,1);
k_845	 = 	kV(846,1);
k_846	 = 	kV(847,1);
k_847	 = 	kV(848,1);
k_848	 = 	kV(849,1);
k_849	 = 	kV(850,1);
k_850	 = 	kV(851,1);
k_851	 = 	kV(852,1);
k_852	 = 	kV(853,1);
k_853	 = 	kV(854,1);
k_854	 = 	kV(855,1);
k_855	 = 	kV(856,1);
k_856	 = 	kV(857,1);
k_857	 = 	kV(858,1);
k_858	 = 	kV(859,1);
k_859	 = 	kV(860,1);
k_860	 = 	kV(861,1);
k_861	 = 	kV(862,1);
k_862	 = 	kV(863,1);
k_863	 = 	kV(864,1);
k_864	 = 	kV(865,1);
k_865	 = 	kV(866,1);
k_866	 = 	kV(867,1);
k_867	 = 	kV(868,1);
k_868	 = 	kV(869,1);
k_869	 = 	kV(870,1);
k_870	 = 	kV(871,1);
k_871	 = 	kV(872,1);
k_872	 = 	kV(873,1);
k_873	 = 	kV(874,1);
k_874	 = 	kV(875,1);
k_875	 = 	kV(876,1);
k_876	 = 	kV(877,1);
k_877	 = 	kV(878,1);
k_878	 = 	kV(879,1);
k_879	 = 	kV(880,1);
k_880	 = 	kV(881,1);
k_881	 = 	kV(882,1);
k_882	 = 	kV(883,1);
k_883	 = 	kV(884,1);
k_884	 = 	kV(885,1);
k_885	 = 	kV(886,1);
k_886	 = 	kV(887,1);
k_887	 = 	kV(888,1);
k_888	 = 	kV(889,1);
k_889	 = 	kV(890,1);
k_890	 = 	kV(891,1);
k_891	 = 	kV(892,1);
k_892	 = 	kV(893,1);
k_893	 = 	kV(894,1);
k_894	 = 	kV(895,1);
k_895	 = 	kV(896,1);
k_896	 = 	kV(897,1);
k_897	 = 	kV(898,1);
k_898	 = 	kV(899,1);
k_899	 = 	kV(900,1);
k_900	 = 	kV(901,1);
k_901	 = 	kV(902,1);
k_902	 = 	kV(903,1);
k_903	 = 	kV(904,1);
k_904	 = 	kV(905,1);
k_905	 = 	kV(906,1);
k_906	 = 	kV(907,1);
k_907	 = 	kV(908,1);
k_908	 = 	kV(909,1);
k_909	 = 	kV(910,1);
k_910	 = 	kV(911,1);
k_911	 = 	kV(912,1);
k_912	 = 	kV(913,1);
k_913	 = 	kV(914,1);
k_914	 = 	kV(915,1);
k_915	 = 	kV(916,1);
k_916	 = 	kV(917,1);
k_917	 = 	kV(918,1);
k_918	 = 	kV(919,1);
k_919	 = 	kV(920,1);
k_920	 = 	kV(921,1);
k_921	 = 	kV(922,1);
k_922	 = 	kV(923,1);
k_923	 = 	kV(924,1);
k_924	 = 	kV(925,1);
k_925	 = 	kV(926,1);
k_926	 = 	kV(927,1);
k_927	 = 	kV(928,1);
k_928	 = 	kV(929,1);
k_929	 = 	kV(930,1);
k_930	 = 	kV(931,1);
k_931	 = 	kV(932,1);
k_932	 = 	kV(933,1);
k_933	 = 	kV(934,1);
k_934	 = 	kV(935,1);
k_935	 = 	kV(936,1);
k_936	 = 	kV(937,1);
k_937	 = 	kV(938,1);
k_938	 = 	kV(939,1);
k_939	 = 	kV(940,1);
k_940	 = 	kV(941,1);
k_941	 = 	kV(942,1);
k_942	 = 	kV(943,1);
k_943	 = 	kV(944,1);
k_944	 = 	kV(945,1);
k_945	 = 	kV(946,1);
k_946	 = 	kV(947,1);
k_947	 = 	kV(948,1);
k_948	 = 	kV(949,1);
k_949	 = 	kV(950,1);
k_950	 = 	kV(951,1);
k_951	 = 	kV(952,1);
k_952	 = 	kV(953,1);
k_953	 = 	kV(954,1);
k_954	 = 	kV(955,1);
k_955	 = 	kV(956,1);
k_956	 = 	kV(957,1);
k_957	 = 	kV(958,1);
k_958	 = 	kV(959,1);
k_959	 = 	kV(960,1);
k_960	 = 	kV(961,1);
k_961	 = 	kV(962,1);
k_962	 = 	kV(963,1);
k_963	 = 	kV(964,1);
k_964	 = 	kV(965,1);
k_965	 = 	kV(966,1);
k_966	 = 	kV(967,1);
k_967	 = 	kV(968,1);
k_968	 = 	kV(969,1);
k_969	 = 	kV(970,1);
k_970	 = 	kV(971,1);
k_971	 = 	kV(972,1);
k_972	 = 	kV(973,1);
k_973	 = 	kV(974,1);
k_974	 = 	kV(975,1);
k_975	 = 	kV(976,1);
k_976	 = 	kV(977,1);
k_977	 = 	kV(978,1);
k_978	 = 	kV(979,1);
k_979	 = 	kV(980,1);
k_980	 = 	kV(981,1);
k_981	 = 	kV(982,1);
k_982	 = 	kV(983,1);
k_983	 = 	kV(984,1);
k_984	 = 	kV(985,1);
k_985	 = 	kV(986,1);
k_986	 = 	kV(987,1);
k_987	 = 	kV(988,1);
k_988	 = 	kV(989,1);
k_989	 = 	kV(990,1);
k_990	 = 	kV(991,1);
k_991	 = 	kV(992,1);
k_992	 = 	kV(993,1);
k_993	 = 	kV(994,1);
k_994	 = 	kV(995,1);
k_995	 = 	kV(996,1);
k_996	 = 	kV(997,1);
k_997	 = 	kV(998,1);
k_998	 = 	kV(999,1);
k_999	 = 	kV(1000,1);
k_1000	 = 	kV(1001,1);
k_1001	 = 	kV(1002,1);
k_1002	 = 	kV(1003,1);
k_1003	 = 	kV(1004,1);
k_1004	 = 	kV(1005,1);
k_1005	 = 	kV(1006,1);
k_1006	 = 	kV(1007,1);
k_1007	 = 	kV(1008,1);
k_1008	 = 	kV(1009,1);
k_1009	 = 	kV(1010,1);
k_1010	 = 	kV(1011,1);
k_1011	 = 	kV(1012,1);
k_1012	 = 	kV(1013,1);
k_1013	 = 	kV(1014,1);
k_1014	 = 	kV(1015,1);
k_1015	 = 	kV(1016,1);
k_1016	 = 	kV(1017,1);
k_1017	 = 	kV(1018,1);
k_1018	 = 	kV(1019,1);
k_1019	 = 	kV(1020,1);
k_1020	 = 	kV(1021,1);
k_1021	 = 	kV(1022,1);
k_1022	 = 	kV(1023,1);
k_1023	 = 	kV(1024,1);
k_1024	 = 	kV(1025,1);
k_1025	 = 	kV(1026,1);
k_1026	 = 	kV(1027,1);
k_1027	 = 	kV(1028,1);
k_1028	 = 	kV(1029,1);
k_1029	 = 	kV(1030,1);
k_1030	 = 	kV(1031,1);
k_1031	 = 	kV(1032,1);
k_1032	 = 	kV(1033,1);
k_1033	 = 	kV(1034,1);
k_1034	 = 	kV(1035,1);
k_1035	 = 	kV(1036,1);
k_1036	 = 	kV(1037,1);
k_1037	 = 	kV(1038,1);
k_1038	 = 	kV(1039,1);
k_1039	 = 	kV(1040,1);
k_1040	 = 	kV(1041,1);
k_1041	 = 	kV(1042,1);
k_1042	 = 	kV(1043,1);
k_1043	 = 	kV(1044,1);
k_1044	 = 	kV(1045,1);
k_1045	 = 	kV(1046,1);
k_1046	 = 	kV(1047,1);
k_1047	 = 	kV(1048,1);
k_1048	 = 	kV(1049,1);
k_1049	 = 	kV(1050,1);
k_1050	 = 	kV(1051,1);
k_1051	 = 	kV(1052,1);
k_1052	 = 	kV(1053,1);
k_1053	 = 	kV(1054,1);
k_1054	 = 	kV(1055,1);
k_1055	 = 	kV(1056,1);
k_1056	 = 	kV(1057,1);
k_1057	 = 	kV(1058,1);
k_1058	 = 	kV(1059,1);
k_1059	 = 	kV(1060,1);
k_1060	 = 	kV(1061,1);
k_1061	 = 	kV(1062,1);
k_1062	 = 	kV(1063,1);
k_1063	 = 	kV(1064,1);
k_1064	 = 	kV(1065,1);
k_1065	 = 	kV(1066,1);
k_1066	 = 	kV(1067,1);
k_1067	 = 	kV(1068,1);
k_1068	 = 	kV(1069,1);
k_1069	 = 	kV(1070,1);
k_1070	 = 	kV(1071,1);
k_1071	 = 	kV(1072,1);
k_1072	 = 	kV(1073,1);
k_1073	 = 	kV(1074,1);
k_1074	 = 	kV(1075,1);
k_1075	 = 	kV(1076,1);
k_1076	 = 	kV(1077,1);
k_1077	 = 	kV(1078,1);
k_1078	 = 	kV(1079,1);
k_1079	 = 	kV(1080,1);
k_1080	 = 	kV(1081,1);
k_1081	 = 	kV(1082,1);
k_1082	 = 	kV(1083,1);
k_1083	 = 	kV(1084,1);
k_1084	 = 	kV(1085,1);
k_1085	 = 	kV(1086,1);
k_1086	 = 	kV(1087,1);
k_1087	 = 	kV(1088,1);
k_1088	 = 	kV(1089,1);
k_1089	 = 	kV(1090,1);
k_1090	 = 	kV(1091,1);
k_1091	 = 	kV(1092,1);
k_1092	 = 	kV(1093,1);
k_1093	 = 	kV(1094,1);
k_1094	 = 	kV(1095,1);
k_1095	 = 	kV(1096,1);
k_1096	 = 	kV(1097,1);
k_1097	 = 	kV(1098,1);
k_1098	 = 	kV(1099,1);
k_1099	 = 	kV(1100,1);
k_1100	 = 	kV(1101,1);
k_1101	 = 	kV(1102,1);
k_1102	 = 	kV(1103,1);
k_1103	 = 	kV(1104,1);
k_1104	 = 	kV(1105,1);
k_1105	 = 	kV(1106,1);
k_1106	 = 	kV(1107,1);
k_1107	 = 	kV(1108,1);
k_1108	 = 	kV(1109,1);
k_1109	 = 	kV(1110,1);
k_1110	 = 	kV(1111,1);
k_1111	 = 	kV(1112,1);
k_1112	 = 	kV(1113,1);
k_1113	 = 	kV(1114,1);
k_1114	 = 	kV(1115,1);
k_1115	 = 	kV(1116,1);
k_1116	 = 	kV(1117,1);
k_1117	 = 	kV(1118,1);
k_1118	 = 	kV(1119,1);
k_1119	 = 	kV(1120,1);
k_1120	 = 	kV(1121,1);
k_1121	 = 	kV(1122,1);
k_1122	 = 	kV(1123,1);
k_1123	 = 	kV(1124,1);
k_1124	 = 	kV(1125,1);
k_1125	 = 	kV(1126,1);
k_1126	 = 	kV(1127,1);
k_1127	 = 	kV(1128,1);
k_1128	 = 	kV(1129,1);
k_1129	 = 	kV(1130,1);
k_1130	 = 	kV(1131,1);
k_1131	 = 	kV(1132,1);
k_1132	 = 	kV(1133,1);
k_1133	 = 	kV(1134,1);
k_1134	 = 	kV(1135,1);
k_1135	 = 	kV(1136,1);
k_1136	 = 	kV(1137,1);
k_1137	 = 	kV(1138,1);
k_1138	 = 	kV(1139,1);
k_1139	 = 	kV(1140,1);
k_1140	 = 	kV(1141,1);
k_1141	 = 	kV(1142,1);
k_1142	 = 	kV(1143,1);
k_1143	 = 	kV(1144,1);
k_1144	 = 	kV(1145,1);
k_1145	 = 	kV(1146,1);
k_1146	 = 	kV(1147,1);
k_1147	 = 	kV(1148,1);
k_1148	 = 	kV(1149,1);
k_1149	 = 	kV(1150,1);
k_1150	 = 	kV(1151,1);
k_1151	 = 	kV(1152,1);
k_1152	 = 	kV(1153,1);
k_1153	 = 	kV(1154,1);
k_1154	 = 	kV(1155,1);
k_1155	 = 	kV(1156,1);
k_1156	 = 	kV(1157,1);
k_1157	 = 	kV(1158,1);
k_1158	 = 	kV(1159,1);
k_1159	 = 	kV(1160,1);
k_1160	 = 	kV(1161,1);
k_1161	 = 	kV(1162,1);
k_1162	 = 	kV(1163,1);
k_1163	 = 	kV(1164,1);
k_1164	 = 	kV(1165,1);
k_1165	 = 	kV(1166,1);
k_1166	 = 	kV(1167,1);
k_1167	 = 	kV(1168,1);
k_1168	 = 	kV(1169,1);
k_1169	 = 	kV(1170,1);
k_1170	 = 	kV(1171,1);
k_1171	 = 	kV(1172,1);
k_1172	 = 	kV(1173,1);
k_1173	 = 	kV(1174,1);
k_1174	 = 	kV(1175,1);
k_1175	 = 	kV(1176,1);
k_1176	 = 	kV(1177,1);
k_1177	 = 	kV(1178,1);
k_1178	 = 	kV(1179,1);
k_1179	 = 	kV(1180,1);
k_1180	 = 	kV(1181,1);
k_1181	 = 	kV(1182,1);
k_1182	 = 	kV(1183,1);
k_1183	 = 	kV(1184,1);
k_1184	 = 	kV(1185,1);
k_1185	 = 	kV(1186,1);
k_1186	 = 	kV(1187,1);
k_1187	 = 	kV(1188,1);
k_1188	 = 	kV(1189,1);
k_1189	 = 	kV(1190,1);
k_1190	 = 	kV(1191,1);
k_1191	 = 	kV(1192,1);
k_1192	 = 	kV(1193,1);
k_1193	 = 	kV(1194,1);
k_1194	 = 	kV(1195,1);
k_1195	 = 	kV(1196,1);
k_1196	 = 	kV(1197,1);
k_1197	 = 	kV(1198,1);
k_1198	 = 	kV(1199,1);
k_1199	 = 	kV(1200,1);
k_1200	 = 	kV(1201,1);
k_1201	 = 	kV(1202,1);
k_1202	 = 	kV(1203,1);
k_1203	 = 	kV(1204,1);
k_1204	 = 	kV(1205,1);
k_1205	 = 	kV(1206,1);
k_1206	 = 	kV(1207,1);
k_1207	 = 	kV(1208,1);
k_1208	 = 	kV(1209,1);
k_1209	 = 	kV(1210,1);
k_1210	 = 	kV(1211,1);
k_1211	 = 	kV(1212,1);
k_1212	 = 	kV(1213,1);
k_1213	 = 	kV(1214,1);
k_1214	 = 	kV(1215,1);
k_1215	 = 	kV(1216,1);
k_1216	 = 	kV(1217,1);
k_1217	 = 	kV(1218,1);
k_1218	 = 	kV(1219,1);
k_1219	 = 	kV(1220,1);
k_1220	 = 	kV(1221,1);
k_1221	 = 	kV(1222,1);
k_1222	 = 	kV(1223,1);
k_1223	 = 	kV(1224,1);
k_1224	 = 	kV(1225,1);
k_1225	 = 	kV(1226,1);
k_1226	 = 	kV(1227,1);
k_1227	 = 	kV(1228,1);
k_1228	 = 	kV(1229,1);
k_1229	 = 	kV(1230,1);
k_1230	 = 	kV(1231,1);
k_1231	 = 	kV(1232,1);
k_1232	 = 	kV(1233,1);
k_1233	 = 	kV(1234,1);
k_1234	 = 	kV(1235,1);
k_1235	 = 	kV(1236,1);
k_1236	 = 	kV(1237,1);
k_1237	 = 	kV(1238,1);
k_1238	 = 	kV(1239,1);
k_1239	 = 	kV(1240,1);
k_1240	 = 	kV(1241,1);
k_1241	 = 	kV(1242,1);
k_1242	 = 	kV(1243,1);
k_1243	 = 	kV(1244,1);
k_1244	 = 	kV(1245,1);
k_1245	 = 	kV(1246,1);
k_1246	 = 	kV(1247,1);
k_1247	 = 	kV(1248,1);
k_1248	 = 	kV(1249,1);
k_1249	 = 	kV(1250,1);
k_1250	 = 	kV(1251,1);
k_1251	 = 	kV(1252,1);
k_1252	 = 	kV(1253,1);
k_1253	 = 	kV(1254,1);
k_1254	 = 	kV(1255,1);
k_1255	 = 	kV(1256,1);
k_1256	 = 	kV(1257,1);
k_1257	 = 	kV(1258,1);
k_1258	 = 	kV(1259,1);
k_1259	 = 	kV(1260,1);
k_1260	 = 	kV(1261,1);
k_1261	 = 	kV(1262,1);
k_1262	 = 	kV(1263,1);
k_1263	 = 	kV(1264,1);
k_1264	 = 	kV(1265,1);
k_1265	 = 	kV(1266,1);
k_1266	 = 	kV(1267,1);
k_1267	 = 	kV(1268,1);
k_1268	 = 	kV(1269,1);
k_1269	 = 	kV(1270,1);
k_1270	 = 	kV(1271,1);
k_1271	 = 	kV(1272,1);
k_1272	 = 	kV(1273,1);
k_1273	 = 	kV(1274,1);
k_1274	 = 	kV(1275,1);
k_1275	 = 	kV(1276,1);
k_1276	 = 	kV(1277,1);
k_1277	 = 	kV(1278,1);
k_1278	 = 	kV(1279,1);
k_1279	 = 	kV(1280,1);
k_1280	 = 	kV(1281,1);
k_1281	 = 	kV(1282,1);
k_1282	 = 	kV(1283,1);
k_1283	 = 	kV(1284,1);
k_1284	 = 	kV(1285,1);
k_1285	 = 	kV(1286,1);
k_1286	 = 	kV(1287,1);
k_1287	 = 	kV(1288,1);
k_1288	 = 	kV(1289,1);
k_1289	 = 	kV(1290,1);
k_1290	 = 	kV(1291,1);
k_1291	 = 	kV(1292,1);
k_1292	 = 	kV(1293,1);
k_1293	 = 	kV(1294,1);
k_1294	 = 	kV(1295,1);
k_1295	 = 	kV(1296,1);
k_1296	 = 	kV(1297,1);
k_1297	 = 	kV(1298,1);
k_1298	 = 	kV(1299,1);
k_1299	 = 	kV(1300,1);
k_1300	 = 	kV(1301,1);
k_1301	 = 	kV(1302,1);
k_1302	 = 	kV(1303,1);
k_1303	 = 	kV(1304,1);
k_1304	 = 	kV(1305,1);
k_1305	 = 	kV(1306,1);
k_1306	 = 	kV(1307,1);
k_1307	 = 	kV(1308,1);
k_1308	 = 	kV(1309,1);
k_1309	 = 	kV(1310,1);
k_1310	 = 	kV(1311,1);
k_1311	 = 	kV(1312,1);
k_1312	 = 	kV(1313,1);
k_1313	 = 	kV(1314,1);
k_1314	 = 	kV(1315,1);
k_1315	 = 	kV(1316,1);
k_1316	 = 	kV(1317,1);
k_1317	 = 	kV(1318,1);
k_1318	 = 	kV(1319,1);
k_1319	 = 	kV(1320,1);
k_1320	 = 	kV(1321,1);
k_1321	 = 	kV(1322,1);
k_1322	 = 	kV(1323,1);
k_1323	 = 	kV(1324,1);
k_1324	 = 	kV(1325,1);
k_1325	 = 	kV(1326,1);
k_1326	 = 	kV(1327,1);
k_1327	 = 	kV(1328,1);
k_1328	 = 	kV(1329,1);
k_1329	 = 	kV(1330,1);
k_1330	 = 	kV(1331,1);
k_1331	 = 	kV(1332,1);
k_1332	 = 	kV(1333,1);
k_1333	 = 	kV(1334,1);
k_1334	 = 	kV(1335,1);
k_1335	 = 	kV(1336,1);
k_1336	 = 	kV(1337,1);
k_1337	 = 	kV(1338,1);
k_1338	 = 	kV(1339,1);
k_1339	 = 	kV(1340,1);
k_1340	 = 	kV(1341,1);
k_1341	 = 	kV(1342,1);
k_1342	 = 	kV(1343,1);
k_1343	 = 	kV(1344,1);
k_1344	 = 	kV(1345,1);
k_1345	 = 	kV(1346,1);
k_1346	 = 	kV(1347,1);
k_1347	 = 	kV(1348,1);
k_1348	 = 	kV(1349,1);
k_1349	 = 	kV(1350,1);
k_1350	 = 	kV(1351,1);
k_1351	 = 	kV(1352,1);
k_1352	 = 	kV(1353,1);
k_1353	 = 	kV(1354,1);
k_1354	 = 	kV(1355,1);
k_1355	 = 	kV(1356,1);
k_1356	 = 	kV(1357,1);
k_1357	 = 	kV(1358,1);
k_1358	 = 	kV(1359,1);
k_1359	 = 	kV(1360,1);
k_1360	 = 	kV(1361,1);
k_1361	 = 	kV(1362,1);
k_1362	 = 	kV(1363,1);
k_1363	 = 	kV(1364,1);
k_1364	 = 	kV(1365,1);
k_1365	 = 	kV(1366,1);
k_1366	 = 	kV(1367,1);
k_1367	 = 	kV(1368,1);
k_1368	 = 	kV(1369,1);
k_1369	 = 	kV(1370,1);
k_1370	 = 	kV(1371,1);
k_1371	 = 	kV(1372,1);
k_1372	 = 	kV(1373,1);
k_1373	 = 	kV(1374,1);
k_1374	 = 	kV(1375,1);
k_1375	 = 	kV(1376,1);
k_1376	 = 	kV(1377,1);
k_1377	 = 	kV(1378,1);
k_1378	 = 	kV(1379,1);
k_1379	 = 	kV(1380,1);
k_1380	 = 	kV(1381,1);
k_1381	 = 	kV(1382,1);
k_1382	 = 	kV(1383,1);
k_1383	 = 	kV(1384,1);
k_1384	 = 	kV(1385,1);
k_1385	 = 	kV(1386,1);
k_1386	 = 	kV(1387,1);
k_1387	 = 	kV(1388,1);
k_1388	 = 	kV(1389,1);
k_1389	 = 	kV(1390,1);
k_1390	 = 	kV(1391,1);
k_1391	 = 	kV(1392,1);
k_1392	 = 	kV(1393,1);
k_1393	 = 	kV(1394,1);
k_1394	 = 	kV(1395,1);
k_1395	 = 	kV(1396,1);
k_1396	 = 	kV(1397,1);
k_1397	 = 	kV(1398,1);
k_1398	 = 	kV(1399,1);
k_1399	 = 	kV(1400,1);
k_1400	 = 	kV(1401,1);
k_1401	 = 	kV(1402,1);
k_1402	 = 	kV(1403,1);
k_1403	 = 	kV(1404,1);
k_1404	 = 	kV(1405,1);
k_1405	 = 	kV(1406,1);
k_1406	 = 	kV(1407,1);
k_1407	 = 	kV(1408,1);
k_1408	 = 	kV(1409,1);
k_1409	 = 	kV(1410,1);
k_1410	 = 	kV(1411,1);
k_1411	 = 	kV(1412,1);
k_1412	 = 	kV(1413,1);
k_1413	 = 	kV(1414,1);
k_1414	 = 	kV(1415,1);
k_1415	 = 	kV(1416,1);
k_1416	 = 	kV(1417,1);
k_1417	 = 	kV(1418,1);
k_1418	 = 	kV(1419,1);
k_1419	 = 	kV(1420,1);
k_1420	 = 	kV(1421,1);
k_1421	 = 	kV(1422,1);
k_1422	 = 	kV(1423,1);
k_1423	 = 	kV(1424,1);
k_1424	 = 	kV(1425,1);
k_1425	 = 	kV(1426,1);
k_1426	 = 	kV(1427,1);
k_1427	 = 	kV(1428,1);
k_1428	 = 	kV(1429,1);
k_1429	 = 	kV(1430,1);
k_1430	 = 	kV(1431,1);
k_1431	 = 	kV(1432,1);
k_1432	 = 	kV(1433,1);
k_1433	 = 	kV(1434,1);
k_1434	 = 	kV(1435,1);
k_1435	 = 	kV(1436,1);
k_1436	 = 	kV(1437,1);
k_1437	 = 	kV(1438,1);
k_1438	 = 	kV(1439,1);
k_1439	 = 	kV(1440,1);
k_1440	 = 	kV(1441,1);
k_1441	 = 	kV(1442,1);
k_1442	 = 	kV(1443,1);
k_1443	 = 	kV(1444,1);
k_1444	 = 	kV(1445,1);
k_1445	 = 	kV(1446,1);
k_1446	 = 	kV(1447,1);
k_1447	 = 	kV(1448,1);
k_1448	 = 	kV(1449,1);
k_1449	 = 	kV(1450,1);
k_1450	 = 	kV(1451,1);
k_1451	 = 	kV(1452,1);
k_1452	 = 	kV(1453,1);
k_1453	 = 	kV(1454,1);
k_1454	 = 	kV(1455,1);
k_1455	 = 	kV(1456,1);
k_1456	 = 	kV(1457,1);
k_1457	 = 	kV(1458,1);
k_1458	 = 	kV(1459,1);
k_1459	 = 	kV(1460,1);
k_1460	 = 	kV(1461,1);
k_1461	 = 	kV(1462,1);
k_1462	 = 	kV(1463,1);
k_1463	 = 	kV(1464,1);
k_1464	 = 	kV(1465,1);
k_1465	 = 	kV(1466,1);
k_1466	 = 	kV(1467,1);
k_1467	 = 	kV(1468,1);
k_1468	 = 	kV(1469,1);
k_1469	 = 	kV(1470,1);
k_1470	 = 	kV(1471,1);
k_1471	 = 	kV(1472,1);
k_1472	 = 	kV(1473,1);
k_1473	 = 	kV(1474,1);
k_1474	 = 	kV(1475,1);
k_1475	 = 	kV(1476,1);
k_1476	 = 	kV(1477,1);
k_1477	 = 	kV(1478,1);
k_1478	 = 	kV(1479,1);
k_1479	 = 	kV(1480,1);
k_1480	 = 	kV(1481,1);
k_1481	 = 	kV(1482,1);
k_1482	 = 	kV(1483,1);
k_1483	 = 	kV(1484,1);
k_1484	 = 	kV(1485,1);
k_1485	 = 	kV(1486,1);
k_1486	 = 	kV(1487,1);
k_1487	 = 	kV(1488,1);
k_1488	 = 	kV(1489,1);
k_1489	 = 	kV(1490,1);
k_1490	 = 	kV(1491,1);
k_1491	 = 	kV(1492,1);
k_1492	 = 	kV(1493,1);
k_1493	 = 	kV(1494,1);
k_1494	 = 	kV(1495,1);
k_1495	 = 	kV(1496,1);
k_1496	 = 	kV(1497,1);
k_1497	 = 	kV(1498,1);
k_1498	 = 	kV(1499,1);
k_1499	 = 	kV(1500,1);
k_1500	 = 	kV(1501,1);
k_1501	 = 	kV(1502,1);
k_1502	 = 	kV(1503,1);
k_1503	 = 	kV(1504,1);
k_1504	 = 	kV(1505,1);
k_1505	 = 	kV(1506,1);
k_1506	 = 	kV(1507,1);
k_1507	 = 	kV(1508,1);
k_1508	 = 	kV(1509,1);
k_1509	 = 	kV(1510,1);
k_1510	 = 	kV(1511,1);
k_1511	 = 	kV(1512,1);
k_1512	 = 	kV(1513,1);
k_1513	 = 	kV(1514,1);
k_1514	 = 	kV(1515,1);
k_1515	 = 	kV(1516,1);
k_1516	 = 	kV(1517,1);
k_1517	 = 	kV(1518,1);
k_1518	 = 	kV(1519,1);
k_1519	 = 	kV(1520,1);
k_1520	 = 	kV(1521,1);
k_1521	 = 	kV(1522,1);
k_1522	 = 	kV(1523,1);
k_1523	 = 	kV(1524,1);
k_1524	 = 	kV(1525,1);
k_1525	 = 	kV(1526,1);
k_1526	 = 	kV(1527,1);
k_1527	 = 	kV(1528,1);
k_1528	 = 	kV(1529,1);
k_1529	 = 	kV(1530,1);
k_1530	 = 	kV(1531,1);
k_1531	 = 	kV(1532,1);
k_1532	 = 	kV(1533,1);
k_1533	 = 	kV(1534,1);
k_1534	 = 	kV(1535,1);
k_1535	 = 	kV(1536,1);
k_1536	 = 	kV(1537,1);
k_1537	 = 	kV(1538,1);
k_1538	 = 	kV(1539,1);
k_1539	 = 	kV(1540,1);
k_1540	 = 	kV(1541,1);
k_1541	 = 	kV(1542,1);
k_1542	 = 	kV(1543,1);
k_1543	 = 	kV(1544,1);
k_1544	 = 	kV(1545,1);
k_1545	 = 	kV(1546,1);
k_1546	 = 	kV(1547,1);
k_1547	 = 	kV(1548,1);
k_1548	 = 	kV(1549,1);
k_1549	 = 	kV(1550,1);
k_1550	 = 	kV(1551,1);
k_1551	 = 	kV(1552,1);
k_1552	 = 	kV(1553,1);
k_1553	 = 	kV(1554,1);
k_1554	 = 	kV(1555,1);
k_1555	 = 	kV(1556,1);
k_1556	 = 	kV(1557,1);
k_1557	 = 	kV(1558,1);
k_1558	 = 	kV(1559,1);
k_1559	 = 	kV(1560,1);
k_1560	 = 	kV(1561,1);
k_1561	 = 	kV(1562,1);
k_1562	 = 	kV(1563,1);
k_1563	 = 	kV(1564,1);
k_1564	 = 	kV(1565,1);
k_1565	 = 	kV(1566,1);
k_1566	 = 	kV(1567,1);
k_1567	 = 	kV(1568,1);
k_1568	 = 	kV(1569,1);
k_1569	 = 	kV(1570,1);
k_1570	 = 	kV(1571,1);
k_1571	 = 	kV(1572,1);
k_1572	 = 	kV(1573,1);
k_1573	 = 	kV(1574,1);
k_1574	 = 	kV(1575,1);
k_1575	 = 	kV(1576,1);
k_1576	 = 	kV(1577,1);
k_1577	 = 	kV(1578,1);
k_1578	 = 	kV(1579,1);
k_1579	 = 	kV(1580,1);
k_1580	 = 	kV(1581,1);
k_1581	 = 	kV(1582,1);
k_1582	 = 	kV(1583,1);
k_1583	 = 	kV(1584,1);
k_1584	 = 	kV(1585,1);
k_1585	 = 	kV(1586,1);
k_1586	 = 	kV(1587,1);
k_1587	 = 	kV(1588,1);
k_1588	 = 	kV(1589,1);
k_1589	 = 	kV(1590,1);
k_1590	 = 	kV(1591,1);
k_1591	 = 	kV(1592,1);
k_1592	 = 	kV(1593,1);
k_1593	 = 	kV(1594,1);
k_1594	 = 	kV(1595,1);
k_1595	 = 	kV(1596,1);
k_1596	 = 	kV(1597,1);
k_1597	 = 	kV(1598,1);
k_1598	 = 	kV(1599,1);
k_1599	 = 	kV(1600,1);
k_1600	 = 	kV(1601,1);
k_1601	 = 	kV(1602,1);
k_1602	 = 	kV(1603,1);
k_1603	 = 	kV(1604,1);
k_1604	 = 	kV(1605,1);
k_1605	 = 	kV(1606,1);
k_1606	 = 	kV(1607,1);
k_1607	 = 	kV(1608,1);
k_1608	 = 	kV(1609,1);
k_1609	 = 	kV(1610,1);
k_1610	 = 	kV(1611,1);
k_1611	 = 	kV(1612,1);
k_1612	 = 	kV(1613,1);
k_1613	 = 	kV(1614,1);
k_1614	 = 	kV(1615,1);
k_1615	 = 	kV(1616,1);
k_1616	 = 	kV(1617,1);
k_1617	 = 	kV(1618,1);
k_1618	 = 	kV(1619,1);
k_1619	 = 	kV(1620,1);
k_1620	 = 	kV(1621,1);
k_1621	 = 	kV(1622,1);
k_1622	 = 	kV(1623,1);
k_1623	 = 	kV(1624,1);
k_1624	 = 	kV(1625,1);
k_1625	 = 	kV(1626,1);
k_1626	 = 	kV(1627,1);
k_1627	 = 	kV(1628,1);
k_1628	 = 	kV(1629,1);
k_1629	 = 	kV(1630,1);
k_1630	 = 	kV(1631,1);
k_1631	 = 	kV(1632,1);
k_1632	 = 	kV(1633,1);
k_1633	 = 	kV(1634,1);
k_1634	 = 	kV(1635,1);
k_1635	 = 	kV(1636,1);
k_1636	 = 	kV(1637,1);
k_1637	 = 	kV(1638,1);
k_1638	 = 	kV(1639,1);
k_1639	 = 	kV(1640,1);
k_1640	 = 	kV(1641,1);
k_1641	 = 	kV(1642,1);
k_1642	 = 	kV(1643,1);
k_1643	 = 	kV(1644,1);
k_1644	 = 	kV(1645,1);
k_1645	 = 	kV(1646,1);
k_1646	 = 	kV(1647,1);
k_1647	 = 	kV(1648,1);
k_1648	 = 	kV(1649,1);
k_1649	 = 	kV(1650,1);
k_1650	 = 	kV(1651,1);
k_1651	 = 	kV(1652,1);
k_1652	 = 	kV(1653,1);
k_1653	 = 	kV(1654,1);
k_1654	 = 	kV(1655,1);
k_1655	 = 	kV(1656,1);
k_1656	 = 	kV(1657,1);
k_1657	 = 	kV(1658,1);
k_1658	 = 	kV(1659,1);
k_1659	 = 	kV(1660,1);
k_1660	 = 	kV(1661,1);
k_1661	 = 	kV(1662,1);
k_1662	 = 	kV(1663,1);
k_1663	 = 	kV(1664,1);
k_1664	 = 	kV(1665,1);
k_1665	 = 	kV(1666,1);
k_1666	 = 	kV(1667,1);
k_1667	 = 	kV(1668,1);
k_1668	 = 	kV(1669,1);
k_1669	 = 	kV(1670,1);
k_1670	 = 	kV(1671,1);
k_1671	 = 	kV(1672,1);
k_1672	 = 	kV(1673,1);
k_1673	 = 	kV(1674,1);

% ----------------------------------- 
% List of the rates -- 
% ----------------------------------- 
rV(1,1)	=	k_0*1.0	 ; % 	 1	 [] = RNAp
rV(2,1)	=	k_1*RNAp	 ; % 	 2	 RNAp = []
rV(3,1)	=	k_2*1.0	 ; % 	 3	 [] = eIF4E
rV(4,1)	=	k_3*eIF4E	 ; % 	 4	 eIF4E = []
rV(5,1)	=	k_4*1.0	 ; % 	 5	 [] = Ribo60S
rV(6,1)	=	k_5*Ribo60S	 ; % 	 6	 Ribo60S = []
rV(7,1)	=	k_6*1.0	 ; % 	 7	 [] = HSP
rV(8,1)	=	k_7*HSP	 ; % 	 8	 HSP = []
rV(9,1)	=	k_8*1.0	 ; % 	 9	 [] = ARPase
rV(10,1)	=	k_9*ARPase	 ; % 	 10	 ARPase = []
rV(11,1)	=	k_10*1.0	 ; % 	 11	 [] = HER2
rV(12,1)	=	k_11*HER2	 ; % 	 12	 HER2 = []
rV(13,1)	=	k_12*1.0	 ; % 	 13	 [] = SHP
rV(14,1)	=	k_13*SHP	 ; % 	 14	 SHP = []
rV(15,1)	=	k_14*1.0	 ; % 	 15	 [] = Grb2
rV(16,1)	=	k_15*Grb2	 ; % 	 16	 Grb2 = []
rV(17,1)	=	k_16*1.0	 ; % 	 17	 [] = Sos
rV(18,1)	=	k_17*Sos	 ; % 	 18	 Sos = []
rV(19,1)	=	k_18*1.0	 ; % 	 19	 [] = Ras_GDP
rV(20,1)	=	k_19*Ras_GDP	 ; % 	 20	 Ras_GDP = []
rV(21,1)	=	k_20*1.0	 ; % 	 21	 [] = Shc
rV(22,1)	=	k_21*Shc	 ; % 	 22	 Shc = []
rV(23,1)	=	k_22*1.0	 ; % 	 23	 [] = EGFR
rV(24,1)	=	k_23*EGFR	 ; % 	 24	 EGFR = []
rV(25,1)	=	k_24*1.0	 ; % 	 25	 [] = EGF
rV(26,1)	=	k_25*EGF	 ; % 	 26	 EGF = []
rV(27,1)	=	k_26*1.0	 ; % 	 27	 [] = RasGAP
rV(28,1)	=	k_27*RasGAP	 ; % 	 28	 RasGAP = []
rV(29,1)	=	k_28*1.0	 ; % 	 29	 [] = ShcPase
rV(30,1)	=	k_29*ShcPase	 ; % 	 30	 ShcPase = []
rV(31,1)	=	k_30*1.0	 ; % 	 31	 [] = GABPase
rV(32,1)	=	k_31*GABPase	 ; % 	 32	 GABPase = []
rV(33,1)	=	k_32*1.0	 ; % 	 33	 [] = GAB
rV(34,1)	=	k_33*GAB	 ; % 	 34	 GAB = []
rV(35,1)	=	k_34*1.0	 ; % 	 35	 [] = PI3K
rV(36,1)	=	k_35*PI3K	 ; % 	 36	 PI3K = []
rV(37,1)	=	k_36*1.0	 ; % 	 37	 [] = PI3KPase
rV(38,1)	=	k_37*PI3KPase	 ; % 	 38	 PI3KPase = []
rV(39,1)	=	k_38*1.0	 ; % 	 39	 [] = PLCg
rV(40,1)	=	k_39*PLCg	 ; % 	 40	 PLCg = []
rV(41,1)	=	k_40*1.0	 ; % 	 41	 [] = PLCgPase
rV(42,1)	=	k_41*PLCgPase	 ; % 	 42	 PLCgPase = []
rV(43,1)	=	k_42*1.0	 ; % 	 43	 [] = PIP2
rV(44,1)	=	k_43*PIP2	 ; % 	 44	 PIP2 = []
rV(45,1)	=	k_44*1.0	 ; % 	 45	 [] = PKC
rV(46,1)	=	k_45*PKC	 ; % 	 46	 PKC = []
rV(47,1)	=	k_46*1.0	 ; % 	 47	 [] = PKCPase
rV(48,1)	=	k_47*PKCPase	 ; % 	 48	 PKCPase = []
rV(49,1)	=	k_48*1.0	 ; % 	 49	 [] = CK2
rV(50,1)	=	k_49*CK2	 ; % 	 50	 CK2 = []
rV(51,1)	=	k_50*1.0	 ; % 	 51	 [] = CK2Pase
rV(52,1)	=	k_51*CK2Pase	 ; % 	 52	 CK2Pase = []
rV(53,1)	=	k_52*1.0	 ; % 	 53	 [] = RAF
rV(54,1)	=	k_53*RAF	 ; % 	 54	 RAF = []
rV(55,1)	=	k_54*1.0	 ; % 	 55	 [] = MEK
rV(56,1)	=	k_55*MEK	 ; % 	 56	 MEK = []
rV(57,1)	=	k_56*1.0	 ; % 	 57	 [] = ERK
rV(58,1)	=	k_57*ERK	 ; % 	 58	 ERK = []
rV(59,1)	=	k_58*1.0	 ; % 	 59	 [] = MKP1
rV(60,1)	=	k_59*MKP1	 ; % 	 60	 MKP1 = []
rV(61,1)	=	k_60*1.0	 ; % 	 61	 [] = MKP2
rV(62,1)	=	k_61*MKP2	 ; % 	 62	 MKP2 = []
rV(63,1)	=	k_62*1.0	 ; % 	 63	 [] = MKP3
rV(64,1)	=	k_63*MKP3	 ; % 	 64	 MKP3 = []
rV(65,1)	=	k_64*1.0	 ; % 	 65	 [] = PP1
rV(66,1)	=	k_65*PP1	 ; % 	 66	 PP1 = []
rV(67,1)	=	k_66*1.0	 ; % 	 67	 [] = PP2A
rV(68,1)	=	k_67*PP2A	 ; % 	 68	 PP2A = []
rV(69,1)	=	k_68*1.0	 ; % 	 69	 [] = SosPase
rV(70,1)	=	k_69*SosPase	 ; % 	 70	 SosPase = []
rV(71,1)	=	k_70*1.0	 ; % 	 71	 [] = cPLA2
rV(72,1)	=	k_71*cPLA2	 ; % 	 72	 cPLA2 = []
rV(73,1)	=	k_72*1.0	 ; % 	 73	 [] = cPLA2Pase
rV(74,1)	=	k_73*cPLA2Pase	 ; % 	 74	 cPLA2Pase = []
rV(75,1)	=	k_74*1.0	 ; % 	 75	 [] = PTEN
rV(76,1)	=	k_75*PTEN	 ; % 	 76	 PTEN = []
rV(77,1)	=	k_76*1.0	 ; % 	 77	 [] = AKT
rV(78,1)	=	k_77*AKT	 ; % 	 78	 AKT = []
rV(79,1)	=	k_78*1.0	 ; % 	 79	 [] = PDK1
rV(80,1)	=	k_79*PDK1	 ; % 	 80	 PDK1 = []
rV(81,1)	=	k_80*1.0	 ; % 	 81	 [] = TOR
rV(82,1)	=	k_81*TOR	 ; % 	 82	 TOR = []
rV(83,1)	=	k_82*1.0	 ; % 	 83	 [] = TORPase
rV(84,1)	=	k_83*TORPase	 ; % 	 84	 TORPase = []
rV(85,1)	=	k_84*1.0	 ; % 	 85	 [] = TSC1
rV(86,1)	=	k_85*TSC1	 ; % 	 86	 TSC1 = []
rV(87,1)	=	k_86*1.0	 ; % 	 87	 [] = TSC2
rV(88,1)	=	k_87*TSC2	 ; % 	 88	 TSC2 = []
rV(89,1)	=	k_88*1.0	 ; % 	 89	 [] = Rheb_GDP
rV(90,1)	=	k_89*Rheb_GDP	 ; % 	 90	 Rheb_GDP = []
rV(91,1)	=	k_90*1.0	 ; % 	 91	 [] = RhebGEF
rV(92,1)	=	k_91*RhebGEF	 ; % 	 92	 RhebGEF = []
rV(93,1)	=	k_92*1.0	 ; % 	 93	 [] = TSCPase
rV(94,1)	=	k_93*TSCPase	 ; % 	 94	 TSCPase = []
rV(95,1)	=	k_94*1.0	 ; % 	 95	 [] = R4EBP1
rV(96,1)	=	k_95*R4EBP1	 ; % 	 96	 R4EBP1 = []
rV(97,1)	=	k_96*1.0	 ; % 	 97	 [] = R4EBP1Pase
rV(98,1)	=	k_97*R4EBP1Pase	 ; % 	 98	 R4EBP1Pase = []
rV(99,1)	=	k_98*1.0	 ; % 	 99	 [] = p70
rV(100,1)	=	k_99*p70	 ; % 	 100	 p70 = []
rV(101,1)	=	k_100*1.0	 ; % 	 101	 [] = Ribo40S_inact
rV(102,1)	=	k_101*Ribo40S_inact	 ; % 	 102	 Ribo40S_inact = []
rV(103,1)	=	k_102*1.0	 ; % 	 103	 [] = p70Pase
rV(104,1)	=	k_103*p70Pase	 ; % 	 104	 p70Pase = []
rV(105,1)	=	k_104*1.0	 ; % 	 105	 [] = Ribo40SPase
rV(106,1)	=	k_105*Ribo40SPase	 ; % 	 106	 Ribo40SPase = []
rV(107,1)	=	k_106*1.0	 ; % 	 107	 [] = ETSPase
rV(108,1)	=	k_107*ETSPase	 ; % 	 108	 ETSPase = []
rV(109,1)	=	k_108*1.0	 ; % 	 109	 [] = AP1Pase
rV(110,1)	=	k_109*AP1Pase	 ; % 	 110	 AP1Pase = []
rV(111,1)	=	k_110*1.0	 ; % 	 111	 [] = Sam68
rV(112,1)	=	k_111*Sam68	 ; % 	 112	 Sam68 = []
rV(113,1)	=	k_112*1.0	 ; % 	 113	 [] = Sam68Pase
rV(114,1)	=	k_113*Sam68Pase	 ; % 	 114	 Sam68Pase = []
rV(115,1)	=	k_114*1.0	 ; % 	 115	 [] = CDK4
rV(116,1)	=	k_115*CDK4	 ; % 	 116	 CDK4 = []
rV(117,1)	=	k_116*1.0	 ; % 	 117	 [] = CDK6
rV(118,1)	=	k_117*CDK6	 ; % 	 118	 CDK6 = []
rV(119,1)	=	k_118*1.0	 ; % 	 119	 [] = Cdk2
rV(120,1)	=	k_119*Cdk2	 ; % 	 120	 Cdk2 = []
rV(121,1)	=	k_120*1.0	 ; % 	 121	 [] = CDC25APase
rV(122,1)	=	k_121*CDC25APase	 ; % 	 122	 CDC25APase = []
rV(123,1)	=	k_122*1.0	 ; % 	 123	 [] = Cdk2Pase
rV(124,1)	=	k_123*Cdk2Pase	 ; % 	 124	 Cdk2Pase = []
rV(125,1)	=	k_124*1.0	 ; % 	 125	 [] = RbPase
rV(126,1)	=	k_125*RbPase	 ; % 	 126	 RbPase = []
rV(127,1)	=	k_126*1.0	 ; % 	 127	 [] = Import
rV(128,1)	=	k_127*Import	 ; % 	 128	 Import = []
rV(129,1)	=	k_128*1.0	 ; % 	 129	 [] = Export
rV(130,1)	=	k_129*Export	 ; % 	 130	 Export = []
rV(131,1)	=	k_130*1.0	 ; % 	 131	 [] = DHT
rV(132,1)	=	k_131*DHT	 ; % 	 132	 DHT = []
rV(133,1)	=	k_132*g_ETS*RNAp	 ; % 	 133	 g_ETS+RNAp = g_ETS_RNAp
rV(134,1)	=	k_133*g_ETS_RNAp	 ; % 	 134	 g_ETS_RNAp = g_ETS+RNAp
rV(135,1)	=	k_134*g_ETS_RNAp	 ; % 	 135	 g_ETS_RNAp = g_ETS+RNAp+mRNA_n_ETS
rV(136,1)	=	k_135*Export*mRNA_n_ETS	 ; % 	 136	 Export+mRNA_n_ETS = Export_mRNA_n_ETS
rV(137,1)	=	k_136*Export_mRNA_n_ETS	 ; % 	 137	 Export_mRNA_n_ETS = Export+mRNA_n_ETS
rV(138,1)	=	k_137*Export_mRNA_n_ETS	 ; % 	 138	 Export_mRNA_n_ETS = Export+mRNA_ETS
rV(139,1)	=	k_138*g_AP1*RNAp	 ; % 	 139	 g_AP1+RNAp = g_AP1_RNAp
rV(140,1)	=	k_139*g_AP1_RNAp	 ; % 	 140	 g_AP1_RNAp = g_AP1+RNAp
rV(141,1)	=	k_140*g_AP1_RNAp	 ; % 	 141	 g_AP1_RNAp = g_AP1+RNAp+mRNA_n_AP1
rV(142,1)	=	k_141*g_AP1*AP1_p_n	 ; % 	 142	 g_AP1+AP1_p_n = g_AP1_AP1_p_n
rV(143,1)	=	k_142*g_AP1_AP1_p_n	 ; % 	 143	 g_AP1_AP1_p_n = g_AP1+AP1_p_n
rV(144,1)	=	k_143*g_AP1_AP1_p_n*RNAp	 ; % 	 144	 g_AP1_AP1_p_n+RNAp = g_AP1_AP1_p_n_RNAp
rV(145,1)	=	k_144*g_AP1_AP1_p_n_RNAp	 ; % 	 145	 g_AP1_AP1_p_n_RNAp = g_AP1_AP1_p_n+RNAp
rV(146,1)	=	k_145*g_AP1_AP1_p_n_RNAp	 ; % 	 146	 g_AP1_AP1_p_n_RNAp = g_AP1+AP1_p_n+RNAp+mRNA_n_AP1
rV(147,1)	=	k_146*Export*mRNA_n_AP1	 ; % 	 147	 Export+mRNA_n_AP1 = Export_mRNA_n_AP1
rV(148,1)	=	k_147*Export_mRNA_n_AP1	 ; % 	 148	 Export_mRNA_n_AP1 = Export+mRNA_n_AP1
rV(149,1)	=	k_148*Export_mRNA_n_AP1	 ; % 	 149	 Export_mRNA_n_AP1 = Export+mRNA_AP1
rV(150,1)	=	k_149*g_CycD1*RNAp	 ; % 	 150	 g_CycD1+RNAp = g_CycD1_RNAp
rV(151,1)	=	k_150*g_CycD1_RNAp	 ; % 	 151	 g_CycD1_RNAp = g_CycD1+RNAp
rV(152,1)	=	k_151*g_CycD1_RNAp	 ; % 	 152	 g_CycD1_RNAp = g_CycD1+RNAp+mRNA_n_CycD1a
rV(153,1)	=	k_152*g_CycD1*ETS_p_n	 ; % 	 153	 g_CycD1+ETS_p_n = g_CycD1_ETS_p_n
rV(154,1)	=	k_153*g_CycD1_ETS_p_n	 ; % 	 154	 g_CycD1_ETS_p_n = g_CycD1+ETS_p_n
rV(155,1)	=	k_154*g_CycD1_ETS_p_n*RNAp	 ; % 	 155	 g_CycD1_ETS_p_n+RNAp = g_CycD1_ETS_p_n_RNAp
rV(156,1)	=	k_155*g_CycD1_ETS_p_n_RNAp	 ; % 	 156	 g_CycD1_ETS_p_n_RNAp = g_CycD1_ETS_p_n+RNAp
rV(157,1)	=	k_156*g_CycD1_ETS_p_n_RNAp	 ; % 	 157	 g_CycD1_ETS_p_n_RNAp = g_CycD1+ETS_p_n+RNAp+mRNA_n_CycD1a
rV(158,1)	=	k_157*g_CycD1*AP1_p_n	 ; % 	 158	 g_CycD1+AP1_p_n = g_CycD1_AP1_p_n
rV(159,1)	=	k_158*g_CycD1_AP1_p_n	 ; % 	 159	 g_CycD1_AP1_p_n = g_CycD1+AP1_p_n
rV(160,1)	=	k_159*g_CycD1_AP1_p_n*RNAp	 ; % 	 160	 g_CycD1_AP1_p_n+RNAp = g_CycD1_AP1_p_n_RNAp
rV(161,1)	=	k_160*g_CycD1_AP1_p_n_RNAp	 ; % 	 161	 g_CycD1_AP1_p_n_RNAp = g_CycD1_AP1_p_n+RNAp
rV(162,1)	=	k_161*g_CycD1_AP1_p_n_RNAp	 ; % 	 162	 g_CycD1_AP1_p_n_RNAp = g_CycD1+AP1_p_n+RNAp+mRNA_n_CycD1a
rV(163,1)	=	k_162*g_CycD1*E2F_n	 ; % 	 163	 g_CycD1+E2F_n = g_CycD1_E2F_n
rV(164,1)	=	k_163*g_CycD1_E2F_n	 ; % 	 164	 g_CycD1_E2F_n = g_CycD1+E2F_n
rV(165,1)	=	k_164*g_CycD1_E2F_n*RNAp	 ; % 	 165	 g_CycD1_E2F_n+RNAp = g_CycD1_E2F_n_RNAp
rV(166,1)	=	k_165*g_CycD1_E2F_n_RNAp	 ; % 	 166	 g_CycD1_E2F_n_RNAp = g_CycD1_E2F_n+RNAp
rV(167,1)	=	k_166*g_CycD1_E2F_n_RNAp	 ; % 	 167	 g_CycD1_E2F_n_RNAp = g_CycD1+E2F_n+RNAp+mRNA_n_CycD1a
rV(168,1)	=	k_167*Export*mRNA_n_CycD1a	 ; % 	 168	 Export+mRNA_n_CycD1a = Export_mRNA_n_CycD1a
rV(169,1)	=	k_168*Export_mRNA_n_CycD1a	 ; % 	 169	 Export_mRNA_n_CycD1a = Export+mRNA_n_CycD1a
rV(170,1)	=	k_169*Export_mRNA_n_CycD1a	 ; % 	 170	 Export_mRNA_n_CycD1a = Export+mRNA_CycD1a
rV(171,1)	=	k_170*Export*mRNA_n_CycD1b	 ; % 	 171	 Export+mRNA_n_CycD1b = Export_mRNA_n_CycD1b
rV(172,1)	=	k_171*Export_mRNA_n_CycD1b	 ; % 	 172	 Export_mRNA_n_CycD1b = Export+mRNA_n_CycD1b
rV(173,1)	=	k_172*Export_mRNA_n_CycD1b	 ; % 	 173	 Export_mRNA_n_CycD1b = Export+mRNA_CycD1b
rV(174,1)	=	k_173*g_CycE*RNAp	 ; % 	 174	 g_CycE+RNAp = g_CycE_RNAp
rV(175,1)	=	k_174*g_CycE_RNAp	 ; % 	 175	 g_CycE_RNAp = g_CycE+RNAp
rV(176,1)	=	k_175*g_CycE_RNAp	 ; % 	 176	 g_CycE_RNAp = g_CycE+RNAp+mRNA_n_CycE
rV(177,1)	=	k_176*g_CycE*E2F_n	 ; % 	 177	 g_CycE+E2F_n = g_CycE_E2F_n
rV(178,1)	=	k_177*g_CycE_E2F_n	 ; % 	 178	 g_CycE_E2F_n = g_CycE+E2F_n
rV(179,1)	=	k_178*g_CycE_E2F_n*RNAp	 ; % 	 179	 g_CycE_E2F_n+RNAp = g_CycE_E2F_n_RNAp
rV(180,1)	=	k_179*g_CycE_E2F_n_RNAp	 ; % 	 180	 g_CycE_E2F_n_RNAp = g_CycE_E2F_n+RNAp
rV(181,1)	=	k_180*g_CycE_E2F_n_RNAp	 ; % 	 181	 g_CycE_E2F_n_RNAp = g_CycE+E2F_n+RNAp+mRNA_n_CycE
rV(182,1)	=	k_181*Export*mRNA_n_CycE	 ; % 	 182	 Export+mRNA_n_CycE = Export_mRNA_n_CycE
rV(183,1)	=	k_182*Export_mRNA_n_CycE	 ; % 	 183	 Export_mRNA_n_CycE = Export+mRNA_n_CycE
rV(184,1)	=	k_183*Export_mRNA_n_CycE	 ; % 	 184	 Export_mRNA_n_CycE = Export+mRNA_CycE
rV(185,1)	=	k_184*g_Rb*RNAp	 ; % 	 185	 g_Rb+RNAp = g_Rb_RNAp
rV(186,1)	=	k_185*g_Rb_RNAp	 ; % 	 186	 g_Rb_RNAp = g_Rb+RNAp
rV(187,1)	=	k_186*g_Rb_RNAp	 ; % 	 187	 g_Rb_RNAp = g_Rb+RNAp+mRNA_n_Rb
rV(188,1)	=	k_187*g_Rb*E2F_n	 ; % 	 188	 g_Rb+E2F_n = g_Rb_E2F_n
rV(189,1)	=	k_188*g_Rb_E2F_n	 ; % 	 189	 g_Rb_E2F_n = g_Rb+E2F_n
rV(190,1)	=	k_189*g_Rb_E2F_n*RNAp	 ; % 	 190	 g_Rb_E2F_n+RNAp = g_Rb_E2F_n_RNAp
rV(191,1)	=	k_190*g_Rb_E2F_n_RNAp	 ; % 	 191	 g_Rb_E2F_n_RNAp = g_Rb_E2F_n+RNAp
rV(192,1)	=	k_191*g_Rb_E2F_n_RNAp	 ; % 	 192	 g_Rb_E2F_n_RNAp = g_Rb+E2F_n+RNAp+mRNA_n_Rb
rV(193,1)	=	k_192*Export*mRNA_n_Rb	 ; % 	 193	 Export+mRNA_n_Rb = Export_mRNA_n_Rb
rV(194,1)	=	k_193*Export_mRNA_n_Rb	 ; % 	 194	 Export_mRNA_n_Rb = Export+mRNA_n_Rb
rV(195,1)	=	k_194*Export_mRNA_n_Rb	 ; % 	 195	 Export_mRNA_n_Rb = Export+mRNA_Rb
rV(196,1)	=	k_195*g_E2F*RNAp	 ; % 	 196	 g_E2F+RNAp = g_E2F_RNAp
rV(197,1)	=	k_196*g_E2F_RNAp	 ; % 	 197	 g_E2F_RNAp = g_E2F+RNAp
rV(198,1)	=	k_197*g_E2F_RNAp	 ; % 	 198	 g_E2F_RNAp = g_E2F+RNAp+mRNA_n_E2F
rV(199,1)	=	k_198*g_E2F*AP1_p_n	 ; % 	 199	 g_E2F+AP1_p_n = g_E2F_AP1_p_n
rV(200,1)	=	k_199*g_E2F_AP1_p_n	 ; % 	 200	 g_E2F_AP1_p_n = g_E2F+AP1_p_n
rV(201,1)	=	k_200*g_E2F_AP1_p_n*RNAp	 ; % 	 201	 g_E2F_AP1_p_n+RNAp = g_E2F_AP1_p_n_RNAp
rV(202,1)	=	k_201*g_E2F_AP1_p_n_RNAp	 ; % 	 202	 g_E2F_AP1_p_n_RNAp = g_E2F_AP1_p_n+RNAp
rV(203,1)	=	k_202*g_E2F_AP1_p_n_RNAp	 ; % 	 203	 g_E2F_AP1_p_n_RNAp = g_E2F+AP1_p_n+RNAp+mRNA_n_E2F
rV(204,1)	=	k_203*g_E2F*E2F_n	 ; % 	 204	 g_E2F+E2F_n = g_E2F_E2F_n
rV(205,1)	=	k_204*g_E2F_E2F_n	 ; % 	 205	 g_E2F_E2F_n = g_E2F+E2F_n
rV(206,1)	=	k_205*g_E2F_E2F_n*RNAp	 ; % 	 206	 g_E2F_E2F_n+RNAp = g_E2F_E2F_n_RNAp
rV(207,1)	=	k_206*g_E2F_E2F_n_RNAp	 ; % 	 207	 g_E2F_E2F_n_RNAp = g_E2F_E2F_n+RNAp
rV(208,1)	=	k_207*g_E2F_E2F_n_RNAp	 ; % 	 208	 g_E2F_E2F_n_RNAp = g_E2F+E2F_n+RNAp+mRNA_n_E2F
rV(209,1)	=	k_208*Export*mRNA_n_E2F	 ; % 	 209	 Export+mRNA_n_E2F = Export_mRNA_n_E2F
rV(210,1)	=	k_209*Export_mRNA_n_E2F	 ; % 	 210	 Export_mRNA_n_E2F = Export+mRNA_n_E2F
rV(211,1)	=	k_210*Export_mRNA_n_E2F	 ; % 	 211	 Export_mRNA_n_E2F = Export+mRNA_E2F
rV(212,1)	=	k_211*g_CDC25A*RNAp	 ; % 	 212	 g_CDC25A+RNAp = g_CDC25A_RNAp
rV(213,1)	=	k_212*g_CDC25A_RNAp	 ; % 	 213	 g_CDC25A_RNAp = g_CDC25A+RNAp
rV(214,1)	=	k_213*g_CDC25A_RNAp	 ; % 	 214	 g_CDC25A_RNAp = g_CDC25A+RNAp+mRNA_n_CDC25A
rV(215,1)	=	k_214*g_CDC25A*E2F_n	 ; % 	 215	 g_CDC25A+E2F_n = g_CDC25A_E2F_n
rV(216,1)	=	k_215*g_CDC25A_E2F_n	 ; % 	 216	 g_CDC25A_E2F_n = g_CDC25A+E2F_n
rV(217,1)	=	k_216*g_CDC25A_E2F_n*RNAp	 ; % 	 217	 g_CDC25A_E2F_n+RNAp = g_CDC25A_E2F_n_RNAp
rV(218,1)	=	k_217*g_CDC25A_E2F_n_RNAp	 ; % 	 218	 g_CDC25A_E2F_n_RNAp = g_CDC25A_E2F_n+RNAp
rV(219,1)	=	k_218*g_CDC25A_E2F_n_RNAp	 ; % 	 219	 g_CDC25A_E2F_n_RNAp = g_CDC25A+E2F_n+RNAp+mRNA_n_CDC25A
rV(220,1)	=	k_219*Export*mRNA_n_CDC25A	 ; % 	 220	 Export+mRNA_n_CDC25A = Export_mRNA_n_CDC25A
rV(221,1)	=	k_220*Export_mRNA_n_CDC25A	 ; % 	 221	 Export_mRNA_n_CDC25A = Export+mRNA_n_CDC25A
rV(222,1)	=	k_221*Export_mRNA_n_CDC25A	 ; % 	 222	 Export_mRNA_n_CDC25A = Export+mRNA_CDC25A
rV(223,1)	=	k_222*g_p21Cip1*RNAp	 ; % 	 223	 g_p21Cip1+RNAp = g_p21Cip1_RNAp
rV(224,1)	=	k_223*g_p21Cip1_RNAp	 ; % 	 224	 g_p21Cip1_RNAp = g_p21Cip1+RNAp
rV(225,1)	=	k_224*g_p21Cip1_RNAp	 ; % 	 225	 g_p21Cip1_RNAp = g_p21Cip1+RNAp+mRNA_n_p21Cip1
rV(226,1)	=	k_225*g_p21Cip1*ETS_p_n	 ; % 	 226	 g_p21Cip1+ETS_p_n = g_p21Cip1_ETS_p_n
rV(227,1)	=	k_226*g_p21Cip1_ETS_p_n	 ; % 	 227	 g_p21Cip1_ETS_p_n = g_p21Cip1+ETS_p_n
rV(228,1)	=	k_227*g_p21Cip1_ETS_p_n*RNAp	 ; % 	 228	 g_p21Cip1_ETS_p_n+RNAp = g_p21Cip1_ETS_p_n_RNAp
rV(229,1)	=	k_228*g_p21Cip1_ETS_p_n_RNAp	 ; % 	 229	 g_p21Cip1_ETS_p_n_RNAp = g_p21Cip1_ETS_p_n+RNAp
rV(230,1)	=	k_229*g_p21Cip1_ETS_p_n_RNAp	 ; % 	 230	 g_p21Cip1_ETS_p_n_RNAp = g_p21Cip1+ETS_p_n+RNAp+mRNA_n_p21Cip1
rV(231,1)	=	k_230*g_p21Cip1*E2F_n	 ; % 	 231	 g_p21Cip1+E2F_n = g_p21Cip1_E2F_n
rV(232,1)	=	k_231*g_p21Cip1_E2F_n	 ; % 	 232	 g_p21Cip1_E2F_n = g_p21Cip1+E2F_n
rV(233,1)	=	k_232*g_p21Cip1_E2F_n*RNAp	 ; % 	 233	 g_p21Cip1_E2F_n+RNAp = g_p21Cip1_E2F_n_RNAp
rV(234,1)	=	k_233*g_p21Cip1_E2F_n_RNAp	 ; % 	 234	 g_p21Cip1_E2F_n_RNAp = g_p21Cip1_E2F_n+RNAp
rV(235,1)	=	k_234*g_p21Cip1_E2F_n_RNAp	 ; % 	 235	 g_p21Cip1_E2F_n_RNAp = g_p21Cip1+E2F_n+RNAp+mRNA_n_p21Cip1
rV(236,1)	=	k_235*g_p21Cip1*AR_p_2_n	 ; % 	 236	 g_p21Cip1+AR_p_2_n = g_p21Cip1_AR_p_2_n
rV(237,1)	=	k_236*g_p21Cip1_AR_p_2_n	 ; % 	 237	 g_p21Cip1_AR_p_2_n = g_p21Cip1+AR_p_2_n
rV(238,1)	=	k_237*g_p21Cip1_AR_p_2_n*RNAp	 ; % 	 238	 g_p21Cip1_AR_p_2_n+RNAp = g_p21Cip1_AR_p_2_n_RNAp
rV(239,1)	=	k_238*g_p21Cip1_AR_p_2_n_RNAp	 ; % 	 239	 g_p21Cip1_AR_p_2_n_RNAp = g_p21Cip1_AR_p_2_n+RNAp
rV(240,1)	=	k_239*g_p21Cip1_AR_p_2_n_RNAp	 ; % 	 240	 g_p21Cip1_AR_p_2_n_RNAp = g_p21Cip1+AR_p_2_n+RNAp+mRNA_n_p21Cip1
rV(241,1)	=	k_240*g_p21Cip1*AR_p_DHT_2_n	 ; % 	 241	 g_p21Cip1+AR_p_DHT_2_n = g_p21Cip1_AR_p_DHT_2_n
rV(242,1)	=	k_241*g_p21Cip1_AR_p_DHT_2_n	 ; % 	 242	 g_p21Cip1_AR_p_DHT_2_n = g_p21Cip1+AR_p_DHT_2_n
rV(243,1)	=	k_242*g_p21Cip1_AR_p_DHT_2_n*RNAp	 ; % 	 243	 g_p21Cip1_AR_p_DHT_2_n+RNAp = g_p21Cip1_AR_p_DHT_2_n_RNAp
rV(244,1)	=	k_243*g_p21Cip1_AR_p_DHT_2_n_RNAp	 ; % 	 244	 g_p21Cip1_AR_p_DHT_2_n_RNAp = g_p21Cip1_AR_p_DHT_2_n+RNAp
rV(245,1)	=	k_244*g_p21Cip1_AR_p_DHT_2_n_RNAp	 ; % 	 245	 g_p21Cip1_AR_p_DHT_2_n_RNAp = g_p21Cip1+AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
rV(246,1)	=	k_245*g_p21Cip1*AR_p_DHT_AR_p_n	 ; % 	 246	 g_p21Cip1+AR_p_DHT_AR_p_n = g_p21Cip1_AR_p_DHT_AR_p_n
rV(247,1)	=	k_246*g_p21Cip1_AR_p_DHT_AR_p_n	 ; % 	 247	 g_p21Cip1_AR_p_DHT_AR_p_n = g_p21Cip1+AR_p_DHT_AR_p_n
rV(248,1)	=	k_247*g_p21Cip1_AR_p_DHT_AR_p_n*RNAp	 ; % 	 248	 g_p21Cip1_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_AR_p_DHT_AR_p_n_RNAp
rV(249,1)	=	k_248*g_p21Cip1_AR_p_DHT_AR_p_n_RNAp	 ; % 	 249	 g_p21Cip1_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_AR_p_DHT_AR_p_n+RNAp
rV(250,1)	=	k_249*g_p21Cip1_AR_p_DHT_AR_p_n_RNAp	 ; % 	 250	 g_p21Cip1_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
rV(251,1)	=	k_250*g_p21Cip1*CycE_AR_p_DHT_2_n	 ; % 	 251	 g_p21Cip1+CycE_AR_p_DHT_2_n = g_p21Cip1_CycE_AR_p_DHT_2_n
rV(252,1)	=	k_251*g_p21Cip1_CycE_AR_p_DHT_2_n	 ; % 	 252	 g_p21Cip1_CycE_AR_p_DHT_2_n = g_p21Cip1+CycE_AR_p_DHT_2_n
rV(253,1)	=	k_252*g_p21Cip1_CycE_AR_p_DHT_2_n*RNAp	 ; % 	 253	 g_p21Cip1_CycE_AR_p_DHT_2_n+RNAp = g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp
rV(254,1)	=	k_253*g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 254	 g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp = g_p21Cip1_CycE_AR_p_DHT_2_n+RNAp
rV(255,1)	=	k_254*g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 255	 g_p21Cip1_CycE_AR_p_DHT_2_n_RNAp = g_p21Cip1+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
rV(256,1)	=	k_255*g_p21Cip1*CycE_AR_p_2_n	 ; % 	 256	 g_p21Cip1+CycE_AR_p_2_n = g_p21Cip1_CycE_AR_p_2_n
rV(257,1)	=	k_256*g_p21Cip1_CycE_AR_p_2_n	 ; % 	 257	 g_p21Cip1_CycE_AR_p_2_n = g_p21Cip1+CycE_AR_p_2_n
rV(258,1)	=	k_257*g_p21Cip1_CycE_AR_p_2_n*RNAp	 ; % 	 258	 g_p21Cip1_CycE_AR_p_2_n+RNAp = g_p21Cip1_CycE_AR_p_2_n_RNAp
rV(259,1)	=	k_258*g_p21Cip1_CycE_AR_p_2_n_RNAp	 ; % 	 259	 g_p21Cip1_CycE_AR_p_2_n_RNAp = g_p21Cip1_CycE_AR_p_2_n+RNAp
rV(260,1)	=	k_259*g_p21Cip1_CycE_AR_p_2_n_RNAp	 ; % 	 260	 g_p21Cip1_CycE_AR_p_2_n_RNAp = g_p21Cip1+CycE_AR_p_2_n+RNAp+mRNA_n_p21Cip1
rV(261,1)	=	k_260*g_p21Cip1*CycE_AR_p_DHT_AR_p_n	 ; % 	 261	 g_p21Cip1+CycE_AR_p_DHT_AR_p_n = g_p21Cip1_CycE_AR_p_DHT_AR_p_n
rV(262,1)	=	k_261*g_p21Cip1_CycE_AR_p_DHT_AR_p_n	 ; % 	 262	 g_p21Cip1_CycE_AR_p_DHT_AR_p_n = g_p21Cip1+CycE_AR_p_DHT_AR_p_n
rV(263,1)	=	k_262*g_p21Cip1_CycE_AR_p_DHT_AR_p_n*RNAp	 ; % 	 263	 g_p21Cip1_CycE_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp
rV(264,1)	=	k_263*g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 264	 g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_CycE_AR_p_DHT_AR_p_n+RNAp
rV(265,1)	=	k_264*g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 265	 g_p21Cip1_CycE_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
rV(266,1)	=	k_265*g_p21Cip1*CDK6_AR_p_DHT_2_n	 ; % 	 266	 g_p21Cip1+CDK6_AR_p_DHT_2_n = g_p21Cip1_CDK6_AR_p_DHT_2_n
rV(267,1)	=	k_266*g_p21Cip1_CDK6_AR_p_DHT_2_n	 ; % 	 267	 g_p21Cip1_CDK6_AR_p_DHT_2_n = g_p21Cip1+CDK6_AR_p_DHT_2_n
rV(268,1)	=	k_267*g_p21Cip1_CDK6_AR_p_DHT_2_n*RNAp	 ; % 	 268	 g_p21Cip1_CDK6_AR_p_DHT_2_n+RNAp = g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp
rV(269,1)	=	k_268*g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 269	 g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp = g_p21Cip1_CDK6_AR_p_DHT_2_n+RNAp
rV(270,1)	=	k_269*g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 270	 g_p21Cip1_CDK6_AR_p_DHT_2_n_RNAp = g_p21Cip1+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_p21Cip1
rV(271,1)	=	k_270*g_p21Cip1*CDK6_AR_p_2_n	 ; % 	 271	 g_p21Cip1+CDK6_AR_p_2_n = g_p21Cip1_CDK6_AR_p_2_n
rV(272,1)	=	k_271*g_p21Cip1_CDK6_AR_p_2_n	 ; % 	 272	 g_p21Cip1_CDK6_AR_p_2_n = g_p21Cip1+CDK6_AR_p_2_n
rV(273,1)	=	k_272*g_p21Cip1_CDK6_AR_p_2_n*RNAp	 ; % 	 273	 g_p21Cip1_CDK6_AR_p_2_n+RNAp = g_p21Cip1_CDK6_AR_p_2_n_RNAp
rV(274,1)	=	k_273*g_p21Cip1_CDK6_AR_p_2_n_RNAp	 ; % 	 274	 g_p21Cip1_CDK6_AR_p_2_n_RNAp = g_p21Cip1_CDK6_AR_p_2_n+RNAp
rV(275,1)	=	k_274*g_p21Cip1_CDK6_AR_p_2_n_RNAp	 ; % 	 275	 g_p21Cip1_CDK6_AR_p_2_n_RNAp = g_p21Cip1+CDK6_AR_p_2_n+RNAp+mRNA_n_p21Cip1
rV(276,1)	=	k_275*g_p21Cip1*CDK6_AR_p_DHT_AR_p_n	 ; % 	 276	 g_p21Cip1+CDK6_AR_p_DHT_AR_p_n = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n
rV(277,1)	=	k_276*g_p21Cip1_CDK6_AR_p_DHT_AR_p_n	 ; % 	 277	 g_p21Cip1_CDK6_AR_p_DHT_AR_p_n = g_p21Cip1+CDK6_AR_p_DHT_AR_p_n
rV(278,1)	=	k_277*g_p21Cip1_CDK6_AR_p_DHT_AR_p_n*RNAp	 ; % 	 278	 g_p21Cip1_CDK6_AR_p_DHT_AR_p_n+RNAp = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp
rV(279,1)	=	k_278*g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 279	 g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1_CDK6_AR_p_DHT_AR_p_n+RNAp
rV(280,1)	=	k_279*g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 280	 g_p21Cip1_CDK6_AR_p_DHT_AR_p_n_RNAp = g_p21Cip1+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_p21Cip1
rV(281,1)	=	k_280*Export*mRNA_n_p21Cip1	 ; % 	 281	 Export+mRNA_n_p21Cip1 = Export_mRNA_n_p21Cip1
rV(282,1)	=	k_281*Export_mRNA_n_p21Cip1	 ; % 	 282	 Export_mRNA_n_p21Cip1 = Export+mRNA_n_p21Cip1
rV(283,1)	=	k_282*Export_mRNA_n_p21Cip1	 ; % 	 283	 Export_mRNA_n_p21Cip1 = Export+mRNA_p21Cip1
rV(284,1)	=	k_283*g_p27Kip1*RNAp	 ; % 	 284	 g_p27Kip1+RNAp = g_p27Kip1_RNAp
rV(285,1)	=	k_284*g_p27Kip1_RNAp	 ; % 	 285	 g_p27Kip1_RNAp = g_p27Kip1+RNAp
rV(286,1)	=	k_285*g_p27Kip1_RNAp	 ; % 	 286	 g_p27Kip1_RNAp = g_p27Kip1+RNAp+mRNA_n_p27Kip1
rV(287,1)	=	k_286*g_p27Kip1*AP1_p_n	 ; % 	 287	 g_p27Kip1+AP1_p_n = g_p27Kip1_AP1_p_n
rV(288,1)	=	k_287*g_p27Kip1_AP1_p_n	 ; % 	 288	 g_p27Kip1_AP1_p_n = g_p27Kip1+AP1_p_n
rV(289,1)	=	k_288*Export*mRNA_n_p27Kip1	 ; % 	 289	 Export+mRNA_n_p27Kip1 = Export_mRNA_n_p27Kip1
rV(290,1)	=	k_289*Export_mRNA_n_p27Kip1	 ; % 	 290	 Export_mRNA_n_p27Kip1 = Export+mRNA_n_p27Kip1
rV(291,1)	=	k_290*Export_mRNA_n_p27Kip1	 ; % 	 291	 Export_mRNA_n_p27Kip1 = Export+mRNA_p27Kip1
rV(292,1)	=	k_291*g_p16INK4*RNAp	 ; % 	 292	 g_p16INK4+RNAp = g_p16INK4_RNAp
rV(293,1)	=	k_292*g_p16INK4_RNAp	 ; % 	 293	 g_p16INK4_RNAp = g_p16INK4+RNAp
rV(294,1)	=	k_293*g_p16INK4_RNAp	 ; % 	 294	 g_p16INK4_RNAp = g_p16INK4+RNAp+mRNA_n_p16INK4
rV(295,1)	=	k_294*Export*mRNA_n_p16INK4	 ; % 	 295	 Export+mRNA_n_p16INK4 = Export_mRNA_n_p16INK4
rV(296,1)	=	k_295*Export_mRNA_n_p16INK4	 ; % 	 296	 Export_mRNA_n_p16INK4 = Export+mRNA_n_p16INK4
rV(297,1)	=	k_296*Export_mRNA_n_p16INK4	 ; % 	 297	 Export_mRNA_n_p16INK4 = Export+mRNA_p16INK4
rV(298,1)	=	k_297*g_PSA*RNAp	 ; % 	 298	 g_PSA+RNAp = g_PSA_RNAp
rV(299,1)	=	k_298*g_PSA_RNAp	 ; % 	 299	 g_PSA_RNAp = g_PSA+RNAp
rV(300,1)	=	k_299*g_PSA_RNAp	 ; % 	 300	 g_PSA_RNAp = g_PSA+RNAp+mRNA_n_PSA
rV(301,1)	=	k_300*g_PSA*AR_p_2_n	 ; % 	 301	 g_PSA+AR_p_2_n = g_PSA_AR_p_2_n
rV(302,1)	=	k_301*g_PSA_AR_p_2_n	 ; % 	 302	 g_PSA_AR_p_2_n = g_PSA+AR_p_2_n
rV(303,1)	=	k_302*g_PSA_AR_p_2_n*RNAp	 ; % 	 303	 g_PSA_AR_p_2_n+RNAp = g_PSA_AR_p_2_n_RNAp
rV(304,1)	=	k_303*g_PSA_AR_p_2_n_RNAp	 ; % 	 304	 g_PSA_AR_p_2_n_RNAp = g_PSA_AR_p_2_n+RNAp
rV(305,1)	=	k_304*g_PSA_AR_p_2_n_RNAp	 ; % 	 305	 g_PSA_AR_p_2_n_RNAp = g_PSA+AR_p_2_n+RNAp+mRNA_n_PSA
rV(306,1)	=	k_305*g_PSA*AR_p_DHT_2_n	 ; % 	 306	 g_PSA+AR_p_DHT_2_n = g_PSA_AR_p_DHT_2_n
rV(307,1)	=	k_306*g_PSA_AR_p_DHT_2_n	 ; % 	 307	 g_PSA_AR_p_DHT_2_n = g_PSA+AR_p_DHT_2_n
rV(308,1)	=	k_307*g_PSA_AR_p_DHT_2_n*RNAp	 ; % 	 308	 g_PSA_AR_p_DHT_2_n+RNAp = g_PSA_AR_p_DHT_2_n_RNAp
rV(309,1)	=	k_308*g_PSA_AR_p_DHT_2_n_RNAp	 ; % 	 309	 g_PSA_AR_p_DHT_2_n_RNAp = g_PSA_AR_p_DHT_2_n+RNAp
rV(310,1)	=	k_309*g_PSA_AR_p_DHT_2_n_RNAp	 ; % 	 310	 g_PSA_AR_p_DHT_2_n_RNAp = g_PSA+AR_p_DHT_2_n+RNAp+mRNA_n_PSA
rV(311,1)	=	k_310*g_PSA*AR_p_DHT_AR_p_n	 ; % 	 311	 g_PSA+AR_p_DHT_AR_p_n = g_PSA_AR_p_DHT_AR_p_n
rV(312,1)	=	k_311*g_PSA_AR_p_DHT_AR_p_n	 ; % 	 312	 g_PSA_AR_p_DHT_AR_p_n = g_PSA+AR_p_DHT_AR_p_n
rV(313,1)	=	k_312*g_PSA_AR_p_DHT_AR_p_n*RNAp	 ; % 	 313	 g_PSA_AR_p_DHT_AR_p_n+RNAp = g_PSA_AR_p_DHT_AR_p_n_RNAp
rV(314,1)	=	k_313*g_PSA_AR_p_DHT_AR_p_n_RNAp	 ; % 	 314	 g_PSA_AR_p_DHT_AR_p_n_RNAp = g_PSA_AR_p_DHT_AR_p_n+RNAp
rV(315,1)	=	k_314*g_PSA_AR_p_DHT_AR_p_n_RNAp	 ; % 	 315	 g_PSA_AR_p_DHT_AR_p_n_RNAp = g_PSA+AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
rV(316,1)	=	k_315*g_PSA*CycE_AR_p_DHT_2_n	 ; % 	 316	 g_PSA+CycE_AR_p_DHT_2_n = g_PSA_CycE_AR_p_DHT_2_n
rV(317,1)	=	k_316*g_PSA_CycE_AR_p_DHT_2_n	 ; % 	 317	 g_PSA_CycE_AR_p_DHT_2_n = g_PSA+CycE_AR_p_DHT_2_n
rV(318,1)	=	k_317*g_PSA_CycE_AR_p_DHT_2_n*RNAp	 ; % 	 318	 g_PSA_CycE_AR_p_DHT_2_n+RNAp = g_PSA_CycE_AR_p_DHT_2_n_RNAp
rV(319,1)	=	k_318*g_PSA_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 319	 g_PSA_CycE_AR_p_DHT_2_n_RNAp = g_PSA_CycE_AR_p_DHT_2_n+RNAp
rV(320,1)	=	k_319*g_PSA_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 320	 g_PSA_CycE_AR_p_DHT_2_n_RNAp = g_PSA+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_PSA
rV(321,1)	=	k_320*g_PSA*CycE_AR_p_2_n	 ; % 	 321	 g_PSA+CycE_AR_p_2_n = g_PSA_CycE_AR_p_2_n
rV(322,1)	=	k_321*g_PSA_CycE_AR_p_2_n	 ; % 	 322	 g_PSA_CycE_AR_p_2_n = g_PSA+CycE_AR_p_2_n
rV(323,1)	=	k_322*g_PSA_CycE_AR_p_2_n*RNAp	 ; % 	 323	 g_PSA_CycE_AR_p_2_n+RNAp = g_PSA_CycE_AR_p_2_n_RNAp
rV(324,1)	=	k_323*g_PSA_CycE_AR_p_2_n_RNAp	 ; % 	 324	 g_PSA_CycE_AR_p_2_n_RNAp = g_PSA_CycE_AR_p_2_n+RNAp
rV(325,1)	=	k_324*g_PSA_CycE_AR_p_2_n_RNAp	 ; % 	 325	 g_PSA_CycE_AR_p_2_n_RNAp = g_PSA+CycE_AR_p_2_n+RNAp+mRNA_n_PSA
rV(326,1)	=	k_325*g_PSA*CycE_AR_p_DHT_AR_p_n	 ; % 	 326	 g_PSA+CycE_AR_p_DHT_AR_p_n = g_PSA_CycE_AR_p_DHT_AR_p_n
rV(327,1)	=	k_326*g_PSA_CycE_AR_p_DHT_AR_p_n	 ; % 	 327	 g_PSA_CycE_AR_p_DHT_AR_p_n = g_PSA+CycE_AR_p_DHT_AR_p_n
rV(328,1)	=	k_327*g_PSA_CycE_AR_p_DHT_AR_p_n*RNAp	 ; % 	 328	 g_PSA_CycE_AR_p_DHT_AR_p_n+RNAp = g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp
rV(329,1)	=	k_328*g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 329	 g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp = g_PSA_CycE_AR_p_DHT_AR_p_n+RNAp
rV(330,1)	=	k_329*g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 330	 g_PSA_CycE_AR_p_DHT_AR_p_n_RNAp = g_PSA+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
rV(331,1)	=	k_330*g_PSA*CDK6_AR_p_DHT_2_n	 ; % 	 331	 g_PSA+CDK6_AR_p_DHT_2_n = g_PSA_CDK6_AR_p_DHT_2_n
rV(332,1)	=	k_331*g_PSA_CDK6_AR_p_DHT_2_n	 ; % 	 332	 g_PSA_CDK6_AR_p_DHT_2_n = g_PSA+CDK6_AR_p_DHT_2_n
rV(333,1)	=	k_332*g_PSA_CDK6_AR_p_DHT_2_n*RNAp	 ; % 	 333	 g_PSA_CDK6_AR_p_DHT_2_n+RNAp = g_PSA_CDK6_AR_p_DHT_2_n_RNAp
rV(334,1)	=	k_333*g_PSA_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 334	 g_PSA_CDK6_AR_p_DHT_2_n_RNAp = g_PSA_CDK6_AR_p_DHT_2_n+RNAp
rV(335,1)	=	k_334*g_PSA_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 335	 g_PSA_CDK6_AR_p_DHT_2_n_RNAp = g_PSA+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_PSA
rV(336,1)	=	k_335*g_PSA*CDK6_AR_p_2_n	 ; % 	 336	 g_PSA+CDK6_AR_p_2_n = g_PSA_CDK6_AR_p_2_n
rV(337,1)	=	k_336*g_PSA_CDK6_AR_p_2_n	 ; % 	 337	 g_PSA_CDK6_AR_p_2_n = g_PSA+CDK6_AR_p_2_n
rV(338,1)	=	k_337*g_PSA_CDK6_AR_p_2_n*RNAp	 ; % 	 338	 g_PSA_CDK6_AR_p_2_n+RNAp = g_PSA_CDK6_AR_p_2_n_RNAp
rV(339,1)	=	k_338*g_PSA_CDK6_AR_p_2_n_RNAp	 ; % 	 339	 g_PSA_CDK6_AR_p_2_n_RNAp = g_PSA_CDK6_AR_p_2_n+RNAp
rV(340,1)	=	k_339*g_PSA_CDK6_AR_p_2_n_RNAp	 ; % 	 340	 g_PSA_CDK6_AR_p_2_n_RNAp = g_PSA+CDK6_AR_p_2_n+RNAp+mRNA_n_PSA
rV(341,1)	=	k_340*g_PSA*CDK6_AR_p_DHT_AR_p_n	 ; % 	 341	 g_PSA+CDK6_AR_p_DHT_AR_p_n = g_PSA_CDK6_AR_p_DHT_AR_p_n
rV(342,1)	=	k_341*g_PSA_CDK6_AR_p_DHT_AR_p_n	 ; % 	 342	 g_PSA_CDK6_AR_p_DHT_AR_p_n = g_PSA+CDK6_AR_p_DHT_AR_p_n
rV(343,1)	=	k_342*g_PSA_CDK6_AR_p_DHT_AR_p_n*RNAp	 ; % 	 343	 g_PSA_CDK6_AR_p_DHT_AR_p_n+RNAp = g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp
rV(344,1)	=	k_343*g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 344	 g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp = g_PSA_CDK6_AR_p_DHT_AR_p_n+RNAp
rV(345,1)	=	k_344*g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 345	 g_PSA_CDK6_AR_p_DHT_AR_p_n_RNAp = g_PSA+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_PSA
rV(346,1)	=	k_345*Export*mRNA_n_PSA	 ; % 	 346	 Export+mRNA_n_PSA = Export_mRNA_n_PSA
rV(347,1)	=	k_346*Export_mRNA_n_PSA	 ; % 	 347	 Export_mRNA_n_PSA = Export+mRNA_n_PSA
rV(348,1)	=	k_347*Export_mRNA_n_PSA	 ; % 	 348	 Export_mRNA_n_PSA = Export+mRNA_PSA
rV(349,1)	=	k_348*g_PAcP*RNAp	 ; % 	 349	 g_PAcP+RNAp = g_PAcP_RNAp
rV(350,1)	=	k_349*g_PAcP_RNAp	 ; % 	 350	 g_PAcP_RNAp = g_PAcP+RNAp
rV(351,1)	=	k_350*g_PAcP_RNAp	 ; % 	 351	 g_PAcP_RNAp = g_PAcP+RNAp+mRNA_n_PAcP
rV(352,1)	=	k_351*g_PAcP*AR_p_2_n	 ; % 	 352	 g_PAcP+AR_p_2_n = g_PAcP_AR_p_2_n
rV(353,1)	=	k_352*g_PAcP_AR_p_2_n	 ; % 	 353	 g_PAcP_AR_p_2_n = g_PAcP+AR_p_2_n
rV(354,1)	=	k_353*g_PAcP*AR_p_DHT_2_n	 ; % 	 354	 g_PAcP+AR_p_DHT_2_n = g_PAcP_AR_p_DHT_2_n
rV(355,1)	=	k_354*g_PAcP_AR_p_DHT_2_n	 ; % 	 355	 g_PAcP_AR_p_DHT_2_n = g_PAcP+AR_p_DHT_2_n
rV(356,1)	=	k_355*g_PAcP*AR_p_DHT_AR_p_n	 ; % 	 356	 g_PAcP+AR_p_DHT_AR_p_n = g_PAcP_AR_p_DHT_AR_p_n
rV(357,1)	=	k_356*g_PAcP_AR_p_DHT_AR_p_n	 ; % 	 357	 g_PAcP_AR_p_DHT_AR_p_n = g_PAcP+AR_p_DHT_AR_p_n
rV(358,1)	=	k_357*g_PAcP*CycE_AR_p_DHT_2_n	 ; % 	 358	 g_PAcP+CycE_AR_p_DHT_2_n = g_PAcP_CycE_AR_p_DHT_2_n
rV(359,1)	=	k_358*g_PAcP_CycE_AR_p_DHT_2_n	 ; % 	 359	 g_PAcP_CycE_AR_p_DHT_2_n = g_PAcP+CycE_AR_p_DHT_2_n
rV(360,1)	=	k_359*g_PAcP*CycE_AR_p_2_n	 ; % 	 360	 g_PAcP+CycE_AR_p_2_n = g_PAcP_CycE_AR_p_2_n
rV(361,1)	=	k_360*g_PAcP_CycE_AR_p_2_n	 ; % 	 361	 g_PAcP_CycE_AR_p_2_n = g_PAcP+CycE_AR_p_2_n
rV(362,1)	=	k_361*g_PAcP*CycE_AR_p_DHT_AR_p_n	 ; % 	 362	 g_PAcP+CycE_AR_p_DHT_AR_p_n = g_PAcP_CycE_AR_p_DHT_AR_p_n
rV(363,1)	=	k_362*g_PAcP_CycE_AR_p_DHT_AR_p_n	 ; % 	 363	 g_PAcP_CycE_AR_p_DHT_AR_p_n = g_PAcP+CycE_AR_p_DHT_AR_p_n
rV(364,1)	=	k_363*g_PAcP*CDK6_AR_p_DHT_2_n	 ; % 	 364	 g_PAcP+CDK6_AR_p_DHT_2_n = g_PAcP_CDK6_AR_p_DHT_2_n
rV(365,1)	=	k_364*g_PAcP_CDK6_AR_p_DHT_2_n	 ; % 	 365	 g_PAcP_CDK6_AR_p_DHT_2_n = g_PAcP+CDK6_AR_p_DHT_2_n
rV(366,1)	=	k_365*g_PAcP*CDK6_AR_p_2_n	 ; % 	 366	 g_PAcP+CDK6_AR_p_2_n = g_PAcP_CDK6_AR_p_2_n
rV(367,1)	=	k_366*g_PAcP_CDK6_AR_p_2_n	 ; % 	 367	 g_PAcP_CDK6_AR_p_2_n = g_PAcP+CDK6_AR_p_2_n
rV(368,1)	=	k_367*g_PAcP*CDK6_AR_p_DHT_AR_p_n	 ; % 	 368	 g_PAcP+CDK6_AR_p_DHT_AR_p_n = g_PAcP_CDK6_AR_p_DHT_AR_p_n
rV(369,1)	=	k_368*g_PAcP_CDK6_AR_p_DHT_AR_p_n	 ; % 	 369	 g_PAcP_CDK6_AR_p_DHT_AR_p_n = g_PAcP+CDK6_AR_p_DHT_AR_p_n
rV(370,1)	=	k_369*Export*mRNA_n_PAcP	 ; % 	 370	 Export+mRNA_n_PAcP = Export_mRNA_n_PAcP
rV(371,1)	=	k_370*Export_mRNA_n_PAcP	 ; % 	 371	 Export_mRNA_n_PAcP = Export+mRNA_n_PAcP
rV(372,1)	=	k_371*Export_mRNA_n_PAcP	 ; % 	 372	 Export_mRNA_n_PAcP = Export+mRNA_PAcP
rV(373,1)	=	k_372*g_AR*RNAp	 ; % 	 373	 g_AR+RNAp = g_AR_RNAp
rV(374,1)	=	k_373*g_AR_RNAp	 ; % 	 374	 g_AR_RNAp = g_AR+RNAp
rV(375,1)	=	k_374*g_AR_RNAp	 ; % 	 375	 g_AR_RNAp = g_AR+RNAp+mRNA_n_AR
rV(376,1)	=	k_375*g_AR*AR_p_2_n	 ; % 	 376	 g_AR+AR_p_2_n = g_AR_AR_p_2_n
rV(377,1)	=	k_376*g_AR_AR_p_2_n	 ; % 	 377	 g_AR_AR_p_2_n = g_AR+AR_p_2_n
rV(378,1)	=	k_377*g_AR_AR_p_2_n*RNAp	 ; % 	 378	 g_AR_AR_p_2_n+RNAp = g_AR_AR_p_2_n_RNAp
rV(379,1)	=	k_378*g_AR_AR_p_2_n_RNAp	 ; % 	 379	 g_AR_AR_p_2_n_RNAp = g_AR_AR_p_2_n+RNAp
rV(380,1)	=	k_379*g_AR_AR_p_2_n_RNAp	 ; % 	 380	 g_AR_AR_p_2_n_RNAp = g_AR+AR_p_2_n+RNAp+mRNA_n_AR
rV(381,1)	=	k_380*g_AR*AR_p_DHT_2_n	 ; % 	 381	 g_AR+AR_p_DHT_2_n = g_AR_AR_p_DHT_2_n
rV(382,1)	=	k_381*g_AR_AR_p_DHT_2_n	 ; % 	 382	 g_AR_AR_p_DHT_2_n = g_AR+AR_p_DHT_2_n
rV(383,1)	=	k_382*g_AR_AR_p_DHT_2_n*RNAp	 ; % 	 383	 g_AR_AR_p_DHT_2_n+RNAp = g_AR_AR_p_DHT_2_n_RNAp
rV(384,1)	=	k_383*g_AR_AR_p_DHT_2_n_RNAp	 ; % 	 384	 g_AR_AR_p_DHT_2_n_RNAp = g_AR_AR_p_DHT_2_n+RNAp
rV(385,1)	=	k_384*g_AR_AR_p_DHT_2_n_RNAp	 ; % 	 385	 g_AR_AR_p_DHT_2_n_RNAp = g_AR+AR_p_DHT_2_n+RNAp+mRNA_n_AR
rV(386,1)	=	k_385*g_AR*AR_p_DHT_AR_p_n	 ; % 	 386	 g_AR+AR_p_DHT_AR_p_n = g_AR_AR_p_DHT_AR_p_n
rV(387,1)	=	k_386*g_AR_AR_p_DHT_AR_p_n	 ; % 	 387	 g_AR_AR_p_DHT_AR_p_n = g_AR+AR_p_DHT_AR_p_n
rV(388,1)	=	k_387*g_AR_AR_p_DHT_AR_p_n*RNAp	 ; % 	 388	 g_AR_AR_p_DHT_AR_p_n+RNAp = g_AR_AR_p_DHT_AR_p_n_RNAp
rV(389,1)	=	k_388*g_AR_AR_p_DHT_AR_p_n_RNAp	 ; % 	 389	 g_AR_AR_p_DHT_AR_p_n_RNAp = g_AR_AR_p_DHT_AR_p_n+RNAp
rV(390,1)	=	k_389*g_AR_AR_p_DHT_AR_p_n_RNAp	 ; % 	 390	 g_AR_AR_p_DHT_AR_p_n_RNAp = g_AR+AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
rV(391,1)	=	k_390*g_AR*CycE_AR_p_DHT_2_n	 ; % 	 391	 g_AR+CycE_AR_p_DHT_2_n = g_AR_CycE_AR_p_DHT_2_n
rV(392,1)	=	k_391*g_AR_CycE_AR_p_DHT_2_n	 ; % 	 392	 g_AR_CycE_AR_p_DHT_2_n = g_AR+CycE_AR_p_DHT_2_n
rV(393,1)	=	k_392*g_AR_CycE_AR_p_DHT_2_n*RNAp	 ; % 	 393	 g_AR_CycE_AR_p_DHT_2_n+RNAp = g_AR_CycE_AR_p_DHT_2_n_RNAp
rV(394,1)	=	k_393*g_AR_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 394	 g_AR_CycE_AR_p_DHT_2_n_RNAp = g_AR_CycE_AR_p_DHT_2_n+RNAp
rV(395,1)	=	k_394*g_AR_CycE_AR_p_DHT_2_n_RNAp	 ; % 	 395	 g_AR_CycE_AR_p_DHT_2_n_RNAp = g_AR+CycE_AR_p_DHT_2_n+RNAp+mRNA_n_AR
rV(396,1)	=	k_395*g_AR*CycE_AR_p_2_n	 ; % 	 396	 g_AR+CycE_AR_p_2_n = g_AR_CycE_AR_p_2_n
rV(397,1)	=	k_396*g_AR_CycE_AR_p_2_n	 ; % 	 397	 g_AR_CycE_AR_p_2_n = g_AR+CycE_AR_p_2_n
rV(398,1)	=	k_397*g_AR_CycE_AR_p_2_n*RNAp	 ; % 	 398	 g_AR_CycE_AR_p_2_n+RNAp = g_AR_CycE_AR_p_2_n_RNAp
rV(399,1)	=	k_398*g_AR_CycE_AR_p_2_n_RNAp	 ; % 	 399	 g_AR_CycE_AR_p_2_n_RNAp = g_AR_CycE_AR_p_2_n+RNAp
rV(400,1)	=	k_399*g_AR_CycE_AR_p_2_n_RNAp	 ; % 	 400	 g_AR_CycE_AR_p_2_n_RNAp = g_AR+CycE_AR_p_2_n+RNAp+mRNA_n_AR
rV(401,1)	=	k_400*g_AR*CycE_AR_p_DHT_AR_p_n	 ; % 	 401	 g_AR+CycE_AR_p_DHT_AR_p_n = g_AR_CycE_AR_p_DHT_AR_p_n
rV(402,1)	=	k_401*g_AR_CycE_AR_p_DHT_AR_p_n	 ; % 	 402	 g_AR_CycE_AR_p_DHT_AR_p_n = g_AR+CycE_AR_p_DHT_AR_p_n
rV(403,1)	=	k_402*g_AR_CycE_AR_p_DHT_AR_p_n*RNAp	 ; % 	 403	 g_AR_CycE_AR_p_DHT_AR_p_n+RNAp = g_AR_CycE_AR_p_DHT_AR_p_n_RNAp
rV(404,1)	=	k_403*g_AR_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 404	 g_AR_CycE_AR_p_DHT_AR_p_n_RNAp = g_AR_CycE_AR_p_DHT_AR_p_n+RNAp
rV(405,1)	=	k_404*g_AR_CycE_AR_p_DHT_AR_p_n_RNAp	 ; % 	 405	 g_AR_CycE_AR_p_DHT_AR_p_n_RNAp = g_AR+CycE_AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
rV(406,1)	=	k_405*g_AR*CDK6_AR_p_DHT_2_n	 ; % 	 406	 g_AR+CDK6_AR_p_DHT_2_n = g_AR_CDK6_AR_p_DHT_2_n
rV(407,1)	=	k_406*g_AR_CDK6_AR_p_DHT_2_n	 ; % 	 407	 g_AR_CDK6_AR_p_DHT_2_n = g_AR+CDK6_AR_p_DHT_2_n
rV(408,1)	=	k_407*g_AR_CDK6_AR_p_DHT_2_n*RNAp	 ; % 	 408	 g_AR_CDK6_AR_p_DHT_2_n+RNAp = g_AR_CDK6_AR_p_DHT_2_n_RNAp
rV(409,1)	=	k_408*g_AR_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 409	 g_AR_CDK6_AR_p_DHT_2_n_RNAp = g_AR_CDK6_AR_p_DHT_2_n+RNAp
rV(410,1)	=	k_409*g_AR_CDK6_AR_p_DHT_2_n_RNAp	 ; % 	 410	 g_AR_CDK6_AR_p_DHT_2_n_RNAp = g_AR+CDK6_AR_p_DHT_2_n+RNAp+mRNA_n_AR
rV(411,1)	=	k_410*g_AR*CDK6_AR_p_2_n	 ; % 	 411	 g_AR+CDK6_AR_p_2_n = g_AR_CDK6_AR_p_2_n
rV(412,1)	=	k_411*g_AR_CDK6_AR_p_2_n	 ; % 	 412	 g_AR_CDK6_AR_p_2_n = g_AR+CDK6_AR_p_2_n
rV(413,1)	=	k_412*g_AR_CDK6_AR_p_2_n*RNAp	 ; % 	 413	 g_AR_CDK6_AR_p_2_n+RNAp = g_AR_CDK6_AR_p_2_n_RNAp
rV(414,1)	=	k_413*g_AR_CDK6_AR_p_2_n_RNAp	 ; % 	 414	 g_AR_CDK6_AR_p_2_n_RNAp = g_AR_CDK6_AR_p_2_n+RNAp
rV(415,1)	=	k_414*g_AR_CDK6_AR_p_2_n_RNAp	 ; % 	 415	 g_AR_CDK6_AR_p_2_n_RNAp = g_AR+CDK6_AR_p_2_n+RNAp+mRNA_n_AR
rV(416,1)	=	k_415*g_AR*CDK6_AR_p_DHT_AR_p_n	 ; % 	 416	 g_AR+CDK6_AR_p_DHT_AR_p_n = g_AR_CDK6_AR_p_DHT_AR_p_n
rV(417,1)	=	k_416*g_AR_CDK6_AR_p_DHT_AR_p_n	 ; % 	 417	 g_AR_CDK6_AR_p_DHT_AR_p_n = g_AR+CDK6_AR_p_DHT_AR_p_n
rV(418,1)	=	k_417*g_AR_CDK6_AR_p_DHT_AR_p_n*RNAp	 ; % 	 418	 g_AR_CDK6_AR_p_DHT_AR_p_n+RNAp = g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp
rV(419,1)	=	k_418*g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 419	 g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp = g_AR_CDK6_AR_p_DHT_AR_p_n+RNAp
rV(420,1)	=	k_419*g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp	 ; % 	 420	 g_AR_CDK6_AR_p_DHT_AR_p_n_RNAp = g_AR+CDK6_AR_p_DHT_AR_p_n+RNAp+mRNA_n_AR
rV(421,1)	=	k_420*g_AR*E2F_n	 ; % 	 421	 g_AR+E2F_n = g_AR_E2F_n
rV(422,1)	=	k_421*g_AR_E2F_n	 ; % 	 422	 g_AR_E2F_n = g_AR+E2F_n
rV(423,1)	=	k_422*Export*mRNA_n_AR	 ; % 	 423	 Export+mRNA_n_AR = Export_mRNA_n_AR
rV(424,1)	=	k_423*Export_mRNA_n_AR	 ; % 	 424	 Export_mRNA_n_AR = Export+mRNA_n_AR
rV(425,1)	=	k_424*Export_mRNA_n_AR	 ; % 	 425	 Export_mRNA_n_AR = Export+mRNA_AR
rV(426,1)	=	k_425*mRNA_ETS	 ; % 	 426	 mRNA_ETS = []
rV(427,1)	=	k_426*mRNA_AP1	 ; % 	 427	 mRNA_AP1 = []
rV(428,1)	=	k_427*mRNA_CycD1a	 ; % 	 428	 mRNA_CycD1a = []
rV(429,1)	=	k_428*mRNA_CycD1b	 ; % 	 429	 mRNA_CycD1b = []
rV(430,1)	=	k_429*mRNA_CycE	 ; % 	 430	 mRNA_CycE = []
rV(431,1)	=	k_430*mRNA_Rb	 ; % 	 431	 mRNA_Rb = []
rV(432,1)	=	k_431*mRNA_E2F	 ; % 	 432	 mRNA_E2F = []
rV(433,1)	=	k_432*mRNA_CDC25A	 ; % 	 433	 mRNA_CDC25A = []
rV(434,1)	=	k_433*mRNA_p21Cip1	 ; % 	 434	 mRNA_p21Cip1 = []
rV(435,1)	=	k_434*mRNA_p27Kip1	 ; % 	 435	 mRNA_p27Kip1 = []
rV(436,1)	=	k_435*mRNA_p16INK4	 ; % 	 436	 mRNA_p16INK4 = []
rV(437,1)	=	k_436*mRNA_PSA	 ; % 	 437	 mRNA_PSA = []
rV(438,1)	=	k_437*mRNA_PAcP	 ; % 	 438	 mRNA_PAcP = []
rV(439,1)	=	k_438*mRNA_AR	 ; % 	 439	 mRNA_AR = []
rV(440,1)	=	k_439*mRNA_ETS*eIF4E	 ; % 	 440	 mRNA_ETS+eIF4E = mRNA_ETS_eIF4E
rV(441,1)	=	k_440*mRNA_ETS_eIF4E	 ; % 	 441	 mRNA_ETS_eIF4E = mRNA_ETS+eIF4E
rV(442,1)	=	k_441*mRNA_ETS_eIF4E*Ribo40S	 ; % 	 442	 mRNA_ETS_eIF4E+Ribo40S = mRNA_ETS_eIF4E_Ribo40S
rV(443,1)	=	k_442*mRNA_ETS_eIF4E_Ribo40S	 ; % 	 443	 mRNA_ETS_eIF4E_Ribo40S = mRNA_ETS_eIF4E+Ribo40S
rV(444,1)	=	k_443*mRNA_ETS_eIF4E_Ribo40S*Ribo60S	 ; % 	 444	 mRNA_ETS_eIF4E_Ribo40S+Ribo60S = mRNA_ETS_eIF4E_Ribo40S_Ribo60S
rV(445,1)	=	k_444*mRNA_ETS_eIF4E_Ribo40S_Ribo60S	 ; % 	 445	 mRNA_ETS_eIF4E_Ribo40S_Ribo60S = mRNA_ETS_eIF4E_Ribo40S+Ribo60S
rV(446,1)	=	k_445*mRNA_ETS_eIF4E_Ribo40S_Ribo60S	 ; % 	 446	 mRNA_ETS_eIF4E_Ribo40S_Ribo60S = mRNA_ETS_Ribo40S_Ribo60S+eIF4E
rV(447,1)	=	k_446*mRNA_ETS_Ribo40S_Ribo60S	 ; % 	 447	 mRNA_ETS_Ribo40S_Ribo60S = mRNA_ETS_Ribo40S_Ribo60S_Elong
rV(448,1)	=	k_447*mRNA_ETS_Ribo40S_Ribo60S_Elong	 ; % 	 448	 mRNA_ETS_Ribo40S_Ribo60S_Elong = ETS+Ribo40S+Ribo60S+mRNA_ETS
rV(449,1)	=	k_448*mRNA_AP1*eIF4E	 ; % 	 449	 mRNA_AP1+eIF4E = mRNA_AP1_eIF4E
rV(450,1)	=	k_449*mRNA_AP1_eIF4E	 ; % 	 450	 mRNA_AP1_eIF4E = mRNA_AP1+eIF4E
rV(451,1)	=	k_450*mRNA_AP1_eIF4E*Ribo40S	 ; % 	 451	 mRNA_AP1_eIF4E+Ribo40S = mRNA_AP1_eIF4E_Ribo40S
rV(452,1)	=	k_451*mRNA_AP1_eIF4E_Ribo40S	 ; % 	 452	 mRNA_AP1_eIF4E_Ribo40S = mRNA_AP1_eIF4E+Ribo40S
rV(453,1)	=	k_452*mRNA_AP1_eIF4E_Ribo40S*Ribo60S	 ; % 	 453	 mRNA_AP1_eIF4E_Ribo40S+Ribo60S = mRNA_AP1_eIF4E_Ribo40S_Ribo60S
rV(454,1)	=	k_453*mRNA_AP1_eIF4E_Ribo40S_Ribo60S	 ; % 	 454	 mRNA_AP1_eIF4E_Ribo40S_Ribo60S = mRNA_AP1_eIF4E_Ribo40S+Ribo60S
rV(455,1)	=	k_454*mRNA_AP1_eIF4E_Ribo40S_Ribo60S	 ; % 	 455	 mRNA_AP1_eIF4E_Ribo40S_Ribo60S = mRNA_AP1_Ribo40S_Ribo60S+eIF4E
rV(456,1)	=	k_455*mRNA_AP1_Ribo40S_Ribo60S	 ; % 	 456	 mRNA_AP1_Ribo40S_Ribo60S = mRNA_AP1_Ribo40S_Ribo60S_Elong
rV(457,1)	=	k_456*mRNA_AP1_Ribo40S_Ribo60S_Elong	 ; % 	 457	 mRNA_AP1_Ribo40S_Ribo60S_Elong = AP1+Ribo40S+Ribo60S+mRNA_AP1
rV(458,1)	=	k_457*mRNA_CycD1a*eIF4E	 ; % 	 458	 mRNA_CycD1a+eIF4E = mRNA_CycD1a_eIF4E
rV(459,1)	=	k_458*mRNA_CycD1a_eIF4E	 ; % 	 459	 mRNA_CycD1a_eIF4E = mRNA_CycD1a+eIF4E
rV(460,1)	=	k_459*mRNA_CycD1a_eIF4E*Ribo40S	 ; % 	 460	 mRNA_CycD1a_eIF4E+Ribo40S = mRNA_CycD1a_eIF4E_Ribo40S
rV(461,1)	=	k_460*mRNA_CycD1a_eIF4E_Ribo40S	 ; % 	 461	 mRNA_CycD1a_eIF4E_Ribo40S = mRNA_CycD1a_eIF4E+Ribo40S
rV(462,1)	=	k_461*mRNA_CycD1a_eIF4E_Ribo40S*Ribo60S	 ; % 	 462	 mRNA_CycD1a_eIF4E_Ribo40S+Ribo60S = mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S
rV(463,1)	=	k_462*mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S	 ; % 	 463	 mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1a_eIF4E_Ribo40S+Ribo60S
rV(464,1)	=	k_463*mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S	 ; % 	 464	 mRNA_CycD1a_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1a_Ribo40S_Ribo60S+eIF4E
rV(465,1)	=	k_464*mRNA_CycD1a_Ribo40S_Ribo60S	 ; % 	 465	 mRNA_CycD1a_Ribo40S_Ribo60S = mRNA_CycD1a_Ribo40S_Ribo60S_Elong
rV(466,1)	=	k_465*mRNA_CycD1a_Ribo40S_Ribo60S_Elong	 ; % 	 466	 mRNA_CycD1a_Ribo40S_Ribo60S_Elong = CycD1a+Ribo40S+Ribo60S+mRNA_CycD1a
rV(467,1)	=	k_466*mRNA_CycD1b*eIF4E	 ; % 	 467	 mRNA_CycD1b+eIF4E = mRNA_CycD1b_eIF4E
rV(468,1)	=	k_467*mRNA_CycD1b_eIF4E	 ; % 	 468	 mRNA_CycD1b_eIF4E = mRNA_CycD1b+eIF4E
rV(469,1)	=	k_468*mRNA_CycD1b_eIF4E*Ribo40S	 ; % 	 469	 mRNA_CycD1b_eIF4E+Ribo40S = mRNA_CycD1b_eIF4E_Ribo40S
rV(470,1)	=	k_469*mRNA_CycD1b_eIF4E_Ribo40S	 ; % 	 470	 mRNA_CycD1b_eIF4E_Ribo40S = mRNA_CycD1b_eIF4E+Ribo40S
rV(471,1)	=	k_470*mRNA_CycD1b_eIF4E_Ribo40S*Ribo60S	 ; % 	 471	 mRNA_CycD1b_eIF4E_Ribo40S+Ribo60S = mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S
rV(472,1)	=	k_471*mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S	 ; % 	 472	 mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1b_eIF4E_Ribo40S+Ribo60S
rV(473,1)	=	k_472*mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S	 ; % 	 473	 mRNA_CycD1b_eIF4E_Ribo40S_Ribo60S = mRNA_CycD1b_Ribo40S_Ribo60S+eIF4E
rV(474,1)	=	k_473*mRNA_CycD1b_Ribo40S_Ribo60S	 ; % 	 474	 mRNA_CycD1b_Ribo40S_Ribo60S = mRNA_CycD1b_Ribo40S_Ribo60S_Elong
rV(475,1)	=	k_474*mRNA_CycD1b_Ribo40S_Ribo60S_Elong	 ; % 	 475	 mRNA_CycD1b_Ribo40S_Ribo60S_Elong = CycD1b+Ribo40S+Ribo60S+mRNA_CycD1b
rV(476,1)	=	k_475*mRNA_CycE*eIF4E	 ; % 	 476	 mRNA_CycE+eIF4E = mRNA_CycE_eIF4E
rV(477,1)	=	k_476*mRNA_CycE_eIF4E	 ; % 	 477	 mRNA_CycE_eIF4E = mRNA_CycE+eIF4E
rV(478,1)	=	k_477*mRNA_CycE_eIF4E*Ribo40S	 ; % 	 478	 mRNA_CycE_eIF4E+Ribo40S = mRNA_CycE_eIF4E_Ribo40S
rV(479,1)	=	k_478*mRNA_CycE_eIF4E_Ribo40S	 ; % 	 479	 mRNA_CycE_eIF4E_Ribo40S = mRNA_CycE_eIF4E+Ribo40S
rV(480,1)	=	k_479*mRNA_CycE_eIF4E_Ribo40S*Ribo60S	 ; % 	 480	 mRNA_CycE_eIF4E_Ribo40S+Ribo60S = mRNA_CycE_eIF4E_Ribo40S_Ribo60S
rV(481,1)	=	k_480*mRNA_CycE_eIF4E_Ribo40S_Ribo60S	 ; % 	 481	 mRNA_CycE_eIF4E_Ribo40S_Ribo60S = mRNA_CycE_eIF4E_Ribo40S+Ribo60S
rV(482,1)	=	k_481*mRNA_CycE_eIF4E_Ribo40S_Ribo60S	 ; % 	 482	 mRNA_CycE_eIF4E_Ribo40S_Ribo60S = mRNA_CycE_Ribo40S_Ribo60S+eIF4E
rV(483,1)	=	k_482*mRNA_CycE_Ribo40S_Ribo60S	 ; % 	 483	 mRNA_CycE_Ribo40S_Ribo60S = mRNA_CycE_Ribo40S_Ribo60S_Elong
rV(484,1)	=	k_483*mRNA_CycE_Ribo40S_Ribo60S_Elong	 ; % 	 484	 mRNA_CycE_Ribo40S_Ribo60S_Elong = CycE+Ribo40S+Ribo60S+mRNA_CycE
rV(485,1)	=	k_484*mRNA_Rb*eIF4E	 ; % 	 485	 mRNA_Rb+eIF4E = mRNA_Rb_eIF4E
rV(486,1)	=	k_485*mRNA_Rb_eIF4E	 ; % 	 486	 mRNA_Rb_eIF4E = mRNA_Rb+eIF4E
rV(487,1)	=	k_486*mRNA_Rb_eIF4E*Ribo40S	 ; % 	 487	 mRNA_Rb_eIF4E+Ribo40S = mRNA_Rb_eIF4E_Ribo40S
rV(488,1)	=	k_487*mRNA_Rb_eIF4E_Ribo40S	 ; % 	 488	 mRNA_Rb_eIF4E_Ribo40S = mRNA_Rb_eIF4E+Ribo40S
rV(489,1)	=	k_488*mRNA_Rb_eIF4E_Ribo40S*Ribo60S	 ; % 	 489	 mRNA_Rb_eIF4E_Ribo40S+Ribo60S = mRNA_Rb_eIF4E_Ribo40S_Ribo60S
rV(490,1)	=	k_489*mRNA_Rb_eIF4E_Ribo40S_Ribo60S	 ; % 	 490	 mRNA_Rb_eIF4E_Ribo40S_Ribo60S = mRNA_Rb_eIF4E_Ribo40S+Ribo60S
rV(491,1)	=	k_490*mRNA_Rb_eIF4E_Ribo40S_Ribo60S	 ; % 	 491	 mRNA_Rb_eIF4E_Ribo40S_Ribo60S = mRNA_Rb_Ribo40S_Ribo60S+eIF4E
rV(492,1)	=	k_491*mRNA_Rb_Ribo40S_Ribo60S	 ; % 	 492	 mRNA_Rb_Ribo40S_Ribo60S = mRNA_Rb_Ribo40S_Ribo60S_Elong
rV(493,1)	=	k_492*mRNA_Rb_Ribo40S_Ribo60S_Elong	 ; % 	 493	 mRNA_Rb_Ribo40S_Ribo60S_Elong = Rb+Ribo40S+Ribo60S+mRNA_Rb
rV(494,1)	=	k_493*mRNA_E2F*eIF4E	 ; % 	 494	 mRNA_E2F+eIF4E = mRNA_E2F_eIF4E
rV(495,1)	=	k_494*mRNA_E2F_eIF4E	 ; % 	 495	 mRNA_E2F_eIF4E = mRNA_E2F+eIF4E
rV(496,1)	=	k_495*mRNA_E2F_eIF4E*Ribo40S	 ; % 	 496	 mRNA_E2F_eIF4E+Ribo40S = mRNA_E2F_eIF4E_Ribo40S
rV(497,1)	=	k_496*mRNA_E2F_eIF4E_Ribo40S	 ; % 	 497	 mRNA_E2F_eIF4E_Ribo40S = mRNA_E2F_eIF4E+Ribo40S
rV(498,1)	=	k_497*mRNA_E2F_eIF4E_Ribo40S*Ribo60S	 ; % 	 498	 mRNA_E2F_eIF4E_Ribo40S+Ribo60S = mRNA_E2F_eIF4E_Ribo40S_Ribo60S
rV(499,1)	=	k_498*mRNA_E2F_eIF4E_Ribo40S_Ribo60S	 ; % 	 499	 mRNA_E2F_eIF4E_Ribo40S_Ribo60S = mRNA_E2F_eIF4E_Ribo40S+Ribo60S
rV(500,1)	=	k_499*mRNA_E2F_eIF4E_Ribo40S_Ribo60S	 ; % 	 500	 mRNA_E2F_eIF4E_Ribo40S_Ribo60S = mRNA_E2F_Ribo40S_Ribo60S+eIF4E
rV(501,1)	=	k_500*mRNA_E2F_Ribo40S_Ribo60S	 ; % 	 501	 mRNA_E2F_Ribo40S_Ribo60S = mRNA_E2F_Ribo40S_Ribo60S_Elong
rV(502,1)	=	k_501*mRNA_E2F_Ribo40S_Ribo60S_Elong	 ; % 	 502	 mRNA_E2F_Ribo40S_Ribo60S_Elong = E2F+Ribo40S+Ribo60S+mRNA_E2F
rV(503,1)	=	k_502*mRNA_CDC25A*eIF4E	 ; % 	 503	 mRNA_CDC25A+eIF4E = mRNA_CDC25A_eIF4E
rV(504,1)	=	k_503*mRNA_CDC25A_eIF4E	 ; % 	 504	 mRNA_CDC25A_eIF4E = mRNA_CDC25A+eIF4E
rV(505,1)	=	k_504*mRNA_CDC25A_eIF4E*Ribo40S	 ; % 	 505	 mRNA_CDC25A_eIF4E+Ribo40S = mRNA_CDC25A_eIF4E_Ribo40S
rV(506,1)	=	k_505*mRNA_CDC25A_eIF4E_Ribo40S	 ; % 	 506	 mRNA_CDC25A_eIF4E_Ribo40S = mRNA_CDC25A_eIF4E+Ribo40S
rV(507,1)	=	k_506*mRNA_CDC25A_eIF4E_Ribo40S*Ribo60S	 ; % 	 507	 mRNA_CDC25A_eIF4E_Ribo40S+Ribo60S = mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S
rV(508,1)	=	k_507*mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S	 ; % 	 508	 mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S = mRNA_CDC25A_eIF4E_Ribo40S+Ribo60S
rV(509,1)	=	k_508*mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S	 ; % 	 509	 mRNA_CDC25A_eIF4E_Ribo40S_Ribo60S = mRNA_CDC25A_Ribo40S_Ribo60S+eIF4E
rV(510,1)	=	k_509*mRNA_CDC25A_Ribo40S_Ribo60S	 ; % 	 510	 mRNA_CDC25A_Ribo40S_Ribo60S = mRNA_CDC25A_Ribo40S_Ribo60S_Elong
rV(511,1)	=	k_510*mRNA_CDC25A_Ribo40S_Ribo60S_Elong	 ; % 	 511	 mRNA_CDC25A_Ribo40S_Ribo60S_Elong = CDC25A+Ribo40S+Ribo60S+mRNA_CDC25A
rV(512,1)	=	k_511*mRNA_p21Cip1*eIF4E	 ; % 	 512	 mRNA_p21Cip1+eIF4E = mRNA_p21Cip1_eIF4E
rV(513,1)	=	k_512*mRNA_p21Cip1_eIF4E	 ; % 	 513	 mRNA_p21Cip1_eIF4E = mRNA_p21Cip1+eIF4E
rV(514,1)	=	k_513*mRNA_p21Cip1_eIF4E*Ribo40S	 ; % 	 514	 mRNA_p21Cip1_eIF4E+Ribo40S = mRNA_p21Cip1_eIF4E_Ribo40S
rV(515,1)	=	k_514*mRNA_p21Cip1_eIF4E_Ribo40S	 ; % 	 515	 mRNA_p21Cip1_eIF4E_Ribo40S = mRNA_p21Cip1_eIF4E+Ribo40S
rV(516,1)	=	k_515*mRNA_p21Cip1_eIF4E_Ribo40S*Ribo60S	 ; % 	 516	 mRNA_p21Cip1_eIF4E_Ribo40S+Ribo60S = mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S
rV(517,1)	=	k_516*mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S	 ; % 	 517	 mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S = mRNA_p21Cip1_eIF4E_Ribo40S+Ribo60S
rV(518,1)	=	k_517*mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S	 ; % 	 518	 mRNA_p21Cip1_eIF4E_Ribo40S_Ribo60S = mRNA_p21Cip1_Ribo40S_Ribo60S+eIF4E
rV(519,1)	=	k_518*mRNA_p21Cip1_Ribo40S_Ribo60S	 ; % 	 519	 mRNA_p21Cip1_Ribo40S_Ribo60S = mRNA_p21Cip1_Ribo40S_Ribo60S_Elong
rV(520,1)	=	k_519*mRNA_p21Cip1_Ribo40S_Ribo60S_Elong	 ; % 	 520	 mRNA_p21Cip1_Ribo40S_Ribo60S_Elong = p21Cip1+Ribo40S+Ribo60S+mRNA_p21Cip1
rV(521,1)	=	k_520*mRNA_p27Kip1*eIF4E	 ; % 	 521	 mRNA_p27Kip1+eIF4E = mRNA_p27Kip1_eIF4E
rV(522,1)	=	k_521*mRNA_p27Kip1_eIF4E	 ; % 	 522	 mRNA_p27Kip1_eIF4E = mRNA_p27Kip1+eIF4E
rV(523,1)	=	k_522*mRNA_p27Kip1_eIF4E*Ribo40S	 ; % 	 523	 mRNA_p27Kip1_eIF4E+Ribo40S = mRNA_p27Kip1_eIF4E_Ribo40S
rV(524,1)	=	k_523*mRNA_p27Kip1_eIF4E_Ribo40S	 ; % 	 524	 mRNA_p27Kip1_eIF4E_Ribo40S = mRNA_p27Kip1_eIF4E+Ribo40S
rV(525,1)	=	k_524*mRNA_p27Kip1_eIF4E_Ribo40S*Ribo60S	 ; % 	 525	 mRNA_p27Kip1_eIF4E_Ribo40S+Ribo60S = mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S
rV(526,1)	=	k_525*mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S	 ; % 	 526	 mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S = mRNA_p27Kip1_eIF4E_Ribo40S+Ribo60S
rV(527,1)	=	k_526*mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S	 ; % 	 527	 mRNA_p27Kip1_eIF4E_Ribo40S_Ribo60S = mRNA_p27Kip1_Ribo40S_Ribo60S+eIF4E
rV(528,1)	=	k_527*mRNA_p27Kip1_Ribo40S_Ribo60S	 ; % 	 528	 mRNA_p27Kip1_Ribo40S_Ribo60S = mRNA_p27Kip1_Ribo40S_Ribo60S_Elong
rV(529,1)	=	k_528*mRNA_p27Kip1_Ribo40S_Ribo60S_Elong	 ; % 	 529	 mRNA_p27Kip1_Ribo40S_Ribo60S_Elong = p27Kip1+Ribo40S+Ribo60S+mRNA_p27Kip1
rV(530,1)	=	k_529*mRNA_p16INK4*eIF4E	 ; % 	 530	 mRNA_p16INK4+eIF4E = mRNA_p16INK4_eIF4E
rV(531,1)	=	k_530*mRNA_p16INK4_eIF4E	 ; % 	 531	 mRNA_p16INK4_eIF4E = mRNA_p16INK4+eIF4E
rV(532,1)	=	k_531*mRNA_p16INK4_eIF4E*Ribo40S	 ; % 	 532	 mRNA_p16INK4_eIF4E+Ribo40S = mRNA_p16INK4_eIF4E_Ribo40S
rV(533,1)	=	k_532*mRNA_p16INK4_eIF4E_Ribo40S	 ; % 	 533	 mRNA_p16INK4_eIF4E_Ribo40S = mRNA_p16INK4_eIF4E+Ribo40S
rV(534,1)	=	k_533*mRNA_p16INK4_eIF4E_Ribo40S*Ribo60S	 ; % 	 534	 mRNA_p16INK4_eIF4E_Ribo40S+Ribo60S = mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S
rV(535,1)	=	k_534*mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S	 ; % 	 535	 mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S = mRNA_p16INK4_eIF4E_Ribo40S+Ribo60S
rV(536,1)	=	k_535*mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S	 ; % 	 536	 mRNA_p16INK4_eIF4E_Ribo40S_Ribo60S = mRNA_p16INK4_Ribo40S_Ribo60S+eIF4E
rV(537,1)	=	k_536*mRNA_p16INK4_Ribo40S_Ribo60S	 ; % 	 537	 mRNA_p16INK4_Ribo40S_Ribo60S = mRNA_p16INK4_Ribo40S_Ribo60S_Elong
rV(538,1)	=	k_537*mRNA_p16INK4_Ribo40S_Ribo60S_Elong	 ; % 	 538	 mRNA_p16INK4_Ribo40S_Ribo60S_Elong = p16INK4+Ribo40S+Ribo60S+mRNA_p16INK4
rV(539,1)	=	k_538*mRNA_PSA*eIF4E	 ; % 	 539	 mRNA_PSA+eIF4E = mRNA_PSA_eIF4E
rV(540,1)	=	k_539*mRNA_PSA_eIF4E	 ; % 	 540	 mRNA_PSA_eIF4E = mRNA_PSA+eIF4E
rV(541,1)	=	k_540*mRNA_PSA_eIF4E*Ribo40S	 ; % 	 541	 mRNA_PSA_eIF4E+Ribo40S = mRNA_PSA_eIF4E_Ribo40S
rV(542,1)	=	k_541*mRNA_PSA_eIF4E_Ribo40S	 ; % 	 542	 mRNA_PSA_eIF4E_Ribo40S = mRNA_PSA_eIF4E+Ribo40S
rV(543,1)	=	k_542*mRNA_PSA_eIF4E_Ribo40S*Ribo60S	 ; % 	 543	 mRNA_PSA_eIF4E_Ribo40S+Ribo60S = mRNA_PSA_eIF4E_Ribo40S_Ribo60S
rV(544,1)	=	k_543*mRNA_PSA_eIF4E_Ribo40S_Ribo60S	 ; % 	 544	 mRNA_PSA_eIF4E_Ribo40S_Ribo60S = mRNA_PSA_eIF4E_Ribo40S+Ribo60S
rV(545,1)	=	k_544*mRNA_PSA_eIF4E_Ribo40S_Ribo60S	 ; % 	 545	 mRNA_PSA_eIF4E_Ribo40S_Ribo60S = mRNA_PSA_Ribo40S_Ribo60S+eIF4E
rV(546,1)	=	k_545*mRNA_PSA_Ribo40S_Ribo60S	 ; % 	 546	 mRNA_PSA_Ribo40S_Ribo60S = mRNA_PSA_Ribo40S_Ribo60S_Elong
rV(547,1)	=	k_546*mRNA_PSA_Ribo40S_Ribo60S_Elong	 ; % 	 547	 mRNA_PSA_Ribo40S_Ribo60S_Elong = PSA+Ribo40S+Ribo60S+mRNA_PSA
rV(548,1)	=	k_547*mRNA_PAcP*eIF4E	 ; % 	 548	 mRNA_PAcP+eIF4E = mRNA_PAcP_eIF4E
rV(549,1)	=	k_548*mRNA_PAcP_eIF4E	 ; % 	 549	 mRNA_PAcP_eIF4E = mRNA_PAcP+eIF4E
rV(550,1)	=	k_549*mRNA_PAcP_eIF4E*Ribo40S	 ; % 	 550	 mRNA_PAcP_eIF4E+Ribo40S = mRNA_PAcP_eIF4E_Ribo40S
rV(551,1)	=	k_550*mRNA_PAcP_eIF4E_Ribo40S	 ; % 	 551	 mRNA_PAcP_eIF4E_Ribo40S = mRNA_PAcP_eIF4E+Ribo40S
rV(552,1)	=	k_551*mRNA_PAcP_eIF4E_Ribo40S*Ribo60S	 ; % 	 552	 mRNA_PAcP_eIF4E_Ribo40S+Ribo60S = mRNA_PAcP_eIF4E_Ribo40S_Ribo60S
rV(553,1)	=	k_552*mRNA_PAcP_eIF4E_Ribo40S_Ribo60S	 ; % 	 553	 mRNA_PAcP_eIF4E_Ribo40S_Ribo60S = mRNA_PAcP_eIF4E_Ribo40S+Ribo60S
rV(554,1)	=	k_553*mRNA_PAcP_eIF4E_Ribo40S_Ribo60S	 ; % 	 554	 mRNA_PAcP_eIF4E_Ribo40S_Ribo60S = mRNA_PAcP_Ribo40S_Ribo60S+eIF4E
rV(555,1)	=	k_554*mRNA_PAcP_Ribo40S_Ribo60S	 ; % 	 555	 mRNA_PAcP_Ribo40S_Ribo60S = mRNA_PAcP_Ribo40S_Ribo60S_Elong
rV(556,1)	=	k_555*mRNA_PAcP_Ribo40S_Ribo60S_Elong	 ; % 	 556	 mRNA_PAcP_Ribo40S_Ribo60S_Elong = cPAcP+Ribo40S+Ribo60S+mRNA_PAcP
rV(557,1)	=	k_556*mRNA_PAcP_Ribo40S_Ribo60S_Elong	 ; % 	 557	 mRNA_PAcP_Ribo40S_Ribo60S_Elong = sPAcP+Ribo40S+Ribo60S+mRNA_PAcP
rV(558,1)	=	k_557*mRNA_AR*eIF4E	 ; % 	 558	 mRNA_AR+eIF4E = mRNA_AR_eIF4E
rV(559,1)	=	k_558*mRNA_AR_eIF4E	 ; % 	 559	 mRNA_AR_eIF4E = mRNA_AR+eIF4E
rV(560,1)	=	k_559*mRNA_AR_eIF4E*Ribo40S	 ; % 	 560	 mRNA_AR_eIF4E+Ribo40S = mRNA_AR_eIF4E_Ribo40S
rV(561,1)	=	k_560*mRNA_AR_eIF4E_Ribo40S	 ; % 	 561	 mRNA_AR_eIF4E_Ribo40S = mRNA_AR_eIF4E+Ribo40S
rV(562,1)	=	k_561*mRNA_AR_eIF4E_Ribo40S*Ribo60S	 ; % 	 562	 mRNA_AR_eIF4E_Ribo40S+Ribo60S = mRNA_AR_eIF4E_Ribo40S_Ribo60S
rV(563,1)	=	k_562*mRNA_AR_eIF4E_Ribo40S_Ribo60S	 ; % 	 563	 mRNA_AR_eIF4E_Ribo40S_Ribo60S = mRNA_AR_eIF4E_Ribo40S+Ribo60S
rV(564,1)	=	k_563*mRNA_AR_eIF4E_Ribo40S_Ribo60S	 ; % 	 564	 mRNA_AR_eIF4E_Ribo40S_Ribo60S = mRNA_AR_Ribo40S_Ribo60S+eIF4E
rV(565,1)	=	k_564*mRNA_AR_Ribo40S_Ribo60S	 ; % 	 565	 mRNA_AR_Ribo40S_Ribo60S = mRNA_AR_Ribo40S_Ribo60S_Elong
rV(566,1)	=	k_565*mRNA_AR_Ribo40S_Ribo60S_Elong	 ; % 	 566	 mRNA_AR_Ribo40S_Ribo60S_Elong = AR+Ribo40S+Ribo60S+mRNA_AR
rV(567,1)	=	k_566*ETS	 ; % 	 567	 ETS = []
rV(568,1)	=	k_567*AP1	 ; % 	 568	 AP1 = []
rV(569,1)	=	k_568*CycD1a	 ; % 	 569	 CycD1a = []
rV(570,1)	=	k_569*CycD1b	 ; % 	 570	 CycD1b = []
rV(571,1)	=	k_570*CycE	 ; % 	 571	 CycE = []
rV(572,1)	=	k_571*Rb	 ; % 	 572	 Rb = []
rV(573,1)	=	k_572*E2F	 ; % 	 573	 E2F = []
rV(574,1)	=	k_573*CDC25A	 ; % 	 574	 CDC25A = []
rV(575,1)	=	k_574*p21Cip1	 ; % 	 575	 p21Cip1 = []
rV(576,1)	=	k_575*p27Kip1	 ; % 	 576	 p27Kip1 = []
rV(577,1)	=	k_576*p16INK4	 ; % 	 577	 p16INK4 = []
rV(578,1)	=	k_577*PSA	 ; % 	 578	 PSA = []
rV(579,1)	=	k_578*cPAcP	 ; % 	 579	 cPAcP = []
rV(580,1)	=	k_579*sPAcP	 ; % 	 580	 sPAcP = []
rV(581,1)	=	k_580*AR	 ; % 	 581	 AR = []
rV(582,1)	=	k_581*AR*HSP	 ; % 	 582	 AR+HSP = AR_HSP
rV(583,1)	=	k_582*AR_HSP	 ; % 	 583	 AR_HSP = AR+HSP
rV(584,1)	=	k_583*AR*DHT	 ; % 	 584	 AR+DHT = AR_DHT
rV(585,1)	=	k_584*AR_DHT	 ; % 	 585	 AR_DHT = AR+DHT
rV(586,1)	=	k_585*AR_DHT	 ; % 	 586	 AR_DHT = AR_p_DHT
rV(587,1)	=	k_586*AR_p_DHT	 ; % 	 587	 AR_p_DHT = AR_p+DHT
rV(588,1)	=	k_587*AR_p*DHT	 ; % 	 588	 AR_p+DHT = AR_p_DHT
rV(589,1)	=	k_588*AR_p_DHT*AR_p_DHT	 ; % 	 589	 2*AR_p_DHT = AR_p_DHT_2
rV(590,1)	=	k_589*AR_p_DHT_2	 ; % 	 590	 AR_p_DHT_2 = 2*AR_p_DHT
rV(591,1)	=	k_590*AR_p*AR_p	 ; % 	 591	 2*AR_p = AR_p_2
rV(592,1)	=	k_591*AR_p_2	 ; % 	 592	 AR_p_2 = 2*AR_p
rV(593,1)	=	k_592*AR_p_DHT*AR_p	 ; % 	 593	 AR_p_DHT+AR_p = AR_p_DHT_AR_p
rV(594,1)	=	k_593*AR_p_DHT_AR_p	 ; % 	 594	 AR_p_DHT_AR_p = AR_p_DHT+AR_p
rV(595,1)	=	k_594*AR_p*ARPase	 ; % 	 595	 AR_p+ARPase = AR_p_ARPase
rV(596,1)	=	k_595*AR_p_ARPase	 ; % 	 596	 AR_p_ARPase = AR_p+ARPase
rV(597,1)	=	k_596*AR_p_ARPase	 ; % 	 597	 AR_p_ARPase = AR+ARPase
rV(598,1)	=	k_597*AR_p_DHT*ARPase	 ; % 	 598	 AR_p_DHT+ARPase = AR_p_DHT_ARPase
rV(599,1)	=	k_598*AR_p_DHT_ARPase	 ; % 	 599	 AR_p_DHT_ARPase = AR_p_DHT+ARPase
rV(600,1)	=	k_599*AR_p_DHT_ARPase	 ; % 	 600	 AR_p_DHT_ARPase = AR_DHT+ARPase
rV(601,1)	=	k_600*Import*AR_p_DHT_2	 ; % 	 601	 Import+AR_p_DHT_2 = Import_AR_p_DHT_2
rV(602,1)	=	k_601*Import_AR_p_DHT_2	 ; % 	 602	 Import_AR_p_DHT_2 = Import+AR_p_DHT_2
rV(603,1)	=	k_602*Import_AR_p_DHT_2	 ; % 	 603	 Import_AR_p_DHT_2 = Import+AR_p_DHT_2_n
rV(604,1)	=	k_603*Export*AR_p_DHT_2_n	 ; % 	 604	 Export+AR_p_DHT_2_n = Export_AR_p_DHT_2_n
rV(605,1)	=	k_604*Export_AR_p_DHT_2_n	 ; % 	 605	 Export_AR_p_DHT_2_n = Export+AR_p_DHT_2_n
rV(606,1)	=	k_605*Export_AR_p_DHT_2_n	 ; % 	 606	 Export_AR_p_DHT_2_n = Export+AR_p_DHT_2
rV(607,1)	=	k_606*Import*AR_p_2	 ; % 	 607	 Import+AR_p_2 = Import_AR_p_2
rV(608,1)	=	k_607*Import_AR_p_2	 ; % 	 608	 Import_AR_p_2 = Import+AR_p_2
rV(609,1)	=	k_608*Import_AR_p_2	 ; % 	 609	 Import_AR_p_2 = Import+AR_p_2_n
rV(610,1)	=	k_609*Export*AR_p_2_n	 ; % 	 610	 Export+AR_p_2_n = Export_AR_p_2_n
rV(611,1)	=	k_610*Export_AR_p_2_n	 ; % 	 611	 Export_AR_p_2_n = Export+AR_p_2_n
rV(612,1)	=	k_611*Export_AR_p_2_n	 ; % 	 612	 Export_AR_p_2_n = Export+AR_p_2
rV(613,1)	=	k_612*Import*AR_p_DHT_AR_p	 ; % 	 613	 Import+AR_p_DHT_AR_p = Import_AR_p_DHT_AR_p
rV(614,1)	=	k_613*Import_AR_p_DHT_AR_p	 ; % 	 614	 Import_AR_p_DHT_AR_p = Import+AR_p_DHT_AR_p
rV(615,1)	=	k_614*Import_AR_p_DHT_AR_p	 ; % 	 615	 Import_AR_p_DHT_AR_p = Import+AR_p_DHT_AR_p_n
rV(616,1)	=	k_615*Export*AR_p_DHT_AR_p_n	 ; % 	 616	 Export+AR_p_DHT_AR_p_n = Export_AR_p_DHT_AR_p_n
rV(617,1)	=	k_616*Export_AR_p_DHT_AR_p_n	 ; % 	 617	 Export_AR_p_DHT_AR_p_n = Export+AR_p_DHT_AR_p_n
rV(618,1)	=	k_617*Export_AR_p_DHT_AR_p_n	 ; % 	 618	 Export_AR_p_DHT_AR_p_n = Export+AR_p_DHT_AR_p
rV(619,1)	=	k_618*HER2*HER2	 ; % 	 619	 2*HER2 = HER2_2
rV(620,1)	=	k_619*HER2_2	 ; % 	 620	 HER2_2 = 2*HER2
rV(621,1)	=	k_620*HER2_2	 ; % 	 621	 HER2_2 = HER2_2_p
rV(622,1)	=	k_621*HER2_2_p*SHP	 ; % 	 622	 HER2_2_p+SHP = HER2_2_p_SHP
rV(623,1)	=	k_622*HER2_2_p_SHP	 ; % 	 623	 HER2_2_p_SHP = HER2_2_p+SHP
rV(624,1)	=	k_623*HER2_2_p_SHP	 ; % 	 624	 HER2_2_p_SHP = HER2_2+SHP
rV(625,1)	=	k_624*HER2_2_p*Grb2	 ; % 	 625	 HER2_2_p+Grb2 = HER2_2_p_Grb2
rV(626,1)	=	k_625*HER2_2_p_Grb2	 ; % 	 626	 HER2_2_p_Grb2 = HER2_2_p+Grb2
rV(627,1)	=	k_626*HER2_2_p_Grb2*Sos	 ; % 	 627	 HER2_2_p_Grb2+Sos = HER2_2_p_Grb2_Sos
rV(628,1)	=	k_627*HER2_2_p_Grb2_Sos	 ; % 	 628	 HER2_2_p_Grb2_Sos = HER2_2_p_Grb2+Sos
rV(629,1)	=	k_628*HER2_2_p*Grb2_Sos	 ; % 	 629	 HER2_2_p+Grb2_Sos = HER2_2_p_Grb2_Sos
rV(630,1)	=	k_629*HER2_2_p_Grb2_Sos	 ; % 	 630	 HER2_2_p_Grb2_Sos = HER2_2_p+Grb2_Sos
rV(631,1)	=	k_630*HER2_2_p_Grb2_Sos*Ras_GDP	 ; % 	 631	 HER2_2_p_Grb2_Sos+Ras_GDP = HER2_2_p_Grb2_Sos_Ras_GDP
rV(632,1)	=	k_631*HER2_2_p_Grb2_Sos_Ras_GDP	 ; % 	 632	 HER2_2_p_Grb2_Sos_Ras_GDP = HER2_2_p_Grb2_Sos+Ras_GDP
rV(633,1)	=	k_632*HER2_2_p_Grb2_Sos_Ras_GDP	 ; % 	 633	 HER2_2_p_Grb2_Sos_Ras_GDP = HER2_2_p_Grb2_Sos_Ras_GTP
rV(634,1)	=	k_633*HER2_2_p_Grb2_Sos_Ras_GTP	 ; % 	 634	 HER2_2_p_Grb2_Sos_Ras_GTP = HER2_2_p_Grb2_Sos+Ras_GTP
rV(635,1)	=	k_634*HER2_2_p_Grb2_Sos*Ras_GTP	 ; % 	 635	 HER2_2_p_Grb2_Sos+Ras_GTP = HER2_2_p_Grb2_Sos_Ras_GTP
rV(636,1)	=	k_635*HER2_2_p*Shc	 ; % 	 636	 HER2_2_p+Shc = HER2_2_p_Shc
rV(637,1)	=	k_636*HER2_2_p_Shc	 ; % 	 637	 HER2_2_p_Shc = HER2_2_p+Shc
rV(638,1)	=	k_637*HER2_2_p_Shc	 ; % 	 638	 HER2_2_p_Shc = HER2_2_p_Shc_p
rV(639,1)	=	k_638*HER2_2_p_Shc_p	 ; % 	 639	 HER2_2_p_Shc_p = HER2_2_p+Shc_p
rV(640,1)	=	k_639*HER2_2_p*Shc_p	 ; % 	 640	 HER2_2_p+Shc_p = HER2_2_p_Shc_p
rV(641,1)	=	k_640*HER2_2_p_Shc_p*Grb2	 ; % 	 641	 HER2_2_p_Shc_p+Grb2 = HER2_2_p_Shc_p_Grb2
rV(642,1)	=	k_641*HER2_2_p_Shc_p_Grb2	 ; % 	 642	 HER2_2_p_Shc_p_Grb2 = HER2_2_p_Shc_p+Grb2
rV(643,1)	=	k_642*HER2_2_p_Shc_p_Grb2*Sos	 ; % 	 643	 HER2_2_p_Shc_p_Grb2+Sos = HER2_2_p_Shc_p_Grb2_Sos
rV(644,1)	=	k_643*HER2_2_p_Shc_p_Grb2_Sos	 ; % 	 644	 HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p_Shc_p_Grb2+Sos
rV(645,1)	=	k_644*HER2_2_p_Shc_p*Grb2_Sos	 ; % 	 645	 HER2_2_p_Shc_p+Grb2_Sos = HER2_2_p_Shc_p_Grb2_Sos
rV(646,1)	=	k_645*HER2_2_p_Shc_p_Grb2_Sos	 ; % 	 646	 HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p_Shc_p+Grb2_Sos
rV(647,1)	=	k_646*HER2_2_p*Shc_p_Grb2_Sos	 ; % 	 647	 HER2_2_p+Shc_p_Grb2_Sos = HER2_2_p_Shc_p_Grb2_Sos
rV(648,1)	=	k_647*HER2_2_p_Shc_p_Grb2_Sos	 ; % 	 648	 HER2_2_p_Shc_p_Grb2_Sos = HER2_2_p+Shc_p_Grb2_Sos
rV(649,1)	=	k_648*HER2_2_p_Shc_p_Grb2_Sos*Ras_GDP	 ; % 	 649	 HER2_2_p_Shc_p_Grb2_Sos+Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP
rV(650,1)	=	k_649*HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP	 ; % 	 650	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos+Ras_GDP
rV(651,1)	=	k_650*HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP	 ; % 	 651	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP
rV(652,1)	=	k_651*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP	 ; % 	 652	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP = HER2_2_p_Shc_p_Grb2_Sos+Ras_GTP
rV(653,1)	=	k_652*HER2_2_p_Shc_p_Grb2_Sos*Ras_GTP	 ; % 	 653	 HER2_2_p_Shc_p_Grb2_Sos+Ras_GTP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP
rV(654,1)	=	k_653*EGFR*EGF	 ; % 	 654	 EGFR+EGF = EGFR_EGF
rV(655,1)	=	k_654*EGFR_EGF	 ; % 	 655	 EGFR_EGF = EGFR+EGF
rV(656,1)	=	k_655*EGFR_EGF*EGFR_EGF	 ; % 	 656	 2*EGFR_EGF = EGFR_EGF_2
rV(657,1)	=	k_656*EGFR_EGF_2	 ; % 	 657	 EGFR_EGF_2 = 2*EGFR_EGF
rV(658,1)	=	k_657*EGFR_EGF_2	 ; % 	 658	 EGFR_EGF_2 = EGFR_EGF_2_p
rV(659,1)	=	k_658*EGFR_EGF_2_p	 ; % 	 659	 EGFR_EGF_2_p = EGFR_EGF_2
rV(660,1)	=	k_659*EGFR_EGF_2_p*SHP	 ; % 	 660	 EGFR_EGF_2_p+SHP = EGFR_EGF_2_p_SHP
rV(661,1)	=	k_660*EGFR_EGF_2_p_SHP	 ; % 	 661	 EGFR_EGF_2_p_SHP = EGFR_EGF_2_p+SHP
rV(662,1)	=	k_661*EGFR_EGF_2_p_SHP	 ; % 	 662	 EGFR_EGF_2_p_SHP = EGFR_EGF_2+SHP
rV(663,1)	=	k_662*EGFR_EGF_2_p*Grb2	 ; % 	 663	 EGFR_EGF_2_p+Grb2 = EGFR_EGF_2_p_Grb2
rV(664,1)	=	k_663*EGFR_EGF_2_p_Grb2	 ; % 	 664	 EGFR_EGF_2_p_Grb2 = EGFR_EGF_2_p+Grb2
rV(665,1)	=	k_664*EGFR_EGF_2_p_Grb2*Sos	 ; % 	 665	 EGFR_EGF_2_p_Grb2+Sos = EGFR_EGF_2_p_Grb2_Sos
rV(666,1)	=	k_665*EGFR_EGF_2_p_Grb2_Sos	 ; % 	 666	 EGFR_EGF_2_p_Grb2_Sos = EGFR_EGF_2_p_Grb2+Sos
rV(667,1)	=	k_666*EGFR_EGF_2_p*Grb2_Sos	 ; % 	 667	 EGFR_EGF_2_p+Grb2_Sos = EGFR_EGF_2_p_Grb2_Sos
rV(668,1)	=	k_667*EGFR_EGF_2_p_Grb2_Sos	 ; % 	 668	 EGFR_EGF_2_p_Grb2_Sos = EGFR_EGF_2_p+Grb2_Sos
rV(669,1)	=	k_668*EGFR_EGF_2_p_Grb2_Sos*Ras_GDP	 ; % 	 669	 EGFR_EGF_2_p_Grb2_Sos+Ras_GDP = EGFR_EGF_2_p_Grb2_Sos_Ras_GDP
rV(670,1)	=	k_669*EGFR_EGF_2_p_Grb2_Sos_Ras_GDP	 ; % 	 670	 EGFR_EGF_2_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Grb2_Sos+Ras_GDP
rV(671,1)	=	k_670*EGFR_EGF_2_p_Grb2_Sos_Ras_GDP	 ; % 	 671	 EGFR_EGF_2_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP
rV(672,1)	=	k_671*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP	 ; % 	 672	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP = EGFR_EGF_2_p_Grb2_Sos+Ras_GTP
rV(673,1)	=	k_672*EGFR_EGF_2_p_Grb2_Sos*Ras_GTP	 ; % 	 673	 EGFR_EGF_2_p_Grb2_Sos+Ras_GTP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP
rV(674,1)	=	k_673*EGFR_EGF_2_p*Shc	 ; % 	 674	 EGFR_EGF_2_p+Shc = EGFR_EGF_2_p_Shc
rV(675,1)	=	k_674*EGFR_EGF_2_p_Shc	 ; % 	 675	 EGFR_EGF_2_p_Shc = EGFR_EGF_2_p+Shc
rV(676,1)	=	k_675*EGFR_EGF_2_p_Shc	 ; % 	 676	 EGFR_EGF_2_p_Shc = EGFR_EGF_2_p_Shc_p
rV(677,1)	=	k_676*EGFR_EGF_2_p_Shc_p	 ; % 	 677	 EGFR_EGF_2_p_Shc_p = EGFR_EGF_2_p+Shc_p
rV(678,1)	=	k_677*EGFR_EGF_2_p*Shc_p	 ; % 	 678	 EGFR_EGF_2_p+Shc_p = EGFR_EGF_2_p_Shc_p
rV(679,1)	=	k_678*EGFR_EGF_2_p_Shc_p*Grb2	 ; % 	 679	 EGFR_EGF_2_p_Shc_p+Grb2 = EGFR_EGF_2_p_Shc_p_Grb2
rV(680,1)	=	k_679*EGFR_EGF_2_p_Shc_p_Grb2	 ; % 	 680	 EGFR_EGF_2_p_Shc_p_Grb2 = EGFR_EGF_2_p_Shc_p+Grb2
rV(681,1)	=	k_680*EGFR_EGF_2_p_Shc_p_Grb2*Sos	 ; % 	 681	 EGFR_EGF_2_p_Shc_p_Grb2+Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
rV(682,1)	=	k_681*EGFR_EGF_2_p_Shc_p_Grb2_Sos	 ; % 	 682	 EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2+Sos
rV(683,1)	=	k_682*EGFR_EGF_2_p_Shc_p*Grb2_Sos	 ; % 	 683	 EGFR_EGF_2_p_Shc_p+Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
rV(684,1)	=	k_683*EGFR_EGF_2_p_Shc_p_Grb2_Sos	 ; % 	 684	 EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p+Grb2_Sos
rV(685,1)	=	k_684*EGFR_EGF_2_p*Shc_p_Grb2_Sos	 ; % 	 685	 EGFR_EGF_2_p+Shc_p_Grb2_Sos = EGFR_EGF_2_p_Shc_p_Grb2_Sos
rV(686,1)	=	k_685*EGFR_EGF_2_p_Shc_p_Grb2_Sos	 ; % 	 686	 EGFR_EGF_2_p_Shc_p_Grb2_Sos = EGFR_EGF_2_p+Shc_p_Grb2_Sos
rV(687,1)	=	k_686*EGFR_EGF_2_p_Shc_p_Grb2_Sos*Ras_GDP	 ; % 	 687	 EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP
rV(688,1)	=	k_687*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP	 ; % 	 688	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GDP
rV(689,1)	=	k_688*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP	 ; % 	 689	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP
rV(690,1)	=	k_689*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP	 ; % 	 690	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP = EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GTP
rV(691,1)	=	k_690*EGFR_EGF_2_p_Shc_p_Grb2_Sos*Ras_GTP	 ; % 	 691	 EGFR_EGF_2_p_Shc_p_Grb2_Sos+Ras_GTP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP
rV(692,1)	=	k_691*Ras_GTP*RasGAP	 ; % 	 692	 Ras_GTP+RasGAP = Ras_GTP_RasGAP
rV(693,1)	=	k_692*Ras_GTP_RasGAP	 ; % 	 693	 Ras_GTP_RasGAP = Ras_GTP+RasGAP
rV(694,1)	=	k_693*Ras_GTP_RasGAP	 ; % 	 694	 Ras_GTP_RasGAP = Ras_GDP+RasGAP
rV(695,1)	=	k_694*HER2_2_p_Grb2_Sos_Ras_GTP*RasGAP	 ; % 	 695	 HER2_2_p_Grb2_Sos_Ras_GTP+RasGAP = HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP
rV(696,1)	=	k_695*HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 696	 HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Grb2_Sos_Ras_GTP+RasGAP
rV(697,1)	=	k_696*HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 697	 HER2_2_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Grb2_Sos_Ras_GDP+RasGAP
rV(698,1)	=	k_697*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP*RasGAP	 ; % 	 698	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
rV(699,1)	=	k_698*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 699	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP
rV(700,1)	=	k_699*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 700	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = HER2_2_p_Shc_p_Grb2_Sos_Ras_GDP+RasGAP
rV(701,1)	=	k_700*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP*RasGAP	 ; % 	 701	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP
rV(702,1)	=	k_701*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 702	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RasGAP
rV(703,1)	=	k_702*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 703	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Grb2_Sos_Ras_GDP+RasGAP
rV(704,1)	=	k_703*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP*RasGAP	 ; % 	 704	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP
rV(705,1)	=	k_704*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 705	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RasGAP
rV(706,1)	=	k_705*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP	 ; % 	 706	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RasGAP = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GDP+RasGAP
rV(707,1)	=	k_706*EGF	 ; % 	 707	 EGF = EGF_in
rV(708,1)	=	k_707*EGF_in	 ; % 	 708	 EGF_in = []
rV(709,1)	=	k_708*EGFR_EGF_2_p	 ; % 	 709	 EGFR_EGF_2_p = EGFR_EGF_2_p_in
rV(710,1)	=	k_709*EGFR_EGF_2_p_in	 ; % 	 710	 EGFR_EGF_2_p_in = 2*EGFR_in+2*EGF_in
rV(711,1)	=	k_710*EGFR_in	 ; % 	 711	 EGFR_in = EGFR
rV(712,1)	=	k_711*Grb2*Sos	 ; % 	 712	 Grb2+Sos = Grb2_Sos
rV(713,1)	=	k_712*Grb2_Sos	 ; % 	 713	 Grb2_Sos = Grb2+Sos
rV(714,1)	=	k_713*Shc_p*Grb2_Sos	 ; % 	 714	 Shc_p+Grb2_Sos = Shc_p_Grb2_Sos
rV(715,1)	=	k_714*Shc_p_Grb2_Sos	 ; % 	 715	 Shc_p_Grb2_Sos = Shc_p+Grb2_Sos
rV(716,1)	=	k_715*Shc_p*ShcPase	 ; % 	 716	 Shc_p+ShcPase = Shc_p_ShcPase
rV(717,1)	=	k_716*Shc_p_ShcPase	 ; % 	 717	 Shc_p_ShcPase = Shc_p+ShcPase
rV(718,1)	=	k_717*Shc_p_ShcPase	 ; % 	 718	 Shc_p_ShcPase = Shc+ShcPase
rV(719,1)	=	k_718*HER2_2_p_Shc_p*ShcPase	 ; % 	 719	 HER2_2_p_Shc_p+ShcPase = HER2_2_p_Shc_p_ShcPase
rV(720,1)	=	k_719*HER2_2_p_Shc_p_ShcPase	 ; % 	 720	 HER2_2_p_Shc_p_ShcPase = HER2_2_p_Shc_p+ShcPase
rV(721,1)	=	k_720*HER2_2_p_Shc_p_ShcPase	 ; % 	 721	 HER2_2_p_Shc_p_ShcPase = HER2_2_p_Shc+ShcPase
rV(722,1)	=	k_721*EGFR_EGF_2_p_Shc_p*ShcPase	 ; % 	 722	 EGFR_EGF_2_p_Shc_p+ShcPase = EGFR_EGF_2_p_Shc_p_ShcPase
rV(723,1)	=	k_722*EGFR_EGF_2_p_Shc_p_ShcPase	 ; % 	 723	 EGFR_EGF_2_p_Shc_p_ShcPase = EGFR_EGF_2_p_Shc_p+ShcPase
rV(724,1)	=	k_723*EGFR_EGF_2_p_Shc_p_ShcPase	 ; % 	 724	 EGFR_EGF_2_p_Shc_p_ShcPase = EGFR_EGF_2_p_Shc+ShcPase
rV(725,1)	=	k_724*GAB_m_p*GABPase	 ; % 	 725	 GAB_m_p+GABPase = GAB_m_p_GABPase
rV(726,1)	=	k_725*GAB_m_p_GABPase	 ; % 	 726	 GAB_m_p_GABPase = GAB_m_p+GABPase
rV(727,1)	=	k_726*GAB_m_p_GABPase	 ; % 	 727	 GAB_m_p_GABPase = GAB_m+GABPase
rV(728,1)	=	k_727*HER2_2_p_Grb2_GAB_m_p*GABPase	 ; % 	 728	 HER2_2_p_Grb2_GAB_m_p+GABPase = HER2_2_p_Grb2_GAB_m_p_GABPase
rV(729,1)	=	k_728*HER2_2_p_Grb2_GAB_m_p_GABPase	 ; % 	 729	 HER2_2_p_Grb2_GAB_m_p_GABPase = HER2_2_p_Grb2_GAB_m_p+GABPase
rV(730,1)	=	k_729*HER2_2_p_Grb2_GAB_m_p_GABPase	 ; % 	 730	 HER2_2_p_Grb2_GAB_m_p_GABPase = HER2_2_p_Grb2_GAB_m+GABPase
rV(731,1)	=	k_730*EGFR_EGF_2_p_Grb2_GAB_m_p*GABPase	 ; % 	 731	 EGFR_EGF_2_p_Grb2_GAB_m_p+GABPase = EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase
rV(732,1)	=	k_731*EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase	 ; % 	 732	 EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase = EGFR_EGF_2_p_Grb2_GAB_m_p+GABPase
rV(733,1)	=	k_732*EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase	 ; % 	 733	 EGFR_EGF_2_p_Grb2_GAB_m_p_GABPase = EGFR_EGF_2_p_Grb2_GAB_m+GABPase
rV(734,1)	=	k_733*GAB	 ; % 	 734	 GAB = GAB_m
rV(735,1)	=	k_734*GAB_m	 ; % 	 735	 GAB_m = GAB
rV(736,1)	=	k_735*HER2_2_p_Grb2*GAB_m	 ; % 	 736	 HER2_2_p_Grb2+GAB_m = HER2_2_p_Grb2_GAB_m
rV(737,1)	=	k_736*HER2_2_p_Grb2_GAB_m	 ; % 	 737	 HER2_2_p_Grb2_GAB_m = HER2_2_p_Grb2+GAB_m
rV(738,1)	=	k_737*HER2_2_p_Grb2_GAB_m	 ; % 	 738	 HER2_2_p_Grb2_GAB_m = HER2_2_p_Grb2_GAB_m_p
rV(739,1)	=	k_738*HER2_2_p_Grb2_GAB_m_p	 ; % 	 739	 HER2_2_p_Grb2_GAB_m_p = HER2_2_p_Grb2+GAB_m_p
rV(740,1)	=	k_739*HER2_2_p_Grb2*GAB_m_p	 ; % 	 740	 HER2_2_p_Grb2+GAB_m_p = HER2_2_p_Grb2_GAB_m_p
rV(741,1)	=	k_740*HER2_2_p_Grb2_GAB_m_p*PI3K	 ; % 	 741	 HER2_2_p_Grb2_GAB_m_p+PI3K = HER2_2_p_Grb2_GAB_m_p_PI3K
rV(742,1)	=	k_741*HER2_2_p_Grb2_GAB_m_p_PI3K	 ; % 	 742	 HER2_2_p_Grb2_GAB_m_p_PI3K = HER2_2_p_Grb2_GAB_m_p+PI3K
rV(743,1)	=	k_742*HER2_2_p_Grb2_GAB_m_p_PI3K	 ; % 	 743	 HER2_2_p_Grb2_GAB_m_p_PI3K = HER2_2_p_Grb2_GAB_m_p_PI3K_Act
rV(744,1)	=	k_743*HER2_2_p_Grb2_GAB_m_p_PI3K_Act	 ; % 	 744	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act = HER2_2_p_Grb2_GAB_m_p+PI3K_Act
rV(745,1)	=	k_744*HER2_2_p_Grb2_GAB_m_p*PI3K_Act	 ; % 	 745	 HER2_2_p_Grb2_GAB_m_p+PI3K_Act = HER2_2_p_Grb2_GAB_m_p_PI3K_Act
rV(746,1)	=	k_745*HER2_2_p_Grb2_Sos_Ras_GTP*PI3K	 ; % 	 746	 HER2_2_p_Grb2_Sos_Ras_GTP+PI3K = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K
rV(747,1)	=	k_746*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 747	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Grb2_Sos_Ras_GTP+PI3K
rV(748,1)	=	k_747*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 748	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(749,1)	=	k_748*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act	 ; % 	 749	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act = HER2_2_p_Grb2_Sos_Ras_GTP+PI3K_Act
rV(750,1)	=	k_749*HER2_2_p_Grb2_Sos_Ras_GTP*PI3K_Act	 ; % 	 750	 HER2_2_p_Grb2_Sos_Ras_GTP+PI3K_Act = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(751,1)	=	k_750*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP*PI3K	 ; % 	 751	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
rV(752,1)	=	k_751*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 752	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K
rV(753,1)	=	k_752*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 753	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(754,1)	=	k_753*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act	 ; % 	 754	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act
rV(755,1)	=	k_754*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP*PI3K_Act	 ; % 	 755	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(756,1)	=	k_755*EGFR_EGF_2_p_Grb2*GAB_m	 ; % 	 756	 EGFR_EGF_2_p_Grb2+GAB_m = EGFR_EGF_2_p_Grb2_GAB_m
rV(757,1)	=	k_756*EGFR_EGF_2_p_Grb2_GAB_m	 ; % 	 757	 EGFR_EGF_2_p_Grb2_GAB_m = EGFR_EGF_2_p_Grb2+GAB_m
rV(758,1)	=	k_757*EGFR_EGF_2_p_Grb2_GAB_m	 ; % 	 758	 EGFR_EGF_2_p_Grb2_GAB_m = EGFR_EGF_2_p_Grb2_GAB_m_p
rV(759,1)	=	k_758*EGFR_EGF_2_p_Grb2_GAB_m_p	 ; % 	 759	 EGFR_EGF_2_p_Grb2_GAB_m_p = EGFR_EGF_2_p_Grb2+GAB_m_p
rV(760,1)	=	k_759*EGFR_EGF_2_p_Grb2*GAB_m_p	 ; % 	 760	 EGFR_EGF_2_p_Grb2+GAB_m_p = EGFR_EGF_2_p_Grb2_GAB_m_p
rV(761,1)	=	k_760*EGFR_EGF_2_p_Grb2_GAB_m_p*PI3K	 ; % 	 761	 EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K
rV(762,1)	=	k_761*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K	 ; % 	 762	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K
rV(763,1)	=	k_762*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K	 ; % 	 763	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act
rV(764,1)	=	k_763*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act	 ; % 	 764	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act = EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K_Act
rV(765,1)	=	k_764*EGFR_EGF_2_p_Grb2_GAB_m_p*PI3K_Act	 ; % 	 765	 EGFR_EGF_2_p_Grb2_GAB_m_p+PI3K_Act = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act
rV(766,1)	=	k_765*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP*PI3K	 ; % 	 766	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K
rV(767,1)	=	k_766*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 767	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K
rV(768,1)	=	k_767*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 768	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(769,1)	=	k_768*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act	 ; % 	 769	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K_Act
rV(770,1)	=	k_769*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP*PI3K_Act	 ; % 	 770	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+PI3K_Act = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(771,1)	=	k_770*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP*PI3K	 ; % 	 771	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K
rV(772,1)	=	k_771*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 772	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K
rV(773,1)	=	k_772*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K	 ; % 	 773	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(774,1)	=	k_773*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act	 ; % 	 774	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act
rV(775,1)	=	k_774*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP*PI3K_Act	 ; % 	 775	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+PI3K_Act = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act
rV(776,1)	=	k_775*PI3K_Act*PI3KPase	 ; % 	 776	 PI3K_Act+PI3KPase = PI3K_Act_PI3KPase
rV(777,1)	=	k_776*PI3K_Act_PI3KPase	 ; % 	 777	 PI3K_Act_PI3KPase = PI3K_Act+PI3KPase
rV(778,1)	=	k_777*PI3K_Act_PI3KPase	 ; % 	 778	 PI3K_Act_PI3KPase = PI3K+PI3KPase
rV(779,1)	=	k_778*HER2_2_p_Grb2_GAB_m_p_PI3K_Act*PI3KPase	 ; % 	 779	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
rV(780,1)	=	k_779*HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 ; % 	 780	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase
rV(781,1)	=	k_780*HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 ; % 	 781	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = HER2_2_p_Grb2_GAB_m_p_PI3K+PI3KPase
rV(782,1)	=	k_781*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act*PI3KPase	 ; % 	 782	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
rV(783,1)	=	k_782*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 783	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
rV(784,1)	=	k_783*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 784	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
rV(785,1)	=	k_784*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act*PI3KPase	 ; % 	 785	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
rV(786,1)	=	k_785*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 786	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
rV(787,1)	=	k_786*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 787	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
rV(788,1)	=	k_787*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act*PI3KPase	 ; % 	 788	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase
rV(789,1)	=	k_788*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 ; % 	 789	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PI3KPase
rV(790,1)	=	k_789*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase	 ; % 	 790	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K+PI3KPase
rV(791,1)	=	k_790*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act*PI3KPase	 ; % 	 791	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
rV(792,1)	=	k_791*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 792	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
rV(793,1)	=	k_792*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 793	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
rV(794,1)	=	k_793*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act*PI3KPase	 ; % 	 794	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase
rV(795,1)	=	k_794*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 795	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PI3KPase
rV(796,1)	=	k_795*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase	 ; % 	 796	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PI3KPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K+PI3KPase
rV(797,1)	=	k_796*HER2_2_p*PLCg	 ; % 	 797	 HER2_2_p+PLCg = HER2_2_p_PLCg
rV(798,1)	=	k_797*HER2_2_p_PLCg	 ; % 	 798	 HER2_2_p_PLCg = HER2_2_p+PLCg
rV(799,1)	=	k_798*HER2_2_p_PLCg	 ; % 	 799	 HER2_2_p_PLCg = HER2_2_p_PLCg_p
rV(800,1)	=	k_799*HER2_2_p_PLCg_p	 ; % 	 800	 HER2_2_p_PLCg_p = HER2_2_p+PLCg_p
rV(801,1)	=	k_800*HER2_2_p*PLCg_p	 ; % 	 801	 HER2_2_p+PLCg_p = HER2_2_p_PLCg_p
rV(802,1)	=	k_801*EGFR_EGF_2_p*PLCg	 ; % 	 802	 EGFR_EGF_2_p+PLCg = EGFR_EGF_2_p_PLCg
rV(803,1)	=	k_802*EGFR_EGF_2_p_PLCg	 ; % 	 803	 EGFR_EGF_2_p_PLCg = EGFR_EGF_2_p+PLCg
rV(804,1)	=	k_803*EGFR_EGF_2_p_PLCg	 ; % 	 804	 EGFR_EGF_2_p_PLCg = EGFR_EGF_2_p_PLCg_p
rV(805,1)	=	k_804*EGFR_EGF_2_p_PLCg_p	 ; % 	 805	 EGFR_EGF_2_p_PLCg_p = EGFR_EGF_2_p+PLCg_p
rV(806,1)	=	k_805*EGFR_EGF_2_p*PLCg_p	 ; % 	 806	 EGFR_EGF_2_p+PLCg_p = EGFR_EGF_2_p_PLCg_p
rV(807,1)	=	k_806*PLCg_p*PLCgPase	 ; % 	 807	 PLCg_p+PLCgPase = PLCg_p_PLCgPase
rV(808,1)	=	k_807*PLCg_p_PLCgPase	 ; % 	 808	 PLCg_p_PLCgPase = PLCg_p+PLCgPase
rV(809,1)	=	k_808*PLCg_p_PLCgPase	 ; % 	 809	 PLCg_p_PLCgPase = PLCg+PLCgPase
rV(810,1)	=	k_809*HER2_2_p_PLCg_p*PLCgPase	 ; % 	 810	 HER2_2_p_PLCg_p+PLCgPase = HER2_2_p_PLCg_p_PLCgPase
rV(811,1)	=	k_810*HER2_2_p_PLCg_p_PLCgPase	 ; % 	 811	 HER2_2_p_PLCg_p_PLCgPase = HER2_2_p_PLCg_p+PLCgPase
rV(812,1)	=	k_811*HER2_2_p_PLCg_p_PLCgPase	 ; % 	 812	 HER2_2_p_PLCg_p_PLCgPase = HER2_2_p_PLCg+PLCgPase
rV(813,1)	=	k_812*EGFR_EGF_2_p_PLCg_p*PLCgPase	 ; % 	 813	 EGFR_EGF_2_p_PLCg_p+PLCgPase = EGFR_EGF_2_p_PLCg_p_PLCgPase
rV(814,1)	=	k_813*EGFR_EGF_2_p_PLCg_p_PLCgPase	 ; % 	 814	 EGFR_EGF_2_p_PLCg_p_PLCgPase = EGFR_EGF_2_p_PLCg_p+PLCgPase
rV(815,1)	=	k_814*EGFR_EGF_2_p_PLCg_p_PLCgPase	 ; % 	 815	 EGFR_EGF_2_p_PLCg_p_PLCgPase = EGFR_EGF_2_p_PLCg+PLCgPase
rV(816,1)	=	k_815*PLCg_p*PIP2	 ; % 	 816	 PLCg_p+PIP2 = PLCg_p_PIP2
rV(817,1)	=	k_816*PLCg_p_PIP2	 ; % 	 817	 PLCg_p_PIP2 = PLCg_p+PIP2
rV(818,1)	=	k_817*PLCg_p_PIP2	 ; % 	 818	 PLCg_p_PIP2 = PLCg_p+DAG+IP3
rV(819,1)	=	k_818*HER2_2_p_PLCg_p*PIP2	 ; % 	 819	 HER2_2_p_PLCg_p+PIP2 = HER2_2_p_PLCg_p_PIP2
rV(820,1)	=	k_819*HER2_2_p_PLCg_p_PIP2	 ; % 	 820	 HER2_2_p_PLCg_p_PIP2 = HER2_2_p_PLCg_p+PIP2
rV(821,1)	=	k_820*HER2_2_p_PLCg_p_PIP2	 ; % 	 821	 HER2_2_p_PLCg_p_PIP2 = HER2_2_p_PLCg_p+DAG+IP3
rV(822,1)	=	k_821*EGFR_EGF_2_p_PLCg_p*PIP2	 ; % 	 822	 EGFR_EGF_2_p_PLCg_p+PIP2 = EGFR_EGF_2_p_PLCg_p_PIP2
rV(823,1)	=	k_822*EGFR_EGF_2_p_PLCg_p_PIP2	 ; % 	 823	 EGFR_EGF_2_p_PLCg_p_PIP2 = EGFR_EGF_2_p_PLCg_p+PIP2
rV(824,1)	=	k_823*EGFR_EGF_2_p_PLCg_p_PIP2	 ; % 	 824	 EGFR_EGF_2_p_PLCg_p_PIP2 = EGFR_EGF_2_p_PLCg_p+DAG+IP3
rV(825,1)	=	k_824*DAG*IP3	 ; % 	 825	 DAG+IP3 = PIP2
rV(826,1)	=	k_825*DAG*PKC	 ; % 	 826	 DAG+PKC = DAG_PKC
rV(827,1)	=	k_826*DAG_PKC	 ; % 	 827	 DAG_PKC = DAG+PKC
rV(828,1)	=	k_827*DAG_PKC	 ; % 	 828	 DAG_PKC = DAG+PKC_Act
rV(829,1)	=	k_828*PKC_Act*PKCPase	 ; % 	 829	 PKC_Act+PKCPase = PKC_Act_PKCPase
rV(830,1)	=	k_829*PKC_Act_PKCPase	 ; % 	 830	 PKC_Act_PKCPase = PKC_Act+PKCPase
rV(831,1)	=	k_830*PKC_Act_PKCPase	 ; % 	 831	 PKC_Act_PKCPase = PKC+PKCPase
rV(832,1)	=	k_831*PKC_Act*CK2	 ; % 	 832	 PKC_Act+CK2 = PKC_Act_CK2
rV(833,1)	=	k_832*PKC_Act_CK2	 ; % 	 833	 PKC_Act_CK2 = PKC_Act+CK2
rV(834,1)	=	k_833*PKC_Act_CK2	 ; % 	 834	 PKC_Act_CK2 = PKC_Act+CK2_p
rV(835,1)	=	k_834*CK2Pase*CK2_p	 ; % 	 835	 CK2Pase+CK2_p = CK2Pase_CK2_p
rV(836,1)	=	k_835*CK2Pase_CK2_p	 ; % 	 836	 CK2Pase_CK2_p = CK2Pase+CK2_p
rV(837,1)	=	k_836*CK2Pase_CK2_p	 ; % 	 837	 CK2Pase_CK2_p = CK2Pase+CK2
rV(838,1)	=	k_837*CK2_p*MKP3	 ; % 	 838	 CK2_p+MKP3 = CK2_p_MKP3
rV(839,1)	=	k_838*CK2_p_MKP3	 ; % 	 839	 CK2_p_MKP3 = CK2_p+MKP3
rV(840,1)	=	k_839*CK2_p_MKP3	 ; % 	 840	 CK2_p_MKP3 = CK2_p+MKP3_p
rV(841,1)	=	k_840*PP2A*MKP3_p	 ; % 	 841	 PP2A+MKP3_p = PP2A_MKP3_p
rV(842,1)	=	k_841*PP2A_MKP3_p	 ; % 	 842	 PP2A_MKP3_p = PP2A+MKP3_p
rV(843,1)	=	k_842*PP2A_MKP3_p	 ; % 	 843	 PP2A_MKP3_p = PP2A+MKP3
rV(844,1)	=	k_843*PKC_Act*Ras_GDP	 ; % 	 844	 PKC_Act+Ras_GDP = PKC_Act_Ras_GDP
rV(845,1)	=	k_844*PKC_Act_Ras_GDP	 ; % 	 845	 PKC_Act_Ras_GDP = PKC_Act+Ras_GDP
rV(846,1)	=	k_845*PKC_Act_Ras_GDP	 ; % 	 846	 PKC_Act_Ras_GDP = PKC_Act+Ras_GTP
rV(847,1)	=	k_846*PKC_Act*RAF	 ; % 	 847	 PKC_Act+RAF = PKC_Act_RAF
rV(848,1)	=	k_847*PKC_Act_RAF	 ; % 	 848	 PKC_Act_RAF = PKC_Act+RAF
rV(849,1)	=	k_848*PKC_Act_RAF	 ; % 	 849	 PKC_Act_RAF = PKC_Act+RAF_Act
rV(850,1)	=	k_849*HER2_2_p_Grb2_Sos_Ras_GTP*RAF	 ; % 	 850	 HER2_2_p_Grb2_Sos_Ras_GTP+RAF = HER2_2_p_Grb2_Sos_Ras_GTP_RAF
rV(851,1)	=	k_850*HER2_2_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 851	 HER2_2_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Grb2_Sos_Ras_GTP+RAF
rV(852,1)	=	k_851*HER2_2_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 852	 HER2_2_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Grb2_Sos_Ras_GTP+RAF_Act
rV(853,1)	=	k_852*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP*RAF	 ; % 	 853	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
rV(854,1)	=	k_853*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 854	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF
rV(855,1)	=	k_854*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 855	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF_Act
rV(856,1)	=	k_855*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP*RAF	 ; % 	 856	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF
rV(857,1)	=	k_856*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 857	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF
rV(858,1)	=	k_857*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 858	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP+RAF_Act
rV(859,1)	=	k_858*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP*RAF	 ; % 	 859	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF
rV(860,1)	=	k_859*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 860	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF
rV(861,1)	=	k_860*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF	 ; % 	 861	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_RAF = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP+RAF_Act
rV(862,1)	=	k_861*Ras_GTP*RAF	 ; % 	 862	 Ras_GTP+RAF = Ras_GTP_RAF
rV(863,1)	=	k_862*Ras_GTP_RAF	 ; % 	 863	 Ras_GTP_RAF = Ras_GTP+RAF
rV(864,1)	=	k_863*Ras_GTP_RAF	 ; % 	 864	 Ras_GTP_RAF = Ras_GTP+RAF_Act
rV(865,1)	=	k_864*RAF_Act*PP1	 ; % 	 865	 RAF_Act+PP1 = RAF_Act_PP1
rV(866,1)	=	k_865*RAF_Act_PP1	 ; % 	 866	 RAF_Act_PP1 = RAF_Act+PP1
rV(867,1)	=	k_866*RAF_Act_PP1	 ; % 	 867	 RAF_Act_PP1 = RAF+PP1
rV(868,1)	=	k_867*RAF_Act*PP2A	 ; % 	 868	 RAF_Act+PP2A = RAF_Act_PP2A
rV(869,1)	=	k_868*RAF_Act_PP2A	 ; % 	 869	 RAF_Act_PP2A = RAF_Act+PP2A
rV(870,1)	=	k_869*RAF_Act_PP2A	 ; % 	 870	 RAF_Act_PP2A = RAF+PP2A
rV(871,1)	=	k_870*MEK*RAF_Act	 ; % 	 871	 MEK+RAF_Act = MEK_RAF_Act
rV(872,1)	=	k_871*MEK_RAF_Act	 ; % 	 872	 MEK_RAF_Act = MEK+RAF_Act
rV(873,1)	=	k_872*MEK_RAF_Act	 ; % 	 873	 MEK_RAF_Act = MEK_p+RAF_Act
rV(874,1)	=	k_873*MEK_p*RAF_Act	 ; % 	 874	 MEK_p+RAF_Act = MEK_p_RAF_Act
rV(875,1)	=	k_874*MEK_p_RAF_Act	 ; % 	 875	 MEK_p_RAF_Act = MEK_p+RAF_Act
rV(876,1)	=	k_875*MEK_p_RAF_Act	 ; % 	 876	 MEK_p_RAF_Act = MEK_pp+RAF_Act
rV(877,1)	=	k_876*ERK*MEK_pp	 ; % 	 877	 ERK+MEK_pp = ERK_MEK_pp
rV(878,1)	=	k_877*ERK_MEK_pp	 ; % 	 878	 ERK_MEK_pp = ERK+MEK_pp
rV(879,1)	=	k_878*ERK_MEK_pp	 ; % 	 879	 ERK_MEK_pp = ERK_p+MEK_pp
rV(880,1)	=	k_879*ERK_p*MEK_pp	 ; % 	 880	 ERK_p+MEK_pp = ERK_p_MEK_pp
rV(881,1)	=	k_880*ERK_p_MEK_pp	 ; % 	 881	 ERK_p_MEK_pp = ERK_p+MEK_pp
rV(882,1)	=	k_881*ERK_p_MEK_pp	 ; % 	 882	 ERK_p_MEK_pp = ERK_pp+MEK_pp
rV(883,1)	=	k_882*MEK_p*MKP3_p	 ; % 	 883	 MEK_p+MKP3_p = MEK_p_MKP3_p
rV(884,1)	=	k_883*MEK_p_MKP3_p	 ; % 	 884	 MEK_p_MKP3_p = MEK_p+MKP3_p
rV(885,1)	=	k_884*MEK_p_MKP3_p	 ; % 	 885	 MEK_p_MKP3_p = MEK+MKP3_p
rV(886,1)	=	k_885*MEK_pp*MKP3_p	 ; % 	 886	 MEK_pp+MKP3_p = MEK_pp_MKP3_p
rV(887,1)	=	k_886*MEK_pp_MKP3_p	 ; % 	 887	 MEK_pp_MKP3_p = MEK_pp+MKP3_p
rV(888,1)	=	k_887*MEK_pp_MKP3_p	 ; % 	 888	 MEK_pp_MKP3_p = MEK_p+MKP3_p
rV(889,1)	=	k_888*MEK_p*PP2A	 ; % 	 889	 MEK_p+PP2A = MEK_p_PP2A
rV(890,1)	=	k_889*MEK_p_PP2A	 ; % 	 890	 MEK_p_PP2A = MEK_p+PP2A
rV(891,1)	=	k_890*MEK_p_PP2A	 ; % 	 891	 MEK_p_PP2A = MEK+PP2A
rV(892,1)	=	k_891*MEK_pp*PP2A	 ; % 	 892	 MEK_pp+PP2A = MEK_pp_PP2A
rV(893,1)	=	k_892*MEK_pp_PP2A	 ; % 	 893	 MEK_pp_PP2A = MEK_pp+PP2A
rV(894,1)	=	k_893*MEK_pp_PP2A	 ; % 	 894	 MEK_pp_PP2A = MEK_p+PP2A
rV(895,1)	=	k_894*ERK_p*MKP2	 ; % 	 895	 ERK_p+MKP2 = ERK_p_MKP2
rV(896,1)	=	k_895*ERK_p_MKP2	 ; % 	 896	 ERK_p_MKP2 = ERK_p+MKP2
rV(897,1)	=	k_896*ERK_p_MKP2	 ; % 	 897	 ERK_p_MKP2 = ERK+MKP2
rV(898,1)	=	k_897*ERK_pp*MKP2	 ; % 	 898	 ERK_pp+MKP2 = ERK_pp_MKP2
rV(899,1)	=	k_898*ERK_pp_MKP2	 ; % 	 899	 ERK_pp_MKP2 = ERK_pp+MKP2
rV(900,1)	=	k_899*ERK_pp_MKP2	 ; % 	 900	 ERK_pp_MKP2 = ERK_p+MKP2
rV(901,1)	=	k_900*ERK_p*MKP3_p	 ; % 	 901	 ERK_p+MKP3_p = ERK_p_MKP3_p
rV(902,1)	=	k_901*ERK_p_MKP3_p	 ; % 	 902	 ERK_p_MKP3_p = ERK_p+MKP3_p
rV(903,1)	=	k_902*ERK_p_MKP3_p	 ; % 	 903	 ERK_p_MKP3_p = ERK+MKP3_p
rV(904,1)	=	k_903*ERK_pp*MKP3_p	 ; % 	 904	 ERK_pp+MKP3_p = ERK_pp_MKP3_p
rV(905,1)	=	k_904*ERK_pp_MKP3_p	 ; % 	 905	 ERK_pp_MKP3_p = ERK_pp+MKP3_p
rV(906,1)	=	k_905*ERK_pp_MKP3_p	 ; % 	 906	 ERK_pp_MKP3_p = ERK_p+MKP3_p
rV(907,1)	=	k_906*ERK_p*MKP1	 ; % 	 907	 ERK_p+MKP1 = ERK_p_MKP1
rV(908,1)	=	k_907*ERK_p_MKP1	 ; % 	 908	 ERK_p_MKP1 = ERK_p+MKP1
rV(909,1)	=	k_908*ERK_p_MKP1	 ; % 	 909	 ERK_p_MKP1 = ERK+MKP1
rV(910,1)	=	k_909*ERK_pp*MKP1	 ; % 	 910	 ERK_pp+MKP1 = ERK_pp_MKP1
rV(911,1)	=	k_910*ERK_pp_MKP1	 ; % 	 911	 ERK_pp_MKP1 = ERK_pp+MKP1
rV(912,1)	=	k_911*ERK_pp_MKP1	 ; % 	 912	 ERK_pp_MKP1 = ERK_p+MKP1
rV(913,1)	=	k_912*ERK_p*MKP1_p	 ; % 	 913	 ERK_p+MKP1_p = ERK_p_MKP1_p
rV(914,1)	=	k_913*ERK_p_MKP1_p	 ; % 	 914	 ERK_p_MKP1_p = ERK_p+MKP1_p
rV(915,1)	=	k_914*ERK_p_MKP1_p	 ; % 	 915	 ERK_p_MKP1_p = ERK+MKP1_p
rV(916,1)	=	k_915*ERK_pp*MKP1_p	 ; % 	 916	 ERK_pp+MKP1_p = ERK_pp_MKP1_p
rV(917,1)	=	k_916*ERK_pp_MKP1_p	 ; % 	 917	 ERK_pp_MKP1_p = ERK_pp+MKP1_p
rV(918,1)	=	k_917*ERK_pp_MKP1_p	 ; % 	 918	 ERK_pp_MKP1_p = ERK_p+MKP1_p
rV(919,1)	=	k_918*ERK_pp*MKP1	 ; % 	 919	 ERK_pp+MKP1 = ERK_pp_MKP1
rV(920,1)	=	k_919*ERK_pp_MKP1	 ; % 	 920	 ERK_pp_MKP1 = ERK_pp+MKP1
rV(921,1)	=	k_920*ERK_pp_MKP1	 ; % 	 921	 ERK_pp_MKP1 = ERK_pp+MKP1_p
rV(922,1)	=	k_921*MKP3_p*MKP1_p	 ; % 	 922	 MKP3_p+MKP1_p = MKP3_p_MKP1_p
rV(923,1)	=	k_922*MKP3_p_MKP1_p	 ; % 	 923	 MKP3_p_MKP1_p = MKP3_p+MKP1_p
rV(924,1)	=	k_923*MKP3_p_MKP1_p	 ; % 	 924	 MKP3_p_MKP1_p = MKP3_p+MKP1
rV(925,1)	=	k_924*HER2_2_p_Grb2_Sos*ERK_pp	 ; % 	 925	 HER2_2_p_Grb2_Sos+ERK_pp = HER2_2_p_Grb2_Sos_ERK_pp
rV(926,1)	=	k_925*HER2_2_p_Grb2_Sos_ERK_pp	 ; % 	 926	 HER2_2_p_Grb2_Sos_ERK_pp = HER2_2_p_Grb2_Sos+ERK_pp
rV(927,1)	=	k_926*HER2_2_p_Grb2_Sos_ERK_pp	 ; % 	 927	 HER2_2_p_Grb2_Sos_ERK_pp = HER2_2_p_Grb2_Sos_p+ERK_pp
rV(928,1)	=	k_927*HER2_2_p_Grb2_Sos_p	 ; % 	 928	 HER2_2_p_Grb2_Sos_p = HER2_2_p_Grb2+Sos_p
rV(929,1)	=	k_928*HER2_2_p_Grb2_Sos_p	 ; % 	 929	 HER2_2_p_Grb2_Sos_p = HER2_2_p+Grb2_Sos_p
rV(930,1)	=	k_929*HER2_2_p_Shc_p_Grb2_Sos*ERK_pp	 ; % 	 930	 HER2_2_p_Shc_p_Grb2_Sos+ERK_pp = HER2_2_p_Shc_p_Grb2_Sos_ERK_pp
rV(931,1)	=	k_930*HER2_2_p_Shc_p_Grb2_Sos_ERK_pp	 ; % 	 931	 HER2_2_p_Shc_p_Grb2_Sos_ERK_pp = HER2_2_p_Shc_p_Grb2_Sos+ERK_pp
rV(932,1)	=	k_931*HER2_2_p_Shc_p_Grb2_Sos_ERK_pp	 ; % 	 932	 HER2_2_p_Shc_p_Grb2_Sos_ERK_pp = HER2_2_p_Shc_p_Grb2_Sos_p+ERK_pp
rV(933,1)	=	k_932*HER2_2_p_Shc_p_Grb2_Sos_p	 ; % 	 933	 HER2_2_p_Shc_p_Grb2_Sos_p = HER2_2_p_Shc_p_Grb2+Sos_p
rV(934,1)	=	k_933*HER2_2_p_Shc_p_Grb2_Sos_p	 ; % 	 934	 HER2_2_p_Shc_p_Grb2_Sos_p = HER2_2_p_Shc_p+Grb2_Sos_p
rV(935,1)	=	k_934*EGFR_EGF_2_p_Grb2_Sos*ERK_pp	 ; % 	 935	 EGFR_EGF_2_p_Grb2_Sos+ERK_pp = EGFR_EGF_2_p_Grb2_Sos_ERK_pp
rV(936,1)	=	k_935*EGFR_EGF_2_p_Grb2_Sos_ERK_pp	 ; % 	 936	 EGFR_EGF_2_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Grb2_Sos+ERK_pp
rV(937,1)	=	k_936*EGFR_EGF_2_p_Grb2_Sos_ERK_pp	 ; % 	 937	 EGFR_EGF_2_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Grb2_Sos_p+ERK_pp
rV(938,1)	=	k_937*EGFR_EGF_2_p_Grb2_Sos_p	 ; % 	 938	 EGFR_EGF_2_p_Grb2_Sos_p = EGFR_EGF_2_p_Grb2+Sos_p
rV(939,1)	=	k_938*EGFR_EGF_2_p_Grb2_Sos_p	 ; % 	 939	 EGFR_EGF_2_p_Grb2_Sos_p = EGFR_EGF_2_p+Grb2_Sos_p
rV(940,1)	=	k_939*EGFR_EGF_2_p_Shc_p_Grb2_Sos*ERK_pp	 ; % 	 940	 EGFR_EGF_2_p_Shc_p_Grb2_Sos+ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp
rV(941,1)	=	k_940*EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp	 ; % 	 941	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos+ERK_pp
rV(942,1)	=	k_941*EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp	 ; % 	 942	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_ERK_pp = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+ERK_pp
rV(943,1)	=	k_942*EGFR_EGF_2_p_Shc_p_Grb2_Sos_p	 ; % 	 943	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_p = EGFR_EGF_2_p_Shc_p_Grb2+Sos_p
rV(944,1)	=	k_943*EGFR_EGF_2_p_Shc_p_Grb2_Sos_p	 ; % 	 944	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_p = EGFR_EGF_2_p_Shc_p+Grb2_Sos_p
rV(945,1)	=	k_944*Sos_p*SosPase	 ; % 	 945	 Sos_p+SosPase = Sos_p_SosPase
rV(946,1)	=	k_945*Sos_p_SosPase	 ; % 	 946	 Sos_p_SosPase = Sos_p+SosPase
rV(947,1)	=	k_946*Sos_p_SosPase	 ; % 	 947	 Sos_p_SosPase = Sos+SosPase
rV(948,1)	=	k_947*Grb2_Sos_p*SosPase	 ; % 	 948	 Grb2_Sos_p+SosPase = Grb2_Sos_p_SosPase
rV(949,1)	=	k_948*Grb2_Sos_p_SosPase	 ; % 	 949	 Grb2_Sos_p_SosPase = Grb2_Sos_p+SosPase
rV(950,1)	=	k_949*Grb2_Sos_p_SosPase	 ; % 	 950	 Grb2_Sos_p_SosPase = Grb2_Sos+SosPase
rV(951,1)	=	k_950*HER2_2_p_Grb2_Sos_p*SosPase	 ; % 	 951	 HER2_2_p_Grb2_Sos_p+SosPase = HER2_2_p_Grb2_Sos_p_SosPase
rV(952,1)	=	k_951*HER2_2_p_Grb2_Sos_p_SosPase	 ; % 	 952	 HER2_2_p_Grb2_Sos_p_SosPase = HER2_2_p_Grb2_Sos_p+SosPase
rV(953,1)	=	k_952*HER2_2_p_Grb2_Sos_p_SosPase	 ; % 	 953	 HER2_2_p_Grb2_Sos_p_SosPase = HER2_2_p_Grb2_Sos+SosPase
rV(954,1)	=	k_953*HER2_2_p_Shc_p_Grb2_Sos_p*SosPase	 ; % 	 954	 HER2_2_p_Shc_p_Grb2_Sos_p+SosPase = HER2_2_p_Shc_p_Grb2_Sos_p_SosPase
rV(955,1)	=	k_954*HER2_2_p_Shc_p_Grb2_Sos_p_SosPase	 ; % 	 955	 HER2_2_p_Shc_p_Grb2_Sos_p_SosPase = HER2_2_p_Shc_p_Grb2_Sos_p+SosPase
rV(956,1)	=	k_955*HER2_2_p_Shc_p_Grb2_Sos_p_SosPase	 ; % 	 956	 HER2_2_p_Shc_p_Grb2_Sos_p_SosPase = HER2_2_p_Shc_p_Grb2_Sos+SosPase
rV(957,1)	=	k_956*EGFR_EGF_2_p_Grb2_Sos_p*SosPase	 ; % 	 957	 EGFR_EGF_2_p_Grb2_Sos_p+SosPase = EGFR_EGF_2_p_Grb2_Sos_p_SosPase
rV(958,1)	=	k_957*EGFR_EGF_2_p_Grb2_Sos_p_SosPase	 ; % 	 958	 EGFR_EGF_2_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Grb2_Sos_p+SosPase
rV(959,1)	=	k_958*EGFR_EGF_2_p_Grb2_Sos_p_SosPase	 ; % 	 959	 EGFR_EGF_2_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Grb2_Sos+SosPase
rV(960,1)	=	k_959*EGFR_EGF_2_p_Shc_p_Grb2_Sos_p*SosPase	 ; % 	 960	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase
rV(961,1)	=	k_960*EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase	 ; % 	 961	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos_p+SosPase
rV(962,1)	=	k_961*EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase	 ; % 	 962	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_p_SosPase = EGFR_EGF_2_p_Shc_p_Grb2_Sos+SosPase
rV(963,1)	=	k_962*ERK_pp*MEK	 ; % 	 963	 ERK_pp+MEK = ERK_pp_MEK
rV(964,1)	=	k_963*ERK_pp_MEK	 ; % 	 964	 ERK_pp_MEK = ERK_pp+MEK
rV(965,1)	=	k_964*ERK_pp_MEK	 ; % 	 965	 ERK_pp_MEK = ERK_pp+MEK_rp
rV(966,1)	=	k_965*MEK_rp*MKP3_p	 ; % 	 966	 MEK_rp+MKP3_p = MEK_rp_MKP3_p
rV(967,1)	=	k_966*MEK_rp_MKP3_p	 ; % 	 967	 MEK_rp_MKP3_p = MEK_rp+MKP3_p
rV(968,1)	=	k_967*MEK_rp_MKP3_p	 ; % 	 968	 MEK_rp_MKP3_p = MEK+MKP3_p
rV(969,1)	=	k_968*MEK_rp*PP2A	 ; % 	 969	 MEK_rp+PP2A = MEK_rp_PP2A
rV(970,1)	=	k_969*MEK_rp_PP2A	 ; % 	 970	 MEK_rp_PP2A = MEK_rp+PP2A
rV(971,1)	=	k_970*MEK_rp_PP2A	 ; % 	 971	 MEK_rp_PP2A = MEK+PP2A
rV(972,1)	=	k_971*ERK_pp*RAF_Act	 ; % 	 972	 ERK_pp+RAF_Act = ERK_pp_RAF_Act
rV(973,1)	=	k_972*ERK_pp_RAF_Act	 ; % 	 973	 ERK_pp_RAF_Act = ERK_pp+RAF_Act
rV(974,1)	=	k_973*ERK_pp_RAF_Act	 ; % 	 974	 ERK_pp_RAF_Act = ERK_pp+RAF_Act_Inhib
rV(975,1)	=	k_974*AKT_p*RAF	 ; % 	 975	 AKT_p+RAF = AKT_p_RAF
rV(976,1)	=	k_975*AKT_p_RAF	 ; % 	 976	 AKT_p_RAF = AKT_p+RAF
rV(977,1)	=	k_976*AKT_p_RAF	 ; % 	 977	 AKT_p_RAF = AKT_p+RAF_Inhib
rV(978,1)	=	k_977*AKT_p*RAF_Act	 ; % 	 978	 AKT_p+RAF_Act = AKT_p_RAF_Act
rV(979,1)	=	k_978*AKT_p_RAF_Act	 ; % 	 979	 AKT_p_RAF_Act = AKT_p+RAF_Act
rV(980,1)	=	k_979*AKT_p_RAF_Act	 ; % 	 980	 AKT_p_RAF_Act = AKT_p+RAF_Act_Inhib
rV(981,1)	=	k_980*RAF_Inhib*PP1	 ; % 	 981	 RAF_Inhib+PP1 = RAF_Inhib_PP1
rV(982,1)	=	k_981*RAF_Inhib_PP1	 ; % 	 982	 RAF_Inhib_PP1 = RAF_Inhib+PP1
rV(983,1)	=	k_982*RAF_Inhib_PP1	 ; % 	 983	 RAF_Inhib_PP1 = RAF+PP1
rV(984,1)	=	k_983*RAF_Act_Inhib*PP1	 ; % 	 984	 RAF_Act_Inhib+PP1 = RAF_Act_Inhib_PP1
rV(985,1)	=	k_984*RAF_Act_Inhib_PP1	 ; % 	 985	 RAF_Act_Inhib_PP1 = RAF_Act_Inhib+PP1
rV(986,1)	=	k_985*RAF_Act_Inhib_PP1	 ; % 	 986	 RAF_Act_Inhib_PP1 = RAF_Act+PP1
rV(987,1)	=	k_986*RAF_Inhib*PP2A	 ; % 	 987	 RAF_Inhib+PP2A = RAF_Inhib_PP2A
rV(988,1)	=	k_987*RAF_Inhib_PP2A	 ; % 	 988	 RAF_Inhib_PP2A = RAF_Inhib+PP2A
rV(989,1)	=	k_988*RAF_Inhib_PP2A	 ; % 	 989	 RAF_Inhib_PP2A = RAF+PP2A
rV(990,1)	=	k_989*ERK_pp*cPLA2	 ; % 	 990	 ERK_pp+cPLA2 = ERK_pp_cPLA2
rV(991,1)	=	k_990*ERK_pp_cPLA2	 ; % 	 991	 ERK_pp_cPLA2 = ERK_pp+cPLA2
rV(992,1)	=	k_991*ERK_pp_cPLA2	 ; % 	 992	 ERK_pp_cPLA2 = ERK_pp+cPLA2_p
rV(993,1)	=	k_992*cPLA2_p*cPLA2Pase	 ; % 	 993	 cPLA2_p+cPLA2Pase = cPLA2_p_cPLA2Pase
rV(994,1)	=	k_993*cPLA2_p_cPLA2Pase	 ; % 	 994	 cPLA2_p_cPLA2Pase = cPLA2_p+cPLA2Pase
rV(995,1)	=	k_994*cPLA2_p_cPLA2Pase	 ; % 	 995	 cPLA2_p_cPLA2Pase = cPLA2+cPLA2Pase
rV(996,1)	=	k_995*cPLA2_p*PKC	 ; % 	 996	 cPLA2_p+PKC = cPLA2_p_PKC
rV(997,1)	=	k_996*cPLA2_p_PKC	 ; % 	 997	 cPLA2_p_PKC = cPLA2_p+PKC
rV(998,1)	=	k_997*cPLA2_p_PKC	 ; % 	 998	 cPLA2_p_PKC = cPLA2_p+PKC_Act
rV(999,1)	=	k_998*PI3K_Act*PIP2	 ; % 	 999	 PI3K_Act+PIP2 = PI3K_Act_PIP2
rV(1000,1)	=	k_999*PI3K_Act_PIP2	 ; % 	 1000	 PI3K_Act_PIP2 = PI3K_Act+PIP2
rV(1001,1)	=	k_1000*PI3K_Act_PIP2	 ; % 	 1001	 PI3K_Act_PIP2 = PI3K_Act+PIP3
rV(1002,1)	=	k_1001*HER2_2_p_Grb2_GAB_m_p_PI3K_Act*PIP2	 ; % 	 1002	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
rV(1003,1)	=	k_1002*HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 ; % 	 1003	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2
rV(1004,1)	=	k_1003*HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 ; % 	 1004	 HER2_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = HER2_2_p_Grb2_GAB_m_p_PI3K_Act+PIP3
rV(1005,1)	=	k_1004*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act*PIP2	 ; % 	 1005	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
rV(1006,1)	=	k_1005*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1006	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
rV(1007,1)	=	k_1006*HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1007	 HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
rV(1008,1)	=	k_1007*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act*PIP2	 ; % 	 1008	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
rV(1009,1)	=	k_1008*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1009	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
rV(1010,1)	=	k_1009*HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1010	 HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = HER2_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
rV(1011,1)	=	k_1010*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act*PIP2	 ; % 	 1011	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2
rV(1012,1)	=	k_1011*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 ; % 	 1012	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP2
rV(1013,1)	=	k_1012*EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2	 ; % 	 1013	 EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_GAB_m_p_PI3K_Act+PIP3
rV(1014,1)	=	k_1013*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act*PIP2	 ; % 	 1014	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
rV(1015,1)	=	k_1014*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1015	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
rV(1016,1)	=	k_1015*EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1016	 EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
rV(1017,1)	=	k_1016*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act*PIP2	 ; % 	 1017	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2
rV(1018,1)	=	k_1017*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1018	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP2
rV(1019,1)	=	k_1018*EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2	 ; % 	 1019	 EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act_PIP2 = EGFR_EGF_2_p_Shc_p_Grb2_Sos_Ras_GTP_PI3K_Act+PIP3
rV(1020,1)	=	k_1019*PIP3*GAB	 ; % 	 1020	 PIP3+GAB = PIP3_GAB
rV(1021,1)	=	k_1020*PIP3_GAB	 ; % 	 1021	 PIP3_GAB = PIP3+GAB
rV(1022,1)	=	k_1021*PIP3_GAB	 ; % 	 1022	 PIP3_GAB = PIP3+GAB_m
rV(1023,1)	=	k_1022*PIP3*PTEN	 ; % 	 1023	 PIP3+PTEN = PIP3_PTEN
rV(1024,1)	=	k_1023*PIP3_PTEN	 ; % 	 1024	 PIP3_PTEN = PIP3+PTEN
rV(1025,1)	=	k_1024*PIP3_PTEN	 ; % 	 1025	 PIP3_PTEN = PIP2+PTEN
rV(1026,1)	=	k_1025*PIP3*AKT	 ; % 	 1026	 PIP3+AKT = PIP3_AKT
rV(1027,1)	=	k_1026*PIP3_AKT	 ; % 	 1027	 PIP3_AKT = PIP3+AKT
rV(1028,1)	=	k_1027*PIP3_AKT	 ; % 	 1028	 PIP3_AKT = PIP3+AKT_m
rV(1029,1)	=	k_1028*PIP3*PDK1	 ; % 	 1029	 PIP3+PDK1 = PIP3_PDK1
rV(1030,1)	=	k_1029*PIP3_PDK1	 ; % 	 1030	 PIP3_PDK1 = PIP3+PDK1
rV(1031,1)	=	k_1030*PIP3_PDK1	 ; % 	 1031	 PIP3_PDK1 = PIP3+PDK1_m
rV(1032,1)	=	k_1031*PDK1_m*AKT_m	 ; % 	 1032	 PDK1_m+AKT_m = PDK1_m_AKT_m
rV(1033,1)	=	k_1032*PDK1_m_AKT_m	 ; % 	 1033	 PDK1_m_AKT_m = PDK1_m+AKT_m
rV(1034,1)	=	k_1033*PDK1_m_AKT_m	 ; % 	 1034	 PDK1_m_AKT_m = PDK1_m+AKT_p
rV(1035,1)	=	k_1034*AKT_m	 ; % 	 1035	 AKT_m = AKT
rV(1036,1)	=	k_1035*PDK1_m	 ; % 	 1036	 PDK1_m = PDK1
rV(1037,1)	=	k_1036*AKT_p*PP2A	 ; % 	 1037	 AKT_p+PP2A = AKT_p_PP2A
rV(1038,1)	=	k_1037*AKT_p_PP2A	 ; % 	 1038	 AKT_p_PP2A = AKT_p+PP2A
rV(1039,1)	=	k_1038*AKT_p_PP2A	 ; % 	 1039	 AKT_p_PP2A = AKT+PP2A
rV(1040,1)	=	k_1039*AKT_p*TOR	 ; % 	 1040	 AKT_p+TOR = AKT_p_TOR
rV(1041,1)	=	k_1040*AKT_p_TOR	 ; % 	 1041	 AKT_p_TOR = AKT_p+TOR
rV(1042,1)	=	k_1041*AKT_p_TOR	 ; % 	 1042	 AKT_p_TOR = AKT_p+TOR_Act
rV(1043,1)	=	k_1042*TOR_Act*TORPase	 ; % 	 1043	 TOR_Act+TORPase = TOR_Act_TORPase
rV(1044,1)	=	k_1043*TOR_Act_TORPase	 ; % 	 1044	 TOR_Act_TORPase = TOR_Act+TORPase
rV(1045,1)	=	k_1044*TOR_Act_TORPase	 ; % 	 1045	 TOR_Act_TORPase = TOR+TORPase
rV(1046,1)	=	k_1045*TSC1*TSC2	 ; % 	 1046	 TSC1+TSC2 = TSC1_TSC2
rV(1047,1)	=	k_1046*TSC1_TSC2	 ; % 	 1047	 TSC1_TSC2 = TSC1+TSC2
rV(1048,1)	=	k_1047*Rheb_GTP*TSC1_TSC2	 ; % 	 1048	 Rheb_GTP+TSC1_TSC2 = Rheb_GTP_TSC1_TSC2
rV(1049,1)	=	k_1048*Rheb_GTP_TSC1_TSC2	 ; % 	 1049	 Rheb_GTP_TSC1_TSC2 = Rheb_GTP+TSC1_TSC2
rV(1050,1)	=	k_1049*Rheb_GTP_TSC1_TSC2	 ; % 	 1050	 Rheb_GTP_TSC1_TSC2 = Rheb_GDP+TSC1_TSC2
rV(1051,1)	=	k_1050*Rheb_GTP*TSC1	 ; % 	 1051	 Rheb_GTP+TSC1 = Rheb_GTP_TSC1
rV(1052,1)	=	k_1051*Rheb_GTP_TSC1	 ; % 	 1052	 Rheb_GTP_TSC1 = Rheb_GTP+TSC1
rV(1053,1)	=	k_1052*Rheb_GTP_TSC1	 ; % 	 1053	 Rheb_GTP_TSC1 = Rheb_GDP+TSC1
rV(1054,1)	=	k_1053*Rheb_GTP*TSC2	 ; % 	 1054	 Rheb_GTP+TSC2 = Rheb_GTP_TSC2
rV(1055,1)	=	k_1054*Rheb_GTP_TSC2	 ; % 	 1055	 Rheb_GTP_TSC2 = Rheb_GTP+TSC2
rV(1056,1)	=	k_1055*Rheb_GTP_TSC2	 ; % 	 1056	 Rheb_GTP_TSC2 = Rheb_GDP+TSC2
rV(1057,1)	=	k_1056*Rheb_GDP*RhebGEF	 ; % 	 1057	 Rheb_GDP+RhebGEF = Rheb_GDP_RhebGEF
rV(1058,1)	=	k_1057*Rheb_GDP_RhebGEF	 ; % 	 1058	 Rheb_GDP_RhebGEF = Rheb_GDP+RhebGEF
rV(1059,1)	=	k_1058*Rheb_GDP_RhebGEF	 ; % 	 1059	 Rheb_GDP_RhebGEF = Rheb_GTP+RhebGEF
rV(1060,1)	=	k_1059*Rheb_GTP*TOR	 ; % 	 1060	 Rheb_GTP+TOR = Rheb_GTP_TOR
rV(1061,1)	=	k_1060*Rheb_GTP_TOR	 ; % 	 1061	 Rheb_GTP_TOR = Rheb_GTP+TOR
rV(1062,1)	=	k_1061*Rheb_GTP_TOR	 ; % 	 1062	 Rheb_GTP_TOR = Rheb_GTP+TOR_Act
rV(1063,1)	=	k_1062*TSC1*AKT_p	 ; % 	 1063	 TSC1+AKT_p = TSC1_AKT_p
rV(1064,1)	=	k_1063*TSC1_AKT_p	 ; % 	 1064	 TSC1_AKT_p = TSC1+AKT_p
rV(1065,1)	=	k_1064*TSC1_AKT_p	 ; % 	 1065	 TSC1_AKT_p = TSC1_p+AKT_p
rV(1066,1)	=	k_1065*TSC2*AKT_p	 ; % 	 1066	 TSC2+AKT_p = TSC2_AKT_p
rV(1067,1)	=	k_1066*TSC2_AKT_p	 ; % 	 1067	 TSC2_AKT_p = TSC2+AKT_p
rV(1068,1)	=	k_1067*TSC2_AKT_p	 ; % 	 1068	 TSC2_AKT_p = TSC2_p+AKT_p
rV(1069,1)	=	k_1068*TSC1_TSC2*AKT_p	 ; % 	 1069	 TSC1_TSC2+AKT_p = TSC1_TSC2_AKT_p
rV(1070,1)	=	k_1069*TSC1_TSC2_AKT_p	 ; % 	 1070	 TSC1_TSC2_AKT_p = TSC1_TSC2+AKT_p
rV(1071,1)	=	k_1070*TSC1_TSC2_AKT_p	 ; % 	 1071	 TSC1_TSC2_AKT_p = TSC1_TSC2_p+AKT_p
rV(1072,1)	=	k_1071*TSC2*ERK_pp	 ; % 	 1072	 TSC2+ERK_pp = TSC2_ERK_pp
rV(1073,1)	=	k_1072*TSC2_ERK_pp	 ; % 	 1073	 TSC2_ERK_pp = TSC2+ERK_pp
rV(1074,1)	=	k_1073*TSC2_ERK_pp	 ; % 	 1074	 TSC2_ERK_pp = TSC2_p+ERK_pp
rV(1075,1)	=	k_1074*TSC1_TSC2*ERK_pp	 ; % 	 1075	 TSC1_TSC2+ERK_pp = TSC1_TSC2_ERK_pp
rV(1076,1)	=	k_1075*TSC1_TSC2_ERK_pp	 ; % 	 1076	 TSC1_TSC2_ERK_pp = TSC1_TSC2+ERK_pp
rV(1077,1)	=	k_1076*TSC1_TSC2_ERK_pp	 ; % 	 1077	 TSC1_TSC2_ERK_pp = TSC1_TSC2_p+ERK_pp
rV(1078,1)	=	k_1077*TSC1_p*TSCPase	 ; % 	 1078	 TSC1_p+TSCPase = TSC1_p_TSCPase
rV(1079,1)	=	k_1078*TSC1_p_TSCPase	 ; % 	 1079	 TSC1_p_TSCPase = TSC1_p+TSCPase
rV(1080,1)	=	k_1079*TSC1_p_TSCPase	 ; % 	 1080	 TSC1_p_TSCPase = TSC1+TSCPase
rV(1081,1)	=	k_1080*TSC2_p*TSCPase	 ; % 	 1081	 TSC2_p+TSCPase = TSC2_p_TSCPase
rV(1082,1)	=	k_1081*TSC2_p_TSCPase	 ; % 	 1082	 TSC2_p_TSCPase = TSC2_p+TSCPase
rV(1083,1)	=	k_1082*TSC2_p_TSCPase	 ; % 	 1083	 TSC2_p_TSCPase = TSC2+TSCPase
rV(1084,1)	=	k_1083*TSC1_TSC2_p*TSCPase	 ; % 	 1084	 TSC1_TSC2_p+TSCPase = TSC1_TSC2_p_TSCPase
rV(1085,1)	=	k_1084*TSC1_TSC2_p_TSCPase	 ; % 	 1085	 TSC1_TSC2_p_TSCPase = TSC1_TSC2_p+TSCPase
rV(1086,1)	=	k_1085*TSC1_TSC2_p_TSCPase	 ; % 	 1086	 TSC1_TSC2_p_TSCPase = TSC1_TSC2+TSCPase
rV(1087,1)	=	k_1086*R4EBP1*eIF4E	 ; % 	 1087	 R4EBP1+eIF4E = R4EBP1_eIF4E
rV(1088,1)	=	k_1087*R4EBP1_eIF4E	 ; % 	 1088	 R4EBP1_eIF4E = R4EBP1+eIF4E
rV(1089,1)	=	k_1088*R4EBP1*TOR_Act	 ; % 	 1089	 R4EBP1+TOR_Act = R4EBP1_TOR_Act
rV(1090,1)	=	k_1089*R4EBP1_TOR_Act	 ; % 	 1090	 R4EBP1_TOR_Act = R4EBP1+TOR_Act
rV(1091,1)	=	k_1090*R4EBP1_TOR_Act	 ; % 	 1091	 R4EBP1_TOR_Act = R4EBP1_p+TOR_Act
rV(1092,1)	=	k_1091*R4EBP1_eIF4E*TOR_Act	 ; % 	 1092	 R4EBP1_eIF4E+TOR_Act = R4EBP1_eIF4E_TOR_Act
rV(1093,1)	=	k_1092*R4EBP1_eIF4E_TOR_Act	 ; % 	 1093	 R4EBP1_eIF4E_TOR_Act = R4EBP1_eIF4E+TOR_Act
rV(1094,1)	=	k_1093*R4EBP1_eIF4E_TOR_Act	 ; % 	 1094	 R4EBP1_eIF4E_TOR_Act = R4EBP1_p+eIF4E+TOR_Act
rV(1095,1)	=	k_1094*R4EBP1_p*R4EBP1Pase	 ; % 	 1095	 R4EBP1_p+R4EBP1Pase = R4EBP1_p_R4EBP1Pase
rV(1096,1)	=	k_1095*R4EBP1_p_R4EBP1Pase	 ; % 	 1096	 R4EBP1_p_R4EBP1Pase = R4EBP1_p+R4EBP1Pase
rV(1097,1)	=	k_1096*R4EBP1_p_R4EBP1Pase	 ; % 	 1097	 R4EBP1_p_R4EBP1Pase = R4EBP1+R4EBP1Pase
rV(1098,1)	=	k_1097*p70*TOR_Act	 ; % 	 1098	 p70+TOR_Act = p70_TOR_Act
rV(1099,1)	=	k_1098*p70_TOR_Act	 ; % 	 1099	 p70_TOR_Act = p70+TOR_Act
rV(1100,1)	=	k_1099*p70_TOR_Act	 ; % 	 1100	 p70_TOR_Act = p70_Act+TOR_Act
rV(1101,1)	=	k_1100*p70_Act*Ribo40S_inact	 ; % 	 1101	 p70_Act+Ribo40S_inact = p70_Act_Ribo40S_inact
rV(1102,1)	=	k_1101*p70_Act_Ribo40S_inact	 ; % 	 1102	 p70_Act_Ribo40S_inact = p70_Act+Ribo40S_inact
rV(1103,1)	=	k_1102*p70_Act_Ribo40S_inact	 ; % 	 1103	 p70_Act_Ribo40S_inact = p70_Act+Ribo40S
rV(1104,1)	=	k_1103*p70_Act*p70Pase	 ; % 	 1104	 p70_Act+p70Pase = p70_Act_p70Pase
rV(1105,1)	=	k_1104*p70_Act_p70Pase	 ; % 	 1105	 p70_Act_p70Pase = p70_Act+p70Pase
rV(1106,1)	=	k_1105*p70_Act_p70Pase	 ; % 	 1106	 p70_Act_p70Pase = p70+p70Pase
rV(1107,1)	=	k_1106*Ribo40S*Ribo40SPase	 ; % 	 1107	 Ribo40S+Ribo40SPase = Ribo40S_Ribo40SPase
rV(1108,1)	=	k_1107*Ribo40S_Ribo40SPase	 ; % 	 1108	 Ribo40S_Ribo40SPase = Ribo40S+Ribo40SPase
rV(1109,1)	=	k_1108*Ribo40S_Ribo40SPase	 ; % 	 1109	 Ribo40S_Ribo40SPase = Ribo40S_inact+Ribo40SPase
rV(1110,1)	=	k_1109*HER2_2_p*cPAcP	 ; % 	 1110	 HER2_2_p+cPAcP = HER2_2_p_cPAcP
rV(1111,1)	=	k_1110*HER2_2_p_cPAcP	 ; % 	 1111	 HER2_2_p_cPAcP = HER2_2_p+cPAcP
rV(1112,1)	=	k_1111*HER2_2_p_cPAcP	 ; % 	 1112	 HER2_2_p_cPAcP = HER2_2+cPAcP
rV(1113,1)	=	k_1112*EGFR_EGF_2_p*cPAcP	 ; % 	 1113	 EGFR_EGF_2_p+cPAcP = EGFR_EGF_2_p_cPAcP
rV(1114,1)	=	k_1113*EGFR_EGF_2_p_cPAcP	 ; % 	 1114	 EGFR_EGF_2_p_cPAcP = EGFR_EGF_2_p+cPAcP
rV(1115,1)	=	k_1114*EGFR_EGF_2_p_cPAcP	 ; % 	 1115	 EGFR_EGF_2_p_cPAcP = EGFR_EGF_2+cPAcP
rV(1116,1)	=	k_1115*cPAcP*cPAcP	 ; % 	 1116	 2*cPAcP = cPAcP_2
rV(1117,1)	=	k_1116*cPAcP_2	 ; % 	 1117	 cPAcP_2 = 2*cPAcP
rV(1118,1)	=	k_1117*cPAcP_2*cPAcP_2	 ; % 	 1118	 2*cPAcP_2 = cPAcP_4
rV(1119,1)	=	k_1118*cPAcP_4	 ; % 	 1119	 cPAcP_4 = 2*cPAcP_2
rV(1120,1)	=	k_1119*HER2_2_p*HER2_2_p*cPAcP_2	 ; % 	 1120	 2*HER2_2_p+cPAcP_2 = HER2_2_p_cPAcP_2
rV(1121,1)	=	k_1120*HER2_2_p_cPAcP_2	 ; % 	 1121	 HER2_2_p_cPAcP_2 = 2*HER2_2_p+cPAcP_2
rV(1122,1)	=	k_1121*HER2_2_p_cPAcP_2	 ; % 	 1122	 HER2_2_p_cPAcP_2 = 2*HER2_2+cPAcP_2
rV(1123,1)	=	k_1122*HER2_2_p*HER2_2_p*HER2_2_p*HER2_2_p*cPAcP_4	 ; % 	 1123	 4*HER2_2_p+cPAcP_4 = HER2_2_p_cPAcP_4
rV(1124,1)	=	k_1123*HER2_2_p_cPAcP_4	 ; % 	 1124	 HER2_2_p_cPAcP_4 = 4*HER2_2_p+cPAcP_4
rV(1125,1)	=	k_1124*HER2_2_p_cPAcP_4	 ; % 	 1125	 HER2_2_p_cPAcP_4 = 4*HER2_2+cPAcP_4
rV(1126,1)	=	k_1125*HER2_2*sPAcP	 ; % 	 1126	 HER2_2+sPAcP = HER2_2_sPAcP
rV(1127,1)	=	k_1126*HER2_2_sPAcP	 ; % 	 1127	 HER2_2_sPAcP = HER2_2+sPAcP
rV(1128,1)	=	k_1127*HER2_2_sPAcP	 ; % 	 1128	 HER2_2_sPAcP = HER2_2_p+sPAcP
rV(1129,1)	=	k_1128*sPAcP	 ; % 	 1129	 sPAcP = sPAcP_e
rV(1130,1)	=	k_1129*sPAcP_e	 ; % 	 1130	 sPAcP_e = sPAcP
rV(1131,1)	=	k_1130*sPAcP_e	 ; % 	 1131	 sPAcP_e = []
rV(1132,1)	=	k_1131*ERK_pp*AR	 ; % 	 1132	 ERK_pp+AR = ERK_pp_AR
rV(1133,1)	=	k_1132*ERK_pp_AR	 ; % 	 1133	 ERK_pp_AR = ERK_pp+AR
rV(1134,1)	=	k_1133*ERK_pp_AR	 ; % 	 1134	 ERK_pp_AR = ERK_pp+AR_p
rV(1135,1)	=	k_1134*AKT_p*AR	 ; % 	 1135	 AKT_p+AR = AKT_p_AR
rV(1136,1)	=	k_1135*AKT_p_AR	 ; % 	 1136	 AKT_p_AR = AKT_p+AR
rV(1137,1)	=	k_1136*AKT_p_AR	 ; % 	 1137	 AKT_p_AR = AKT_p+AR_p
rV(1138,1)	=	k_1137*Import*ETS	 ; % 	 1138	 Import+ETS = Import_ETS
rV(1139,1)	=	k_1138*Import_ETS	 ; % 	 1139	 Import_ETS = Import+ETS
rV(1140,1)	=	k_1139*Import_ETS	 ; % 	 1140	 Import_ETS = Import+ETS_n
rV(1141,1)	=	k_1140*Export*ETS_n	 ; % 	 1141	 Export+ETS_n = Export_ETS_n
rV(1142,1)	=	k_1141*Export_ETS_n	 ; % 	 1142	 Export_ETS_n = Export+ETS_n
rV(1143,1)	=	k_1142*Export_ETS_n	 ; % 	 1143	 Export_ETS_n = Export+ETS
rV(1144,1)	=	k_1143*Import*AP1	 ; % 	 1144	 Import+AP1 = Import_AP1
rV(1145,1)	=	k_1144*Import_AP1	 ; % 	 1145	 Import_AP1 = Import+AP1
rV(1146,1)	=	k_1145*Import_AP1	 ; % 	 1146	 Import_AP1 = Import+AP1_n
rV(1147,1)	=	k_1146*Export*AP1_n	 ; % 	 1147	 Export+AP1_n = Export_AP1_n
rV(1148,1)	=	k_1147*Export_AP1_n	 ; % 	 1148	 Export_AP1_n = Export+AP1_n
rV(1149,1)	=	k_1148*Export_AP1_n	 ; % 	 1149	 Export_AP1_n = Export+AP1
rV(1150,1)	=	k_1149*ETS_n	 ; % 	 1150	 ETS_n = []
rV(1151,1)	=	k_1150*AP1_n	 ; % 	 1151	 AP1_n = []
rV(1152,1)	=	k_1151*Import*ERK_pp	 ; % 	 1152	 Import+ERK_pp = Import_ERK_pp
rV(1153,1)	=	k_1152*Import_ERK_pp	 ; % 	 1153	 Import_ERK_pp = Import+ERK_pp
rV(1154,1)	=	k_1153*Import_ERK_pp	 ; % 	 1154	 Import_ERK_pp = Import+ERK_pp_n
rV(1155,1)	=	k_1154*Export*ERK_pp_n	 ; % 	 1155	 Export+ERK_pp_n = Export_ERK_pp_n
rV(1156,1)	=	k_1155*Export_ERK_pp_n	 ; % 	 1156	 Export_ERK_pp_n = Export+ERK_pp_n
rV(1157,1)	=	k_1156*Export_ERK_pp_n	 ; % 	 1157	 Export_ERK_pp_n = Export+ERK_pp
rV(1158,1)	=	k_1157*ERK_pp*ETS	 ; % 	 1158	 ERK_pp+ETS = ERK_pp_ETS
rV(1159,1)	=	k_1158*ERK_pp_ETS	 ; % 	 1159	 ERK_pp_ETS = ERK_pp+ETS
rV(1160,1)	=	k_1159*ERK_pp_ETS	 ; % 	 1160	 ERK_pp_ETS = ERK_pp+ETS_p
rV(1161,1)	=	k_1160*ERK_pp_n*ETS_n	 ; % 	 1161	 ERK_pp_n+ETS_n = ERK_pp_n_ETS_n
rV(1162,1)	=	k_1161*ERK_pp_n_ETS_n	 ; % 	 1162	 ERK_pp_n_ETS_n = ERK_pp_n+ETS_n
rV(1163,1)	=	k_1162*ERK_pp_n_ETS_n	 ; % 	 1163	 ERK_pp_n_ETS_n = ERK_pp_n+ETS_p_n
rV(1164,1)	=	k_1163*ERK_pp*AP1	 ; % 	 1164	 ERK_pp+AP1 = ERK_pp_AP1
rV(1165,1)	=	k_1164*ERK_pp_AP1	 ; % 	 1165	 ERK_pp_AP1 = ERK_pp+AP1
rV(1166,1)	=	k_1165*ERK_pp_AP1	 ; % 	 1166	 ERK_pp_AP1 = ERK_pp+AP1_p
rV(1167,1)	=	k_1166*ERK_pp_n*AP1_n	 ; % 	 1167	 ERK_pp_n+AP1_n = ERK_pp_n_AP1_n
rV(1168,1)	=	k_1167*ERK_pp_n_AP1_n	 ; % 	 1168	 ERK_pp_n_AP1_n = ERK_pp_n+AP1_n
rV(1169,1)	=	k_1168*ERK_pp_n_AP1_n	 ; % 	 1169	 ERK_pp_n_AP1_n = ERK_pp_n+AP1_p_n
rV(1170,1)	=	k_1169*PKC_Act*ETS	 ; % 	 1170	 PKC_Act+ETS = PKC_Act_ETS
rV(1171,1)	=	k_1170*PKC_Act_ETS	 ; % 	 1171	 PKC_Act_ETS = PKC_Act+ETS
rV(1172,1)	=	k_1171*PKC_Act_ETS	 ; % 	 1172	 PKC_Act_ETS = PKC_Act+ETS_p
rV(1173,1)	=	k_1172*Import*ETS_p	 ; % 	 1173	 Import+ETS_p = Import_ETS_p
rV(1174,1)	=	k_1173*Import_ETS_p	 ; % 	 1174	 Import_ETS_p = Import+ETS_p
rV(1175,1)	=	k_1174*Import_ETS_p	 ; % 	 1175	 Import_ETS_p = Import+ETS_p_n
rV(1176,1)	=	k_1175*Export*ETS_p_n	 ; % 	 1176	 Export+ETS_p_n = Export_ETS_p_n
rV(1177,1)	=	k_1176*Export_ETS_p_n	 ; % 	 1177	 Export_ETS_p_n = Export+ETS_p_n
rV(1178,1)	=	k_1177*Export_ETS_p_n	 ; % 	 1178	 Export_ETS_p_n = Export+ETS_p
rV(1179,1)	=	k_1178*Import*AP1_p	 ; % 	 1179	 Import+AP1_p = Import_AP1_p
rV(1180,1)	=	k_1179*Import_AP1_p	 ; % 	 1180	 Import_AP1_p = Import+AP1_p
rV(1181,1)	=	k_1180*Import_AP1_p	 ; % 	 1181	 Import_AP1_p = Import+AP1_p_n
rV(1182,1)	=	k_1181*Export*AP1_p_n	 ; % 	 1182	 Export+AP1_p_n = Export_AP1_p_n
rV(1183,1)	=	k_1182*Export_AP1_p_n	 ; % 	 1183	 Export_AP1_p_n = Export+AP1_p_n
rV(1184,1)	=	k_1183*Export_AP1_p_n	 ; % 	 1184	 Export_AP1_p_n = Export+AP1_p
rV(1185,1)	=	k_1184*ETS_p*ETSPase	 ; % 	 1185	 ETS_p+ETSPase = ETS_p_ETSPase
rV(1186,1)	=	k_1185*ETS_p_ETSPase	 ; % 	 1186	 ETS_p_ETSPase = ETS_p+ETSPase
rV(1187,1)	=	k_1186*ETS_p_ETSPase	 ; % 	 1187	 ETS_p_ETSPase = ETS+ETSPase
rV(1188,1)	=	k_1187*AP1_p*AP1Pase	 ; % 	 1188	 AP1_p+AP1Pase = AP1_p_AP1Pase
rV(1189,1)	=	k_1188*AP1_p_AP1Pase	 ; % 	 1189	 AP1_p_AP1Pase = AP1_p+AP1Pase
rV(1190,1)	=	k_1189*AP1_p_AP1Pase	 ; % 	 1190	 AP1_p_AP1Pase = AP1+AP1Pase
rV(1191,1)	=	k_1190*Import*PP2A	 ; % 	 1191	 Import+PP2A = Import_PP2A
rV(1192,1)	=	k_1191*Import_PP2A	 ; % 	 1192	 Import_PP2A = Import+PP2A
rV(1193,1)	=	k_1192*Import_PP2A	 ; % 	 1193	 Import_PP2A = Import+PP2A_n
rV(1194,1)	=	k_1193*Export*PP2A_n	 ; % 	 1194	 Export+PP2A_n = Export_PP2A_n
rV(1195,1)	=	k_1194*Export_PP2A_n	 ; % 	 1195	 Export_PP2A_n = Export+PP2A_n
rV(1196,1)	=	k_1195*Export_PP2A_n	 ; % 	 1196	 Export_PP2A_n = Export+PP2A
rV(1197,1)	=	k_1196*PP2A_n	 ; % 	 1197	 PP2A_n = []
rV(1198,1)	=	k_1197*ERK_pp_n*PP2A_n	 ; % 	 1198	 ERK_pp_n+PP2A_n = ERK_pp_n_PP2A_n
rV(1199,1)	=	k_1198*ERK_pp_n_PP2A_n	 ; % 	 1199	 ERK_pp_n_PP2A_n = ERK_pp_n+PP2A_n
rV(1200,1)	=	k_1199*ERK_pp_n_PP2A_n	 ; % 	 1200	 ERK_pp_n_PP2A_n = ERK_p_n+PP2A_n
rV(1201,1)	=	k_1200*ERK_p_n*PP2A_n	 ; % 	 1201	 ERK_p_n+PP2A_n = ERK_p_n_PP2A_n
rV(1202,1)	=	k_1201*ERK_p_n_PP2A_n	 ; % 	 1202	 ERK_p_n_PP2A_n = ERK_p_n+PP2A_n
rV(1203,1)	=	k_1202*ERK_p_n_PP2A_n	 ; % 	 1203	 ERK_p_n_PP2A_n = ERK_n+PP2A_n
rV(1204,1)	=	k_1203*Export*ERK_p_n	 ; % 	 1204	 Export+ERK_p_n = Export_ERK_p_n
rV(1205,1)	=	k_1204*Export_ERK_p_n	 ; % 	 1205	 Export_ERK_p_n = Export+ERK_p_n
rV(1206,1)	=	k_1205*Export_ERK_p_n	 ; % 	 1206	 Export_ERK_p_n = Export+ERK_p
rV(1207,1)	=	k_1206*Export*ERK_n	 ; % 	 1207	 Export+ERK_n = Export_ERK_n
rV(1208,1)	=	k_1207*Export_ERK_n	 ; % 	 1208	 Export_ERK_n = Export+ERK_n
rV(1209,1)	=	k_1208*Export_ERK_n	 ; % 	 1209	 Export_ERK_n = Export+ERK
rV(1210,1)	=	k_1209*ERK_n	 ; % 	 1210	 ERK_n = []
rV(1211,1)	=	k_1210*Import*Sam68	 ; % 	 1211	 Import+Sam68 = Import_Sam68
rV(1212,1)	=	k_1211*Import_Sam68	 ; % 	 1212	 Import_Sam68 = Import+Sam68
rV(1213,1)	=	k_1212*Import_Sam68	 ; % 	 1213	 Import_Sam68 = Import+Sam68_n
rV(1214,1)	=	k_1213*Export*Sam68_n	 ; % 	 1214	 Export+Sam68_n = Export_Sam68_n
rV(1215,1)	=	k_1214*Export_Sam68_n	 ; % 	 1215	 Export_Sam68_n = Export+Sam68_n
rV(1216,1)	=	k_1215*Export_Sam68_n	 ; % 	 1216	 Export_Sam68_n = Export+Sam68
rV(1217,1)	=	k_1216*Sam68*ERK_pp	 ; % 	 1217	 Sam68+ERK_pp = Sam68_ERK_pp
rV(1218,1)	=	k_1217*Sam68_ERK_pp	 ; % 	 1218	 Sam68_ERK_pp = Sam68+ERK_pp
rV(1219,1)	=	k_1218*Sam68_ERK_pp	 ; % 	 1219	 Sam68_ERK_pp = Sam68_p+ERK_pp
rV(1220,1)	=	k_1219*Import*Sam68_p	 ; % 	 1220	 Import+Sam68_p = Import_Sam68_p
rV(1221,1)	=	k_1220*Import_Sam68_p	 ; % 	 1221	 Import_Sam68_p = Import+Sam68_p
rV(1222,1)	=	k_1221*Import_Sam68_p	 ; % 	 1222	 Import_Sam68_p = Import+Sam68_p_n
rV(1223,1)	=	k_1222*Sam68_n*ERK_pp_n	 ; % 	 1223	 Sam68_n+ERK_pp_n = Sam68_n_ERK_pp_n
rV(1224,1)	=	k_1223*Sam68_n_ERK_pp_n	 ; % 	 1224	 Sam68_n_ERK_pp_n = Sam68_n+ERK_pp_n
rV(1225,1)	=	k_1224*Sam68_n_ERK_pp_n	 ; % 	 1225	 Sam68_n_ERK_pp_n = Sam68_p_n+ERK_pp_n
rV(1226,1)	=	k_1225*Import*Sam68Pase	 ; % 	 1226	 Import+Sam68Pase = Import_Sam68Pase
rV(1227,1)	=	k_1226*Import_Sam68Pase	 ; % 	 1227	 Import_Sam68Pase = Import+Sam68Pase
rV(1228,1)	=	k_1227*Import_Sam68Pase	 ; % 	 1228	 Import_Sam68Pase = Import+Sam68Pase_n
rV(1229,1)	=	k_1228*Export*Sam68Pase_n	 ; % 	 1229	 Export+Sam68Pase_n = Export_Sam68Pase_n
rV(1230,1)	=	k_1229*Export_Sam68Pase_n	 ; % 	 1230	 Export_Sam68Pase_n = Export+Sam68Pase_n
rV(1231,1)	=	k_1230*Export_Sam68Pase_n	 ; % 	 1231	 Export_Sam68Pase_n = Export+Sam68Pase
rV(1232,1)	=	k_1231*Sam68_p*Sam68Pase	 ; % 	 1232	 Sam68_p+Sam68Pase = Sam68_p_Sam68Pase
rV(1233,1)	=	k_1232*Sam68_p_Sam68Pase	 ; % 	 1233	 Sam68_p_Sam68Pase = Sam68_p+Sam68Pase
rV(1234,1)	=	k_1233*Sam68_p_Sam68Pase	 ; % 	 1234	 Sam68_p_Sam68Pase = Sam68+Sam68Pase
rV(1235,1)	=	k_1234*Sam68_p_n*Sam68Pase_n	 ; % 	 1235	 Sam68_p_n+Sam68Pase_n = Sam68_p_n_Sam68Pase_n
rV(1236,1)	=	k_1235*Sam68_p_n_Sam68Pase_n	 ; % 	 1236	 Sam68_p_n_Sam68Pase_n = Sam68_p_n+Sam68Pase_n
rV(1237,1)	=	k_1236*Sam68_p_n_Sam68Pase_n	 ; % 	 1237	 Sam68_p_n_Sam68Pase_n = Sam68_n+Sam68Pase_n
rV(1238,1)	=	k_1237*Sam68_n	 ; % 	 1238	 Sam68_n = []
rV(1239,1)	=	k_1238*Sam68Pase_n	 ; % 	 1239	 Sam68Pase_n = []
rV(1240,1)	=	k_1239*Sam68_p_n*mRNA_n_CycD1a	 ; % 	 1240	 Sam68_p_n+mRNA_n_CycD1a = Sam68_p_n_mRNA_n_CycD1a
rV(1241,1)	=	k_1240*Sam68_p_n_mRNA_n_CycD1a	 ; % 	 1241	 Sam68_p_n_mRNA_n_CycD1a = Sam68_p_n+mRNA_n_CycD1a
rV(1242,1)	=	k_1241*Sam68_p_n_mRNA_n_CycD1a	 ; % 	 1242	 Sam68_p_n_mRNA_n_CycD1a = Sam68_p_n+mRNA_n_CycD1b
rV(1243,1)	=	k_1242*CycD1a*CDK4	 ; % 	 1243	 CycD1a+CDK4 = CycD1a_CDK4
rV(1244,1)	=	k_1243*CycD1a_CDK4	 ; % 	 1244	 CycD1a_CDK4 = CycD1a+CDK4
rV(1245,1)	=	k_1244*CycD1a*CDK6	 ; % 	 1245	 CycD1a+CDK6 = CycD1a_CDK6
rV(1246,1)	=	k_1245*CycD1a_CDK6	 ; % 	 1246	 CycD1a_CDK6 = CycD1a+CDK6
rV(1247,1)	=	k_1246*CycD1b*CDK4	 ; % 	 1247	 CycD1b+CDK4 = CycD1b_CDK4
rV(1248,1)	=	k_1247*CycD1b_CDK4	 ; % 	 1248	 CycD1b_CDK4 = CycD1b+CDK4
rV(1249,1)	=	k_1248*CycD1b*CDK6	 ; % 	 1249	 CycD1b+CDK6 = CycD1b_CDK6
rV(1250,1)	=	k_1249*CycD1b_CDK6	 ; % 	 1250	 CycD1b_CDK6 = CycD1b+CDK6
rV(1251,1)	=	k_1250*Import*CycD1a_CDK4	 ; % 	 1251	 Import+CycD1a_CDK4 = Import_CycD1a_CDK4
rV(1252,1)	=	k_1251*Import_CycD1a_CDK4	 ; % 	 1252	 Import_CycD1a_CDK4 = Import+CycD1a_CDK4
rV(1253,1)	=	k_1252*Import_CycD1a_CDK4	 ; % 	 1253	 Import_CycD1a_CDK4 = Import+CycD1a_n_CDK4_n
rV(1254,1)	=	k_1253*Export*CycD1a_n_CDK4_n	 ; % 	 1254	 Export+CycD1a_n_CDK4_n = Export_CycD1a_n_CDK4_n
rV(1255,1)	=	k_1254*Export_CycD1a_n_CDK4_n	 ; % 	 1255	 Export_CycD1a_n_CDK4_n = Export+CycD1a_n_CDK4_n
rV(1256,1)	=	k_1255*Export_CycD1a_n_CDK4_n	 ; % 	 1256	 Export_CycD1a_n_CDK4_n = Export+CycD1a_CDK4
rV(1257,1)	=	k_1256*Import*CycD1a_CDK6	 ; % 	 1257	 Import+CycD1a_CDK6 = Import_CycD1a_CDK6
rV(1258,1)	=	k_1257*Import_CycD1a_CDK6	 ; % 	 1258	 Import_CycD1a_CDK6 = Import+CycD1a_CDK6
rV(1259,1)	=	k_1258*Import_CycD1a_CDK6	 ; % 	 1259	 Import_CycD1a_CDK6 = Import+CycD1a_n_CDK6_n
rV(1260,1)	=	k_1259*Export*CycD1a_n_CDK6_n	 ; % 	 1260	 Export+CycD1a_n_CDK6_n = Export_CycD1a_n_CDK6_n
rV(1261,1)	=	k_1260*Export_CycD1a_n_CDK6_n	 ; % 	 1261	 Export_CycD1a_n_CDK6_n = Export+CycD1a_n_CDK6_n
rV(1262,1)	=	k_1261*Export_CycD1a_n_CDK6_n	 ; % 	 1262	 Export_CycD1a_n_CDK6_n = Export+CycD1a_CDK6
rV(1263,1)	=	k_1262*Import*CycD1b_CDK4	 ; % 	 1263	 Import+CycD1b_CDK4 = Import_CycD1b_CDK4
rV(1264,1)	=	k_1263*Import_CycD1b_CDK4	 ; % 	 1264	 Import_CycD1b_CDK4 = Import+CycD1b_CDK4
rV(1265,1)	=	k_1264*Import_CycD1b_CDK4	 ; % 	 1265	 Import_CycD1b_CDK4 = Import+CycD1b_n_CDK4_n
rV(1266,1)	=	k_1265*Export*CycD1b_n_CDK4_n	 ; % 	 1266	 Export+CycD1b_n_CDK4_n = Export_CycD1b_n_CDK4_n
rV(1267,1)	=	k_1266*Export_CycD1b_n_CDK4_n	 ; % 	 1267	 Export_CycD1b_n_CDK4_n = Export+CycD1b_n_CDK4_n
rV(1268,1)	=	k_1267*Export_CycD1b_n_CDK4_n	 ; % 	 1268	 Export_CycD1b_n_CDK4_n = Export+CycD1b_CDK4
rV(1269,1)	=	k_1268*Import*CycD1b_CDK6	 ; % 	 1269	 Import+CycD1b_CDK6 = Import_CycD1b_CDK6
rV(1270,1)	=	k_1269*Import_CycD1b_CDK6	 ; % 	 1270	 Import_CycD1b_CDK6 = Import+CycD1b_CDK6
rV(1271,1)	=	k_1270*Import_CycD1b_CDK6	 ; % 	 1271	 Import_CycD1b_CDK6 = Import+CycD1b_n_CDK6_n
rV(1272,1)	=	k_1271*Export*CycD1b_n_CDK6_n	 ; % 	 1272	 Export+CycD1b_n_CDK6_n = Export_CycD1b_n_CDK6_n
rV(1273,1)	=	k_1272*Export_CycD1b_n_CDK6_n	 ; % 	 1273	 Export_CycD1b_n_CDK6_n = Export+CycD1b_n_CDK6_n
rV(1274,1)	=	k_1273*Export_CycD1b_n_CDK6_n	 ; % 	 1274	 Export_CycD1b_n_CDK6_n = Export+CycD1b_CDK6
rV(1275,1)	=	k_1274*Import*p21Cip1	 ; % 	 1275	 Import+p21Cip1 = Import_p21Cip1
rV(1276,1)	=	k_1275*Import_p21Cip1	 ; % 	 1276	 Import_p21Cip1 = Import+p21Cip1
rV(1277,1)	=	k_1276*Import_p21Cip1	 ; % 	 1277	 Import_p21Cip1 = Import+p21Cip1_n
rV(1278,1)	=	k_1277*Export*p21Cip1_n	 ; % 	 1278	 Export+p21Cip1_n = Export_p21Cip1_n
rV(1279,1)	=	k_1278*Export_p21Cip1_n	 ; % 	 1279	 Export_p21Cip1_n = Export+p21Cip1_n
rV(1280,1)	=	k_1279*Export_p21Cip1_n	 ; % 	 1280	 Export_p21Cip1_n = Export+p21Cip1
rV(1281,1)	=	k_1280*Import*p27Kip1	 ; % 	 1281	 Import+p27Kip1 = Import_p27Kip1
rV(1282,1)	=	k_1281*Import_p27Kip1	 ; % 	 1282	 Import_p27Kip1 = Import+p27Kip1
rV(1283,1)	=	k_1282*Import_p27Kip1	 ; % 	 1283	 Import_p27Kip1 = Import+p27Kip1_n
rV(1284,1)	=	k_1283*Export*p27Kip1_n	 ; % 	 1284	 Export+p27Kip1_n = Export_p27Kip1_n
rV(1285,1)	=	k_1284*Export_p27Kip1_n	 ; % 	 1285	 Export_p27Kip1_n = Export+p27Kip1_n
rV(1286,1)	=	k_1285*Export_p27Kip1_n	 ; % 	 1286	 Export_p27Kip1_n = Export+p27Kip1
rV(1287,1)	=	k_1286*Import*p16INK4	 ; % 	 1287	 Import+p16INK4 = Import_p16INK4
rV(1288,1)	=	k_1287*Import_p16INK4	 ; % 	 1288	 Import_p16INK4 = Import+p16INK4
rV(1289,1)	=	k_1288*Import_p16INK4	 ; % 	 1289	 Import_p16INK4 = Import+p16INK4_n
rV(1290,1)	=	k_1289*Export*p16INK4_n	 ; % 	 1290	 Export+p16INK4_n = Export_p16INK4_n
rV(1291,1)	=	k_1290*Export_p16INK4_n	 ; % 	 1291	 Export_p16INK4_n = Export+p16INK4_n
rV(1292,1)	=	k_1291*Export_p16INK4_n	 ; % 	 1292	 Export_p16INK4_n = Export+p16INK4
rV(1293,1)	=	k_1292*CycD1a*p21Cip1	 ; % 	 1293	 CycD1a+p21Cip1 = CycD1a_p21Cip1
rV(1294,1)	=	k_1293*CycD1a_p21Cip1	 ; % 	 1294	 CycD1a_p21Cip1 = CycD1a+p21Cip1
rV(1295,1)	=	k_1294*CycD1a*p27Kip1	 ; % 	 1295	 CycD1a+p27Kip1 = CycD1a_p27Kip1
rV(1296,1)	=	k_1295*CycD1a_p27Kip1	 ; % 	 1296	 CycD1a_p27Kip1 = CycD1a+p27Kip1
rV(1297,1)	=	k_1296*CycD1a_p21Cip1*CDK4	 ; % 	 1297	 CycD1a_p21Cip1+CDK4 = CycD1a_CDK4_p21Cip1
rV(1298,1)	=	k_1297*CycD1a_CDK4_p21Cip1	 ; % 	 1298	 CycD1a_CDK4_p21Cip1 = CycD1a_p21Cip1+CDK4
rV(1299,1)	=	k_1298*CycD1a_p27Kip1*CDK4	 ; % 	 1299	 CycD1a_p27Kip1+CDK4 = CycD1a_CDK4_p27Kip1
rV(1300,1)	=	k_1299*CycD1a_CDK4_p27Kip1	 ; % 	 1300	 CycD1a_CDK4_p27Kip1 = CycD1a_p27Kip1+CDK4
rV(1301,1)	=	k_1300*CycD1a_p21Cip1*CDK6	 ; % 	 1301	 CycD1a_p21Cip1+CDK6 = CycD1a_CDK6_p21Cip1
rV(1302,1)	=	k_1301*CycD1a_CDK6_p21Cip1	 ; % 	 1302	 CycD1a_CDK6_p21Cip1 = CycD1a_p21Cip1+CDK6
rV(1303,1)	=	k_1302*CycD1a_p27Kip1*CDK6	 ; % 	 1303	 CycD1a_p27Kip1+CDK6 = CycD1a_CDK6_p27Kip1
rV(1304,1)	=	k_1303*CycD1a_CDK6_p27Kip1	 ; % 	 1304	 CycD1a_CDK6_p27Kip1 = CycD1a_p27Kip1+CDK6
rV(1305,1)	=	k_1304*CycD1b*p21Cip1	 ; % 	 1305	 CycD1b+p21Cip1 = CycD1b_p21Cip1
rV(1306,1)	=	k_1305*CycD1b_p21Cip1	 ; % 	 1306	 CycD1b_p21Cip1 = CycD1b+p21Cip1
rV(1307,1)	=	k_1306*CycD1b*p27Kip1	 ; % 	 1307	 CycD1b+p27Kip1 = CycD1b_p27Kip1
rV(1308,1)	=	k_1307*CycD1b_p27Kip1	 ; % 	 1308	 CycD1b_p27Kip1 = CycD1b+p27Kip1
rV(1309,1)	=	k_1308*CycD1b_p21Cip1*CDK4	 ; % 	 1309	 CycD1b_p21Cip1+CDK4 = CycD1b_CDK4_p21Cip1
rV(1310,1)	=	k_1309*CycD1b_CDK4_p21Cip1	 ; % 	 1310	 CycD1b_CDK4_p21Cip1 = CycD1b_p21Cip1+CDK4
rV(1311,1)	=	k_1310*CycD1b_p27Kip1*CDK4	 ; % 	 1311	 CycD1b_p27Kip1+CDK4 = CycD1b_CDK4_p27Kip1
rV(1312,1)	=	k_1311*CycD1b_CDK4_p27Kip1	 ; % 	 1312	 CycD1b_CDK4_p27Kip1 = CycD1b_p27Kip1+CDK4
rV(1313,1)	=	k_1312*CycD1b_p21Cip1*CDK6	 ; % 	 1313	 CycD1b_p21Cip1+CDK6 = CycD1b_CDK6_p21Cip1
rV(1314,1)	=	k_1313*CycD1b_CDK6_p21Cip1	 ; % 	 1314	 CycD1b_CDK6_p21Cip1 = CycD1b_p21Cip1+CDK6
rV(1315,1)	=	k_1314*CycD1b_p27Kip1*CDK6	 ; % 	 1315	 CycD1b_p27Kip1+CDK6 = CycD1b_CDK6_p27Kip1
rV(1316,1)	=	k_1315*CycD1b_CDK6_p27Kip1	 ; % 	 1316	 CycD1b_CDK6_p27Kip1 = CycD1b_p27Kip1+CDK6
rV(1317,1)	=	k_1316*Import*CycD1a_CDK4_p21Cip1	 ; % 	 1317	 Import+CycD1a_CDK4_p21Cip1 = Import_CycD1a_CDK4_p21Cip1
rV(1318,1)	=	k_1317*Import_CycD1a_CDK4_p21Cip1	 ; % 	 1318	 Import_CycD1a_CDK4_p21Cip1 = Import+CycD1a_CDK4_p21Cip1
rV(1319,1)	=	k_1318*Import_CycD1a_CDK4_p21Cip1	 ; % 	 1319	 Import_CycD1a_CDK4_p21Cip1 = Import+CycD1a_n_CDK4_n_p21Cip1_n
rV(1320,1)	=	k_1319*Import*CycD1a_CDK4_p27Kip1	 ; % 	 1320	 Import+CycD1a_CDK4_p27Kip1 = Import_CycD1a_CDK4_p27Kip1
rV(1321,1)	=	k_1320*Import_CycD1a_CDK4_p27Kip1	 ; % 	 1321	 Import_CycD1a_CDK4_p27Kip1 = Import+CycD1a_CDK4_p27Kip1
rV(1322,1)	=	k_1321*Import_CycD1a_CDK4_p27Kip1	 ; % 	 1322	 Import_CycD1a_CDK4_p27Kip1 = Import+CycD1a_n_CDK4_n_p27Kip1_n
rV(1323,1)	=	k_1322*Import*CycD1a_CDK6_p21Cip1	 ; % 	 1323	 Import+CycD1a_CDK6_p21Cip1 = Import_CycD1a_CDK6_p21Cip1
rV(1324,1)	=	k_1323*Import_CycD1a_CDK6_p21Cip1	 ; % 	 1324	 Import_CycD1a_CDK6_p21Cip1 = Import+CycD1a_CDK6_p21Cip1
rV(1325,1)	=	k_1324*Import_CycD1a_CDK6_p21Cip1	 ; % 	 1325	 Import_CycD1a_CDK6_p21Cip1 = Import+CycD1a_n_CDK6_n_p21Cip1_n
rV(1326,1)	=	k_1325*Import*CycD1a_CDK6_p27Kip1	 ; % 	 1326	 Import+CycD1a_CDK6_p27Kip1 = Import_CycD1a_CDK6_p27Kip1
rV(1327,1)	=	k_1326*Import_CycD1a_CDK6_p27Kip1	 ; % 	 1327	 Import_CycD1a_CDK6_p27Kip1 = Import+CycD1a_CDK6_p27Kip1
rV(1328,1)	=	k_1327*Import_CycD1a_CDK6_p27Kip1	 ; % 	 1328	 Import_CycD1a_CDK6_p27Kip1 = Import+CycD1a_n_CDK6_n_p27Kip1_n
rV(1329,1)	=	k_1328*CycD1a_n_CDK4_n*p21Cip1_n	 ; % 	 1329	 CycD1a_n_CDK4_n+p21Cip1_n = CycD1a_n_CDK4_n_p21Cip1_n
rV(1330,1)	=	k_1329*CycD1a_n_CDK4_n_p21Cip1_n	 ; % 	 1330	 CycD1a_n_CDK4_n_p21Cip1_n = CycD1a_n_CDK4_n+p21Cip1_n
rV(1331,1)	=	k_1330*CycD1a_n_CDK4_n*p27Kip1_n	 ; % 	 1331	 CycD1a_n_CDK4_n+p27Kip1_n = CycD1a_n_CDK4_n_p27Kip1_n
rV(1332,1)	=	k_1331*CycD1a_n_CDK4_n_p27Kip1_n	 ; % 	 1332	 CycD1a_n_CDK4_n_p27Kip1_n = CycD1a_n_CDK4_n+p27Kip1_n
rV(1333,1)	=	k_1332*CycD1a_n_CDK6_n*p21Cip1_n	 ; % 	 1333	 CycD1a_n_CDK6_n+p21Cip1_n = CycD1a_n_CDK6_n_p21Cip1_n
rV(1334,1)	=	k_1333*CycD1a_n_CDK6_n_p21Cip1_n	 ; % 	 1334	 CycD1a_n_CDK6_n_p21Cip1_n = CycD1a_n_CDK6_n+p21Cip1_n
rV(1335,1)	=	k_1334*CycD1a_n_CDK6_n*p27Kip1_n	 ; % 	 1335	 CycD1a_n_CDK6_n+p27Kip1_n = CycD1a_n_CDK6_n_p27Kip1_n
rV(1336,1)	=	k_1335*CycD1a_n_CDK6_n_p27Kip1_n	 ; % 	 1336	 CycD1a_n_CDK6_n_p27Kip1_n = CycD1a_n_CDK6_n+p27Kip1_n
rV(1337,1)	=	k_1336*Import*CycD1b_CDK4_p21Cip1	 ; % 	 1337	 Import+CycD1b_CDK4_p21Cip1 = Import_CycD1b_CDK4_p21Cip1
rV(1338,1)	=	k_1337*Import_CycD1b_CDK4_p21Cip1	 ; % 	 1338	 Import_CycD1b_CDK4_p21Cip1 = Import+CycD1b_CDK4_p21Cip1
rV(1339,1)	=	k_1338*Import_CycD1b_CDK4_p21Cip1	 ; % 	 1339	 Import_CycD1b_CDK4_p21Cip1 = Import+CycD1b_n_CDK4_n_p21Cip1_n
rV(1340,1)	=	k_1339*Import*CycD1b_CDK4_p27Kip1	 ; % 	 1340	 Import+CycD1b_CDK4_p27Kip1 = Import_CycD1b_CDK4_p27Kip1
rV(1341,1)	=	k_1340*Import_CycD1b_CDK4_p27Kip1	 ; % 	 1341	 Import_CycD1b_CDK4_p27Kip1 = Import+CycD1b_CDK4_p27Kip1
rV(1342,1)	=	k_1341*Import_CycD1b_CDK4_p27Kip1	 ; % 	 1342	 Import_CycD1b_CDK4_p27Kip1 = Import+CycD1b_n_CDK4_n_p27Kip1_n
rV(1343,1)	=	k_1342*Import*CycD1b_CDK6_p21Cip1	 ; % 	 1343	 Import+CycD1b_CDK6_p21Cip1 = Import_CycD1b_CDK6_p21Cip1
rV(1344,1)	=	k_1343*Import_CycD1b_CDK6_p21Cip1	 ; % 	 1344	 Import_CycD1b_CDK6_p21Cip1 = Import+CycD1b_CDK6_p21Cip1
rV(1345,1)	=	k_1344*Import_CycD1b_CDK6_p21Cip1	 ; % 	 1345	 Import_CycD1b_CDK6_p21Cip1 = Import+CycD1b_n_CDK6_n_p21Cip1_n
rV(1346,1)	=	k_1345*Import*CycD1b_CDK6_p27Kip1	 ; % 	 1346	 Import+CycD1b_CDK6_p27Kip1 = Import_CycD1b_CDK6_p27Kip1
rV(1347,1)	=	k_1346*Import_CycD1b_CDK6_p27Kip1	 ; % 	 1347	 Import_CycD1b_CDK6_p27Kip1 = Import+CycD1b_CDK6_p27Kip1
rV(1348,1)	=	k_1347*Import_CycD1b_CDK6_p27Kip1	 ; % 	 1348	 Import_CycD1b_CDK6_p27Kip1 = Import+CycD1b_n_CDK6_n_p27Kip1_n
rV(1349,1)	=	k_1348*CycD1b_n_CDK4_n*p21Cip1_n	 ; % 	 1349	 CycD1b_n_CDK4_n+p21Cip1_n = CycD1b_n_CDK4_n_p21Cip1_n
rV(1350,1)	=	k_1349*CycD1b_n_CDK4_n_p21Cip1_n	 ; % 	 1350	 CycD1b_n_CDK4_n_p21Cip1_n = CycD1b_n_CDK4_n+p21Cip1_n
rV(1351,1)	=	k_1350*CycD1b_n_CDK4_n*p27Kip1_n	 ; % 	 1351	 CycD1b_n_CDK4_n+p27Kip1_n = CycD1b_n_CDK4_n_p27Kip1_n
rV(1352,1)	=	k_1351*CycD1b_n_CDK4_n_p27Kip1_n	 ; % 	 1352	 CycD1b_n_CDK4_n_p27Kip1_n = CycD1b_n_CDK4_n+p27Kip1_n
rV(1353,1)	=	k_1352*CycD1b_n_CDK6_n*p21Cip1_n	 ; % 	 1353	 CycD1b_n_CDK6_n+p21Cip1_n = CycD1b_n_CDK6_n_p21Cip1_n
rV(1354,1)	=	k_1353*CycD1b_n_CDK6_n_p21Cip1_n	 ; % 	 1354	 CycD1b_n_CDK6_n_p21Cip1_n = CycD1b_n_CDK6_n+p21Cip1_n
rV(1355,1)	=	k_1354*CycD1b_n_CDK6_n*p27Kip1_n	 ; % 	 1355	 CycD1b_n_CDK6_n+p27Kip1_n = CycD1b_n_CDK6_n_p27Kip1_n
rV(1356,1)	=	k_1355*CycD1b_n_CDK6_n_p27Kip1_n	 ; % 	 1356	 CycD1b_n_CDK6_n_p27Kip1_n = CycD1b_n_CDK6_n+p27Kip1_n
rV(1357,1)	=	k_1356*Import*Rb	 ; % 	 1357	 Import+Rb = Import_Rb
rV(1358,1)	=	k_1357*Import_Rb	 ; % 	 1358	 Import_Rb = Import+Rb
rV(1359,1)	=	k_1358*Import_Rb	 ; % 	 1359	 Import_Rb = Import+Rb_n
rV(1360,1)	=	k_1359*Export*Rb_n	 ; % 	 1360	 Export+Rb_n = Export_Rb_n
rV(1361,1)	=	k_1360*Export_Rb_n	 ; % 	 1361	 Export_Rb_n = Export+Rb_n
rV(1362,1)	=	k_1361*Export_Rb_n	 ; % 	 1362	 Export_Rb_n = Export+Rb
rV(1363,1)	=	k_1362*Import*E2F	 ; % 	 1363	 Import+E2F = Import_E2F
rV(1364,1)	=	k_1363*Import_E2F	 ; % 	 1364	 Import_E2F = Import+E2F
rV(1365,1)	=	k_1364*Import_E2F	 ; % 	 1365	 Import_E2F = Import+E2F_n
rV(1366,1)	=	k_1365*Export*E2F_n	 ; % 	 1366	 Export+E2F_n = Export_E2F_n
rV(1367,1)	=	k_1366*Export_E2F_n	 ; % 	 1367	 Export_E2F_n = Export+E2F_n
rV(1368,1)	=	k_1367*Export_E2F_n	 ; % 	 1368	 Export_E2F_n = Export+E2F
rV(1369,1)	=	k_1368*Rb_n	 ; % 	 1369	 Rb_n = []
rV(1370,1)	=	k_1369*E2F_n	 ; % 	 1370	 E2F_n = []
rV(1371,1)	=	k_1370*E2F*Rb	 ; % 	 1371	 E2F+Rb = E2F_Rb
rV(1372,1)	=	k_1371*E2F_Rb	 ; % 	 1372	 E2F_Rb = E2F+Rb
rV(1373,1)	=	k_1372*Import*E2F_Rb	 ; % 	 1373	 Import+E2F_Rb = Import_E2F_Rb
rV(1374,1)	=	k_1373*Import_E2F_Rb	 ; % 	 1374	 Import_E2F_Rb = Import+E2F_Rb
rV(1375,1)	=	k_1374*Import_E2F_Rb	 ; % 	 1375	 Import_E2F_Rb = Import+E2F_n_Rb_n
rV(1376,1)	=	k_1375*Export*E2F_n_Rb_n	 ; % 	 1376	 Export+E2F_n_Rb_n = Export_E2F_n_Rb_n
rV(1377,1)	=	k_1376*Export_E2F_n_Rb_n	 ; % 	 1377	 Export_E2F_n_Rb_n = Export+E2F_n_Rb_n
rV(1378,1)	=	k_1377*Export_E2F_n_Rb_n	 ; % 	 1378	 Export_E2F_n_Rb_n = Export+E2F_Rb
rV(1379,1)	=	k_1378*E2F_n*Rb_n	 ; % 	 1379	 E2F_n+Rb_n = E2F_n_Rb_n
rV(1380,1)	=	k_1379*E2F_n_Rb_n	 ; % 	 1380	 E2F_n_Rb_n = E2F_n+Rb_n
rV(1381,1)	=	k_1380*CycD1a_n_CDK4_n*E2F_n_Rb_n	 ; % 	 1381	 CycD1a_n_CDK4_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_E2F_n_Rb_n
rV(1382,1)	=	k_1381*CycD1a_n_CDK4_n_E2F_n_Rb_n	 ; % 	 1382	 CycD1a_n_CDK4_n_E2F_n_Rb_n = CycD1a_n_CDK4_n+E2F_n_Rb_n
rV(1383,1)	=	k_1382*CycD1a_n_CDK4_n_E2F_n_Rb_n	 ; % 	 1383	 CycD1a_n_CDK4_n_E2F_n_Rb_n = CycD1a_n_CDK4_n+E2F_n+Rb_n_p
rV(1384,1)	=	k_1383*CycD1a_n_CDK6_n*E2F_n_Rb_n	 ; % 	 1384	 CycD1a_n_CDK6_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_E2F_n_Rb_n
rV(1385,1)	=	k_1384*CycD1a_n_CDK6_n_E2F_n_Rb_n	 ; % 	 1385	 CycD1a_n_CDK6_n_E2F_n_Rb_n = CycD1a_n_CDK6_n+E2F_n_Rb_n
rV(1386,1)	=	k_1385*CycD1a_n_CDK6_n_E2F_n_Rb_n	 ; % 	 1386	 CycD1a_n_CDK6_n_E2F_n_Rb_n = CycD1a_n_CDK6_n+E2F_n+Rb_n_p
rV(1387,1)	=	k_1386*CycD1a_n_CDK4_n*Rb_n	 ; % 	 1387	 CycD1a_n_CDK4_n+Rb_n = CycD1a_n_CDK4_n_Rb_n
rV(1388,1)	=	k_1387*CycD1a_n_CDK4_n_Rb_n	 ; % 	 1388	 CycD1a_n_CDK4_n_Rb_n = CycD1a_n_CDK4_n+Rb_n
rV(1389,1)	=	k_1388*CycD1a_n_CDK4_n_Rb_n	 ; % 	 1389	 CycD1a_n_CDK4_n_Rb_n = CycD1a_n_CDK4_n+Rb_n_p
rV(1390,1)	=	k_1389*CycD1a_n_CDK6_n*Rb_n	 ; % 	 1390	 CycD1a_n_CDK6_n+Rb_n = CycD1a_n_CDK6_n_Rb_n
rV(1391,1)	=	k_1390*CycD1a_n_CDK6_n_Rb_n	 ; % 	 1391	 CycD1a_n_CDK6_n_Rb_n = CycD1a_n_CDK6_n+Rb_n
rV(1392,1)	=	k_1391*CycD1a_n_CDK6_n_Rb_n	 ; % 	 1392	 CycD1a_n_CDK6_n_Rb_n = CycD1a_n_CDK6_n+Rb_n_p
rV(1393,1)	=	k_1392*CycD1a_n_CDK4_n_p21Cip1_n*E2F_n_Rb_n	 ; % 	 1393	 CycD1a_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
rV(1394,1)	=	k_1393*CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1394	 CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n
rV(1395,1)	=	k_1394*CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1395	 CycD1a_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p21Cip1_n+E2F_n+Rb_n_p
rV(1396,1)	=	k_1395*CycD1a_n_CDK4_n_p27Kip1_n*E2F_n_Rb_n	 ; % 	 1396	 CycD1a_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
rV(1397,1)	=	k_1396*CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1397	 CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n
rV(1398,1)	=	k_1397*CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1398	 CycD1a_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK4_n_p27Kip1_n+E2F_n+Rb_n_p
rV(1399,1)	=	k_1398*CycD1a_n_CDK6_n_p21Cip1_n*E2F_n_Rb_n	 ; % 	 1399	 CycD1a_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
rV(1400,1)	=	k_1399*CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1400	 CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n
rV(1401,1)	=	k_1400*CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1401	 CycD1a_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p21Cip1_n+E2F_n+Rb_n_p
rV(1402,1)	=	k_1401*CycD1a_n_CDK6_n_p27Kip1_n*E2F_n_Rb_n	 ; % 	 1402	 CycD1a_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
rV(1403,1)	=	k_1402*CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1403	 CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n
rV(1404,1)	=	k_1403*CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1404	 CycD1a_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1a_n_CDK6_n_p27Kip1_n+E2F_n+Rb_n_p
rV(1405,1)	=	k_1404*CycD1b_n_CDK4_n*E2F_n_Rb_n	 ; % 	 1405	 CycD1b_n_CDK4_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_E2F_n_Rb_n
rV(1406,1)	=	k_1405*CycD1b_n_CDK4_n_E2F_n_Rb_n	 ; % 	 1406	 CycD1b_n_CDK4_n_E2F_n_Rb_n = CycD1b_n_CDK4_n+E2F_n_Rb_n
rV(1407,1)	=	k_1406*CycD1b_n_CDK4_n_E2F_n_Rb_n	 ; % 	 1407	 CycD1b_n_CDK4_n_E2F_n_Rb_n = CycD1b_n_CDK4_n+E2F_n+Rb_n_p
rV(1408,1)	=	k_1407*CycD1b_n_CDK6_n*E2F_n_Rb_n	 ; % 	 1408	 CycD1b_n_CDK6_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_E2F_n_Rb_n
rV(1409,1)	=	k_1408*CycD1b_n_CDK6_n_E2F_n_Rb_n	 ; % 	 1409	 CycD1b_n_CDK6_n_E2F_n_Rb_n = CycD1b_n_CDK6_n+E2F_n_Rb_n
rV(1410,1)	=	k_1409*CycD1b_n_CDK6_n_E2F_n_Rb_n	 ; % 	 1410	 CycD1b_n_CDK6_n_E2F_n_Rb_n = CycD1b_n_CDK6_n+E2F_n+Rb_n_p
rV(1411,1)	=	k_1410*CycD1b_n_CDK4_n*Rb_n	 ; % 	 1411	 CycD1b_n_CDK4_n+Rb_n = CycD1b_n_CDK4_n_Rb_n
rV(1412,1)	=	k_1411*CycD1b_n_CDK4_n_Rb_n	 ; % 	 1412	 CycD1b_n_CDK4_n_Rb_n = CycD1b_n_CDK4_n+Rb_n
rV(1413,1)	=	k_1412*CycD1b_n_CDK4_n_Rb_n	 ; % 	 1413	 CycD1b_n_CDK4_n_Rb_n = CycD1b_n_CDK4_n+Rb_n_p
rV(1414,1)	=	k_1413*CycD1b_n_CDK6_n*Rb_n	 ; % 	 1414	 CycD1b_n_CDK6_n+Rb_n = CycD1b_n_CDK6_n_Rb_n
rV(1415,1)	=	k_1414*CycD1b_n_CDK6_n_Rb_n	 ; % 	 1415	 CycD1b_n_CDK6_n_Rb_n = CycD1b_n_CDK6_n+Rb_n
rV(1416,1)	=	k_1415*CycD1b_n_CDK6_n_Rb_n	 ; % 	 1416	 CycD1b_n_CDK6_n_Rb_n = CycD1b_n_CDK6_n+Rb_n_p
rV(1417,1)	=	k_1416*CycD1b_n_CDK4_n_p21Cip1_n*E2F_n_Rb_n	 ; % 	 1417	 CycD1b_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n
rV(1418,1)	=	k_1417*CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1418	 CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n+E2F_n_Rb_n
rV(1419,1)	=	k_1418*CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1419	 CycD1b_n_CDK4_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p21Cip1_n+E2F_n+Rb_n_p
rV(1420,1)	=	k_1419*CycD1b_n_CDK4_n_p27Kip1_n*E2F_n_Rb_n	 ; % 	 1420	 CycD1b_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n
rV(1421,1)	=	k_1420*CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1421	 CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n+E2F_n_Rb_n
rV(1422,1)	=	k_1421*CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1422	 CycD1b_n_CDK4_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK4_n_p27Kip1_n+E2F_n+Rb_n_p
rV(1423,1)	=	k_1422*CycD1b_n_CDK6_n_p21Cip1_n*E2F_n_Rb_n	 ; % 	 1423	 CycD1b_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n
rV(1424,1)	=	k_1423*CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1424	 CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n+E2F_n_Rb_n
rV(1425,1)	=	k_1424*CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n	 ; % 	 1425	 CycD1b_n_CDK6_n_p21Cip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p21Cip1_n+E2F_n+Rb_n_p
rV(1426,1)	=	k_1425*CycD1b_n_CDK6_n_p27Kip1_n*E2F_n_Rb_n	 ; % 	 1426	 CycD1b_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n
rV(1427,1)	=	k_1426*CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1427	 CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n+E2F_n_Rb_n
rV(1428,1)	=	k_1427*CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n	 ; % 	 1428	 CycD1b_n_CDK6_n_p27Kip1_n_E2F_n_Rb_n = CycD1b_n_CDK6_n_p27Kip1_n+E2F_n+Rb_n_p
rV(1429,1)	=	k_1428*CycE*Cdk2	 ; % 	 1429	 CycE+Cdk2 = CycE_Cdk2
rV(1430,1)	=	k_1429*CycE_Cdk2	 ; % 	 1430	 CycE_Cdk2 = CycE+Cdk2
rV(1431,1)	=	k_1430*CDC25A*RAF_Act	 ; % 	 1431	 CDC25A+RAF_Act = CDC25A_RAF_Act
rV(1432,1)	=	k_1431*CDC25A_RAF_Act	 ; % 	 1432	 CDC25A_RAF_Act = CDC25A+RAF_Act
rV(1433,1)	=	k_1432*CDC25A_RAF_Act	 ; % 	 1433	 CDC25A_RAF_Act = CDC25A_p+RAF_Act
rV(1434,1)	=	k_1433*CDC25A*PKC_Act	 ; % 	 1434	 CDC25A+PKC_Act = CDC25A_PKC_Act
rV(1435,1)	=	k_1434*CDC25A_PKC_Act	 ; % 	 1435	 CDC25A_PKC_Act = CDC25A+PKC_Act
rV(1436,1)	=	k_1435*CDC25A_PKC_Act	 ; % 	 1436	 CDC25A_PKC_Act = CDC25A_p+PKC_Act
rV(1437,1)	=	k_1436*CDC25A*p70_Act	 ; % 	 1437	 CDC25A+p70_Act = CDC25A_p70_Act
rV(1438,1)	=	k_1437*CDC25A_p70_Act	 ; % 	 1438	 CDC25A_p70_Act = CDC25A+p70_Act
rV(1439,1)	=	k_1438*CDC25A_p70_Act	 ; % 	 1439	 CDC25A_p70_Act = CDC25A_p+p70_Act
rV(1440,1)	=	k_1439*CycE_Cdk2*CDC25A_p	 ; % 	 1440	 CycE_Cdk2+CDC25A_p = CycE_Cdk2_CDC25A_p
rV(1441,1)	=	k_1440*CycE_Cdk2_CDC25A_p	 ; % 	 1441	 CycE_Cdk2_CDC25A_p = CycE_Cdk2+CDC25A_p
rV(1442,1)	=	k_1441*CycE_Cdk2_CDC25A_p	 ; % 	 1442	 CycE_Cdk2_CDC25A_p = CycE_Cdk2_Act+CDC25A_p
rV(1443,1)	=	k_1442*Import*CycE_Cdk2_Act	 ; % 	 1443	 Import+CycE_Cdk2_Act = Import_CycE_Cdk2_Act
rV(1444,1)	=	k_1443*Import_CycE_Cdk2_Act	 ; % 	 1444	 Import_CycE_Cdk2_Act = Import+CycE_Cdk2_Act
rV(1445,1)	=	k_1444*Import_CycE_Cdk2_Act	 ; % 	 1445	 Import_CycE_Cdk2_Act = Import+CycE_Cdk2_Act_n
rV(1446,1)	=	k_1445*Export*CycE_Cdk2_Act_n	 ; % 	 1446	 Export+CycE_Cdk2_Act_n = Export_CycE_Cdk2_Act_n
rV(1447,1)	=	k_1446*Export_CycE_Cdk2_Act_n	 ; % 	 1447	 Export_CycE_Cdk2_Act_n = Export+CycE_Cdk2_Act_n
rV(1448,1)	=	k_1447*Export_CycE_Cdk2_Act_n	 ; % 	 1448	 Export_CycE_Cdk2_Act_n = Export+CycE_Cdk2_Act
rV(1449,1)	=	k_1448*CycE_Cdk2_Act*CDC25A	 ; % 	 1449	 CycE_Cdk2_Act+CDC25A = CycE_Cdk2_Act_CDC25A
rV(1450,1)	=	k_1449*CycE_Cdk2_Act_CDC25A	 ; % 	 1450	 CycE_Cdk2_Act_CDC25A = CycE_Cdk2_Act+CDC25A
rV(1451,1)	=	k_1450*CycE_Cdk2_Act_CDC25A	 ; % 	 1451	 CycE_Cdk2_Act_CDC25A = CycE_Cdk2_Act+CDC25A_p
rV(1452,1)	=	k_1451*CDC25A_p*CDC25APase	 ; % 	 1452	 CDC25A_p+CDC25APase = CDC25A_p_CDC25APase
rV(1453,1)	=	k_1452*CDC25A_p_CDC25APase	 ; % 	 1453	 CDC25A_p_CDC25APase = CDC25A_p+CDC25APase
rV(1454,1)	=	k_1453*CDC25A_p_CDC25APase	 ; % 	 1454	 CDC25A_p_CDC25APase = CDC25A+CDC25APase
rV(1455,1)	=	k_1454*CycE_Cdk2_Act*Cdk2Pase	 ; % 	 1455	 CycE_Cdk2_Act+Cdk2Pase = CycE_Cdk2_Act_Cdk2Pase
rV(1456,1)	=	k_1455*CycE_Cdk2_Act_Cdk2Pase	 ; % 	 1456	 CycE_Cdk2_Act_Cdk2Pase = CycE_Cdk2_Act+Cdk2Pase
rV(1457,1)	=	k_1456*CycE_Cdk2_Act_Cdk2Pase	 ; % 	 1457	 CycE_Cdk2_Act_Cdk2Pase = CycE_Cdk2+Cdk2Pase
rV(1458,1)	=	k_1457*CycE_Cdk2_Act_n*E2F_n_Rb_n	 ; % 	 1458	 CycE_Cdk2_Act_n+E2F_n_Rb_n = CycE_Cdk2_Act_n_E2F_n_Rb_n
rV(1459,1)	=	k_1458*CycE_Cdk2_Act_n_E2F_n_Rb_n	 ; % 	 1459	 CycE_Cdk2_Act_n_E2F_n_Rb_n = CycE_Cdk2_Act_n+E2F_n_Rb_n
rV(1460,1)	=	k_1459*CycE_Cdk2_Act_n_E2F_n_Rb_n	 ; % 	 1460	 CycE_Cdk2_Act_n_E2F_n_Rb_n = CycE_Cdk2_Act_n+E2F_n+Rb_n_p
rV(1461,1)	=	k_1460*CycE_Cdk2_Act_n*Rb_n	 ; % 	 1461	 CycE_Cdk2_Act_n+Rb_n = CycE_Cdk2_Act_n_Rb_n
rV(1462,1)	=	k_1461*CycE_Cdk2_Act_n_Rb_n	 ; % 	 1462	 CycE_Cdk2_Act_n_Rb_n = CycE_Cdk2_Act_n+Rb_n
rV(1463,1)	=	k_1462*CycE_Cdk2_Act_n_Rb_n	 ; % 	 1463	 CycE_Cdk2_Act_n_Rb_n = CycE_Cdk2_Act_n+Rb_n_p
rV(1464,1)	=	k_1463*Import*RbPase	 ; % 	 1464	 Import+RbPase = Import_RbPase
rV(1465,1)	=	k_1464*Import_RbPase	 ; % 	 1465	 Import_RbPase = Import+RbPase
rV(1466,1)	=	k_1465*Import_RbPase	 ; % 	 1466	 Import_RbPase = Import+RbPase_n
rV(1467,1)	=	k_1466*Export*RbPase_n	 ; % 	 1467	 Export+RbPase_n = Export_RbPase_n
rV(1468,1)	=	k_1467*Export_RbPase_n	 ; % 	 1468	 Export_RbPase_n = Export+RbPase_n
rV(1469,1)	=	k_1468*Export_RbPase_n	 ; % 	 1469	 Export_RbPase_n = Export+RbPase
rV(1470,1)	=	k_1469*RbPase_n	 ; % 	 1470	 RbPase_n = []
rV(1471,1)	=	k_1470*Rb_n_p*RbPase_n	 ; % 	 1471	 Rb_n_p+RbPase_n = Rb_n_p_RbPase_n
rV(1472,1)	=	k_1471*Rb_n_p_RbPase_n	 ; % 	 1472	 Rb_n_p_RbPase_n = Rb_n_p+RbPase_n
rV(1473,1)	=	k_1472*Rb_n_p_RbPase_n	 ; % 	 1473	 Rb_n_p_RbPase_n = Rb_n+RbPase_n
rV(1474,1)	=	k_1473*CycE_Cdk2_Act_n*E2F_n	 ; % 	 1474	 CycE_Cdk2_Act_n+E2F_n = CycE_Cdk2_Act_n_E2F_n
rV(1475,1)	=	k_1474*CycE_Cdk2_Act_n_E2F_n	 ; % 	 1475	 CycE_Cdk2_Act_n_E2F_n = CycE_Cdk2_Act_n+E2F_n
rV(1476,1)	=	k_1475*CycE_Cdk2_Act_n_E2F_n	 ; % 	 1476	 CycE_Cdk2_Act_n_E2F_n = CycE_Cdk2_Act_n+E2F_n_p
rV(1477,1)	=	k_1476*E2F_n_p	 ; % 	 1477	 E2F_n_p = []
rV(1478,1)	=	k_1477*p21Cip1*Cdk2	 ; % 	 1478	 p21Cip1+Cdk2 = p21Cip1_Cdk2
rV(1479,1)	=	k_1478*p21Cip1_Cdk2	 ; % 	 1479	 p21Cip1_Cdk2 = p21Cip1+Cdk2
rV(1480,1)	=	k_1479*p27Kip1*Cdk2	 ; % 	 1480	 p27Kip1+Cdk2 = p27Kip1_Cdk2
rV(1481,1)	=	k_1480*p27Kip1_Cdk2	 ; % 	 1481	 p27Kip1_Cdk2 = p27Kip1+Cdk2
rV(1482,1)	=	k_1481*p21Cip1*CycE_Cdk2	 ; % 	 1482	 p21Cip1+CycE_Cdk2 = p21Cip1_CycE_Cdk2
rV(1483,1)	=	k_1482*p21Cip1_CycE_Cdk2	 ; % 	 1483	 p21Cip1_CycE_Cdk2 = p21Cip1+CycE_Cdk2
rV(1484,1)	=	k_1483*p27Kip1*CycE_Cdk2	 ; % 	 1484	 p27Kip1+CycE_Cdk2 = p27Kip1_CycE_Cdk2
rV(1485,1)	=	k_1484*p27Kip1_CycE_Cdk2	 ; % 	 1485	 p27Kip1_CycE_Cdk2 = p27Kip1+CycE_Cdk2
rV(1486,1)	=	k_1485*p21Cip1*CycE_Cdk2_Act	 ; % 	 1486	 p21Cip1+CycE_Cdk2_Act = p21Cip1_CycE_Cdk2_Act
rV(1487,1)	=	k_1486*p21Cip1_CycE_Cdk2_Act	 ; % 	 1487	 p21Cip1_CycE_Cdk2_Act = p21Cip1+CycE_Cdk2_Act
rV(1488,1)	=	k_1487*p27Kip1*CycE_Cdk2_Act	 ; % 	 1488	 p27Kip1+CycE_Cdk2_Act = p27Kip1_CycE_Cdk2_Act
rV(1489,1)	=	k_1488*p27Kip1_CycE_Cdk2_Act	 ; % 	 1489	 p27Kip1_CycE_Cdk2_Act = p27Kip1+CycE_Cdk2_Act
rV(1490,1)	=	k_1489*p21Cip1_n*CycE_Cdk2_Act_n	 ; % 	 1490	 p21Cip1_n+CycE_Cdk2_Act_n = p21Cip1_n_CycE_Cdk2_Act_n
rV(1491,1)	=	k_1490*p21Cip1_n_CycE_Cdk2_Act_n	 ; % 	 1491	 p21Cip1_n_CycE_Cdk2_Act_n = p21Cip1_n+CycE_Cdk2_Act_n
rV(1492,1)	=	k_1491*p27Kip1_n*CycE_Cdk2_Act_n	 ; % 	 1492	 p27Kip1_n+CycE_Cdk2_Act_n = p27Kip1_n_CycE_Cdk2_Act_n
rV(1493,1)	=	k_1492*p27Kip1_n_CycE_Cdk2_Act_n	 ; % 	 1493	 p27Kip1_n_CycE_Cdk2_Act_n = p27Kip1_n+CycE_Cdk2_Act_n
rV(1494,1)	=	k_1493*p21Cip1_CycE_Cdk2_Act	 ; % 	 1494	 p21Cip1_CycE_Cdk2_Act = p21Cip1_p+CycE_Cdk2_Act
rV(1495,1)	=	k_1494*p27Kip1_CycE_Cdk2_Act	 ; % 	 1495	 p27Kip1_CycE_Cdk2_Act = p27Kip1_p+CycE_Cdk2_Act
rV(1496,1)	=	k_1495*p21Cip1_n_CycE_Cdk2_Act_n	 ; % 	 1496	 p21Cip1_n_CycE_Cdk2_Act_n = p21Cip1_n_p+CycE_Cdk2_Act_n
rV(1497,1)	=	k_1496*p27Kip1_n_CycE_Cdk2_Act_n	 ; % 	 1497	 p27Kip1_n_CycE_Cdk2_Act_n = p27Kip1_n_p+CycE_Cdk2_Act_n
rV(1498,1)	=	k_1497*p21Cip1_p	 ; % 	 1498	 p21Cip1_p = []
rV(1499,1)	=	k_1498*p27Kip1_p	 ; % 	 1499	 p27Kip1_p = []
rV(1500,1)	=	k_1499*p21Cip1_n_p	 ; % 	 1500	 p21Cip1_n_p = []
rV(1501,1)	=	k_1500*p27Kip1_n_p	 ; % 	 1501	 p27Kip1_n_p = []
rV(1502,1)	=	k_1501*p21Cip1_p	 ; % 	 1502	 p21Cip1_p = p21Cip1
rV(1503,1)	=	k_1502*p27Kip1_p	 ; % 	 1503	 p27Kip1_p = p27Kip1
rV(1504,1)	=	k_1503*p21Cip1_n_p	 ; % 	 1504	 p21Cip1_n_p = p21Cip1_n
rV(1505,1)	=	k_1504*p27Kip1_n_p	 ; % 	 1505	 p27Kip1_n_p = p27Kip1_n
rV(1506,1)	=	k_1505*p16INK4*CDK4	 ; % 	 1506	 p16INK4+CDK4 = p16INK4_CDK4
rV(1507,1)	=	k_1506*p16INK4_CDK4	 ; % 	 1507	 p16INK4_CDK4 = p16INK4+CDK4
rV(1508,1)	=	k_1507*p16INK4*CDK6	 ; % 	 1508	 p16INK4+CDK6 = p16INK4_CDK6
rV(1509,1)	=	k_1508*p16INK4_CDK6	 ; % 	 1509	 p16INK4_CDK6 = p16INK4+CDK6
rV(1510,1)	=	k_1509*p16INK4*CycD1a_CDK4	 ; % 	 1510	 p16INK4+CycD1a_CDK4 = p16INK4_CycD1a_CDK4
rV(1511,1)	=	k_1510*p16INK4_CycD1a_CDK4	 ; % 	 1511	 p16INK4_CycD1a_CDK4 = p16INK4+CycD1a_CDK4
rV(1512,1)	=	k_1511*p16INK4*CycD1a_CDK6	 ; % 	 1512	 p16INK4+CycD1a_CDK6 = p16INK4_CycD1a_CDK6
rV(1513,1)	=	k_1512*p16INK4_CycD1a_CDK6	 ; % 	 1513	 p16INK4_CycD1a_CDK6 = p16INK4+CycD1a_CDK6
rV(1514,1)	=	k_1513*p16INK4_n*CycD1a_n_CDK4_n	 ; % 	 1514	 p16INK4_n+CycD1a_n_CDK4_n = p16INK4_n_CycD1a_n_CDK4_n
rV(1515,1)	=	k_1514*p16INK4_n_CycD1a_n_CDK4_n	 ; % 	 1515	 p16INK4_n_CycD1a_n_CDK4_n = p16INK4_n+CycD1a_n_CDK4_n
rV(1516,1)	=	k_1515*p16INK4_n*CycD1a_n_CDK6_n	 ; % 	 1516	 p16INK4_n+CycD1a_n_CDK6_n = p16INK4_n_CycD1a_n_CDK6_n
rV(1517,1)	=	k_1516*p16INK4_n_CycD1a_n_CDK6_n	 ; % 	 1517	 p16INK4_n_CycD1a_n_CDK6_n = p16INK4_n+CycD1a_n_CDK6_n
rV(1518,1)	=	k_1517*p16INK4*CycD1b_CDK4	 ; % 	 1518	 p16INK4+CycD1b_CDK4 = p16INK4_CycD1b_CDK4
rV(1519,1)	=	k_1518*p16INK4_CycD1b_CDK4	 ; % 	 1519	 p16INK4_CycD1b_CDK4 = p16INK4+CycD1b_CDK4
rV(1520,1)	=	k_1519*p16INK4*CycD1b_CDK6	 ; % 	 1520	 p16INK4+CycD1b_CDK6 = p16INK4_CycD1b_CDK6
rV(1521,1)	=	k_1520*p16INK4_CycD1b_CDK6	 ; % 	 1521	 p16INK4_CycD1b_CDK6 = p16INK4+CycD1b_CDK6
rV(1522,1)	=	k_1521*p16INK4_n*CycD1b_n_CDK4_n	 ; % 	 1522	 p16INK4_n+CycD1b_n_CDK4_n = p16INK4_n_CycD1b_n_CDK4_n
rV(1523,1)	=	k_1522*p16INK4_n_CycD1b_n_CDK4_n	 ; % 	 1523	 p16INK4_n_CycD1b_n_CDK4_n = p16INK4_n+CycD1b_n_CDK4_n
rV(1524,1)	=	k_1523*p16INK4_n*CycD1b_n_CDK6_n	 ; % 	 1524	 p16INK4_n+CycD1b_n_CDK6_n = p16INK4_n_CycD1b_n_CDK6_n
rV(1525,1)	=	k_1524*p16INK4_n_CycD1b_n_CDK6_n	 ; % 	 1525	 p16INK4_n_CycD1b_n_CDK6_n = p16INK4_n+CycD1b_n_CDK6_n
rV(1526,1)	=	k_1525*Export*p16INK4_n_CycD1a_n_CDK4_n	 ; % 	 1526	 Export+p16INK4_n_CycD1a_n_CDK4_n = Export_p16INK4_n_CycD1a_n_CDK4_n
rV(1527,1)	=	k_1526*Export_p16INK4_n_CycD1a_n_CDK4_n	 ; % 	 1527	 Export_p16INK4_n_CycD1a_n_CDK4_n = Export+p16INK4_n_CycD1a_n_CDK4_n
rV(1528,1)	=	k_1527*Export_p16INK4_n_CycD1a_n_CDK4_n	 ; % 	 1528	 Export_p16INK4_n_CycD1a_n_CDK4_n = Export+p16INK4_CycD1a_CDK4
rV(1529,1)	=	k_1528*Export*p16INK4_n_CycD1a_n_CDK6_n	 ; % 	 1529	 Export+p16INK4_n_CycD1a_n_CDK6_n = Export_p16INK4_n_CycD1a_n_CDK6_n
rV(1530,1)	=	k_1529*Export_p16INK4_n_CycD1a_n_CDK6_n	 ; % 	 1530	 Export_p16INK4_n_CycD1a_n_CDK6_n = Export+p16INK4_n_CycD1a_n_CDK6_n
rV(1531,1)	=	k_1530*Export_p16INK4_n_CycD1a_n_CDK6_n	 ; % 	 1531	 Export_p16INK4_n_CycD1a_n_CDK6_n = Export+p16INK4_CycD1a_CDK6
rV(1532,1)	=	k_1531*Export*p16INK4_n_CycD1b_n_CDK4_n	 ; % 	 1532	 Export+p16INK4_n_CycD1b_n_CDK4_n = Export_p16INK4_n_CycD1b_n_CDK4_n
rV(1533,1)	=	k_1532*Export_p16INK4_n_CycD1b_n_CDK4_n	 ; % 	 1533	 Export_p16INK4_n_CycD1b_n_CDK4_n = Export+p16INK4_n_CycD1b_n_CDK4_n
rV(1534,1)	=	k_1533*Export_p16INK4_n_CycD1b_n_CDK4_n	 ; % 	 1534	 Export_p16INK4_n_CycD1b_n_CDK4_n = Export+p16INK4_CycD1b_CDK4
rV(1535,1)	=	k_1534*Export*p16INK4_n_CycD1b_n_CDK6_n	 ; % 	 1535	 Export+p16INK4_n_CycD1b_n_CDK6_n = Export_p16INK4_n_CycD1b_n_CDK6_n
rV(1536,1)	=	k_1535*Export_p16INK4_n_CycD1b_n_CDK6_n	 ; % 	 1536	 Export_p16INK4_n_CycD1b_n_CDK6_n = Export+p16INK4_n_CycD1b_n_CDK6_n
rV(1537,1)	=	k_1536*Export_p16INK4_n_CycD1b_n_CDK6_n	 ; % 	 1537	 Export_p16INK4_n_CycD1b_n_CDK6_n = Export+p16INK4_CycD1b_CDK6
rV(1538,1)	=	k_1537*AP1*AR	 ; % 	 1538	 AP1+AR = AP1_AR
rV(1539,1)	=	k_1538*AP1_AR	 ; % 	 1539	 AP1_AR = AP1+AR
rV(1540,1)	=	k_1539*AP1*AR_p	 ; % 	 1540	 AP1+AR_p = AP1_AR_p
rV(1541,1)	=	k_1540*AP1_AR_p	 ; % 	 1541	 AP1_AR_p = AP1+AR_p
rV(1542,1)	=	k_1541*AP1*AR_p_DHT_2	 ; % 	 1542	 AP1+AR_p_DHT_2 = AP1_AR_p_DHT_2
rV(1543,1)	=	k_1542*AP1_AR_p_DHT_2	 ; % 	 1543	 AP1_AR_p_DHT_2 = AP1+AR_p_DHT_2
rV(1544,1)	=	k_1543*AP1*AR_p_2	 ; % 	 1544	 AP1+AR_p_2 = AP1_AR_p_2
rV(1545,1)	=	k_1544*AP1_AR_p_2	 ; % 	 1545	 AP1_AR_p_2 = AP1+AR_p_2
rV(1546,1)	=	k_1545*AP1*AR_p_DHT_AR_p	 ; % 	 1546	 AP1+AR_p_DHT_AR_p = AP1_AR_p_DHT_AR_p
rV(1547,1)	=	k_1546*AP1_AR_p_DHT_AR_p	 ; % 	 1547	 AP1_AR_p_DHT_AR_p = AP1+AR_p_DHT_AR_p
rV(1548,1)	=	k_1547*AP1_n*AR_p_DHT_2_n	 ; % 	 1548	 AP1_n+AR_p_DHT_2_n = AP1_n_AR_p_DHT_2_n
rV(1549,1)	=	k_1548*AP1_n_AR_p_DHT_2_n	 ; % 	 1549	 AP1_n_AR_p_DHT_2_n = AP1_n+AR_p_DHT_2_n
rV(1550,1)	=	k_1549*AP1_n*AR_p_2_n	 ; % 	 1550	 AP1_n+AR_p_2_n = AP1_n_AR_p_2_n
rV(1551,1)	=	k_1550*AP1_n_AR_p_2_n	 ; % 	 1551	 AP1_n_AR_p_2_n = AP1_n+AR_p_2_n
rV(1552,1)	=	k_1551*AP1_n*AR_p_DHT_AR_p_n	 ; % 	 1552	 AP1_n+AR_p_DHT_AR_p_n = AP1_n_AR_p_DHT_AR_p_n
rV(1553,1)	=	k_1552*AP1_n_AR_p_DHT_AR_p_n	 ; % 	 1553	 AP1_n_AR_p_DHT_AR_p_n = AP1_n+AR_p_DHT_AR_p_n
rV(1554,1)	=	k_1553*AP1_p_n*AR_p_DHT_2_n	 ; % 	 1554	 AP1_p_n+AR_p_DHT_2_n = AP1_p_n_AR_p_DHT_2_n
rV(1555,1)	=	k_1554*AP1_p_n_AR_p_DHT_2_n	 ; % 	 1555	 AP1_p_n_AR_p_DHT_2_n = AP1_p_n+AR_p_DHT_2_n
rV(1556,1)	=	k_1555*AP1_p_n*AR_p_2_n	 ; % 	 1556	 AP1_p_n+AR_p_2_n = AP1_p_n_AR_p_2_n
rV(1557,1)	=	k_1556*AP1_p_n_AR_p_2_n	 ; % 	 1557	 AP1_p_n_AR_p_2_n = AP1_p_n+AR_p_2_n
rV(1558,1)	=	k_1557*AP1_p_n*AR_p_DHT_AR_p_n	 ; % 	 1558	 AP1_p_n+AR_p_DHT_AR_p_n = AP1_p_n_AR_p_DHT_AR_p_n
rV(1559,1)	=	k_1558*AP1_p_n_AR_p_DHT_AR_p_n	 ; % 	 1559	 AP1_p_n_AR_p_DHT_AR_p_n = AP1_p_n+AR_p_DHT_AR_p_n
rV(1560,1)	=	k_1559*CycD1a*AR	 ; % 	 1560	 CycD1a+AR = CycD1a_AR
rV(1561,1)	=	k_1560*CycD1a_AR	 ; % 	 1561	 CycD1a_AR = CycD1a+AR
rV(1562,1)	=	k_1561*CycD1a*AR_DHT	 ; % 	 1562	 CycD1a+AR_DHT = CycD1a_AR_DHT
rV(1563,1)	=	k_1562*CycD1a_AR_DHT	 ; % 	 1563	 CycD1a_AR_DHT = CycD1a+AR_DHT
rV(1564,1)	=	k_1563*CycD1a*AR_p_DHT	 ; % 	 1564	 CycD1a+AR_p_DHT = CycD1a_AR_p_DHT
rV(1565,1)	=	k_1564*CycD1a_AR_p_DHT	 ; % 	 1565	 CycD1a_AR_p_DHT = CycD1a+AR_p_DHT
rV(1566,1)	=	k_1565*CycD1a*AR_p_DHT_2	 ; % 	 1566	 CycD1a+AR_p_DHT_2 = CycD1a_AR_p_DHT_2
rV(1567,1)	=	k_1566*CycD1a_AR_p_DHT_2	 ; % 	 1567	 CycD1a_AR_p_DHT_2 = CycD1a+AR_p_DHT_2
rV(1568,1)	=	k_1567*CycD1a*AR_p_2	 ; % 	 1568	 CycD1a+AR_p_2 = CycD1a_AR_p_2
rV(1569,1)	=	k_1568*CycD1a_AR_p_2	 ; % 	 1569	 CycD1a_AR_p_2 = CycD1a+AR_p_2
rV(1570,1)	=	k_1569*CycD1a*AR_p_DHT_AR_p	 ; % 	 1570	 CycD1a+AR_p_DHT_AR_p = CycD1a_AR_p_DHT_AR_p
rV(1571,1)	=	k_1570*CycD1a_AR_p_DHT_AR_p	 ; % 	 1571	 CycD1a_AR_p_DHT_AR_p = CycD1a+AR_p_DHT_AR_p
rV(1572,1)	=	k_1571*CycD1a_CDK4*AR	 ; % 	 1572	 CycD1a_CDK4+AR = CycD1a_CDK4_AR
rV(1573,1)	=	k_1572*CycD1a_CDK4_AR	 ; % 	 1573	 CycD1a_CDK4_AR = CycD1a_CDK4+AR
rV(1574,1)	=	k_1573*CycD1a_CDK4*AR_DHT	 ; % 	 1574	 CycD1a_CDK4+AR_DHT = CycD1a_CDK4_AR_DHT
rV(1575,1)	=	k_1574*CycD1a_CDK4_AR_DHT	 ; % 	 1575	 CycD1a_CDK4_AR_DHT = CycD1a_CDK4+AR_DHT
rV(1576,1)	=	k_1575*CycD1a_CDK4*AR_p_DHT	 ; % 	 1576	 CycD1a_CDK4+AR_p_DHT = CycD1a_CDK4_AR_p_DHT
rV(1577,1)	=	k_1576*CycD1a_CDK4_AR_p_DHT	 ; % 	 1577	 CycD1a_CDK4_AR_p_DHT = CycD1a_CDK4+AR_p_DHT
rV(1578,1)	=	k_1577*CycD1a_CDK4*AR_p_DHT_2	 ; % 	 1578	 CycD1a_CDK4+AR_p_DHT_2 = CycD1a_CDK4_AR_p_DHT_2
rV(1579,1)	=	k_1578*CycD1a_CDK4_AR_p_DHT_2	 ; % 	 1579	 CycD1a_CDK4_AR_p_DHT_2 = CycD1a_CDK4+AR_p_DHT_2
rV(1580,1)	=	k_1579*CycD1a_CDK4*AR_p_2	 ; % 	 1580	 CycD1a_CDK4+AR_p_2 = CycD1a_CDK4_AR_p_2
rV(1581,1)	=	k_1580*CycD1a_CDK4_AR_p_2	 ; % 	 1581	 CycD1a_CDK4_AR_p_2 = CycD1a_CDK4+AR_p_2
rV(1582,1)	=	k_1581*CycD1a_CDK4*AR_p_DHT_AR_p	 ; % 	 1582	 CycD1a_CDK4+AR_p_DHT_AR_p = CycD1a_CDK4_AR_p_DHT_AR_p
rV(1583,1)	=	k_1582*CycD1a_CDK4_AR_p_DHT_AR_p	 ; % 	 1583	 CycD1a_CDK4_AR_p_DHT_AR_p = CycD1a_CDK4+AR_p_DHT_AR_p
rV(1584,1)	=	k_1583*CycD1a_CDK6*AR	 ; % 	 1584	 CycD1a_CDK6+AR = CycD1a_CDK6_AR
rV(1585,1)	=	k_1584*CycD1a_CDK6_AR	 ; % 	 1585	 CycD1a_CDK6_AR = CycD1a_CDK6+AR
rV(1586,1)	=	k_1585*CycD1a_CDK6*AR_DHT	 ; % 	 1586	 CycD1a_CDK6+AR_DHT = CycD1a_CDK6_AR_DHT
rV(1587,1)	=	k_1586*CycD1a_CDK6_AR_DHT	 ; % 	 1587	 CycD1a_CDK6_AR_DHT = CycD1a_CDK6+AR_DHT
rV(1588,1)	=	k_1587*CycD1a_CDK6*AR_p_DHT	 ; % 	 1588	 CycD1a_CDK6+AR_p_DHT = CycD1a_CDK6_AR_p_DHT
rV(1589,1)	=	k_1588*CycD1a_CDK6_AR_p_DHT	 ; % 	 1589	 CycD1a_CDK6_AR_p_DHT = CycD1a_CDK6+AR_p_DHT
rV(1590,1)	=	k_1589*CycD1a_CDK6*AR_p_DHT_2	 ; % 	 1590	 CycD1a_CDK6+AR_p_DHT_2 = CycD1a_CDK6_AR_p_DHT_2
rV(1591,1)	=	k_1590*CycD1a_CDK6_AR_p_DHT_2	 ; % 	 1591	 CycD1a_CDK6_AR_p_DHT_2 = CycD1a_CDK6+AR_p_DHT_2
rV(1592,1)	=	k_1591*CycD1a_CDK6*AR_p_2	 ; % 	 1592	 CycD1a_CDK6+AR_p_2 = CycD1a_CDK6_AR_p_2
rV(1593,1)	=	k_1592*CycD1a_CDK6_AR_p_2	 ; % 	 1593	 CycD1a_CDK6_AR_p_2 = CycD1a_CDK6+AR_p_2
rV(1594,1)	=	k_1593*CycD1a_CDK6*AR_p_DHT_AR_p	 ; % 	 1594	 CycD1a_CDK6+AR_p_DHT_AR_p = CycD1a_CDK6_AR_p_DHT_AR_p
rV(1595,1)	=	k_1594*CycD1a_CDK6_AR_p_DHT_AR_p	 ; % 	 1595	 CycD1a_CDK6_AR_p_DHT_AR_p = CycD1a_CDK6+AR_p_DHT_AR_p
rV(1596,1)	=	k_1595*CycD1a_n_CDK4_n*AR_p_DHT_2_n	 ; % 	 1596	 CycD1a_n_CDK4_n+AR_p_DHT_2_n = CycD1a_n_CDK4_n_AR_p_DHT_2_n
rV(1597,1)	=	k_1596*CycD1a_n_CDK4_n_AR_p_DHT_2_n	 ; % 	 1597	 CycD1a_n_CDK4_n_AR_p_DHT_2_n = CycD1a_n_CDK4_n+AR_p_DHT_2_n
rV(1598,1)	=	k_1597*CycD1a_n_CDK4_n*AR_p_2_n	 ; % 	 1598	 CycD1a_n_CDK4_n+AR_p_2_n = CycD1a_n_CDK4_n_AR_p_2_n
rV(1599,1)	=	k_1598*CycD1a_n_CDK4_n_AR_p_2_n	 ; % 	 1599	 CycD1a_n_CDK4_n_AR_p_2_n = CycD1a_n_CDK4_n+AR_p_2_n
rV(1600,1)	=	k_1599*CycD1a_n_CDK4_n*AR_p_DHT_AR_p_n	 ; % 	 1600	 CycD1a_n_CDK4_n+AR_p_DHT_AR_p_n = CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n
rV(1601,1)	=	k_1600*CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n	 ; % 	 1601	 CycD1a_n_CDK4_n_AR_p_DHT_AR_p_n = CycD1a_n_CDK4_n+AR_p_DHT_AR_p_n
rV(1602,1)	=	k_1601*CycD1a_n_CDK6_n*AR_p_DHT_2_n	 ; % 	 1602	 CycD1a_n_CDK6_n+AR_p_DHT_2_n = CycD1a_n_CDK6_n_AR_p_DHT_2_n
rV(1603,1)	=	k_1602*CycD1a_n_CDK6_n_AR_p_DHT_2_n	 ; % 	 1603	 CycD1a_n_CDK6_n_AR_p_DHT_2_n = CycD1a_n_CDK6_n+AR_p_DHT_2_n
rV(1604,1)	=	k_1603*CycD1a_n_CDK6_n*AR_p_2_n	 ; % 	 1604	 CycD1a_n_CDK6_n+AR_p_2_n = CycD1a_n_CDK6_n_AR_p_2_n
rV(1605,1)	=	k_1604*CycD1a_n_CDK6_n_AR_p_2_n	 ; % 	 1605	 CycD1a_n_CDK6_n_AR_p_2_n = CycD1a_n_CDK6_n+AR_p_2_n
rV(1606,1)	=	k_1605*CycD1a_n_CDK6_n*AR_p_DHT_AR_p_n	 ; % 	 1606	 CycD1a_n_CDK6_n+AR_p_DHT_AR_p_n = CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n
rV(1607,1)	=	k_1606*CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n	 ; % 	 1607	 CycD1a_n_CDK6_n_AR_p_DHT_AR_p_n = CycD1a_n_CDK6_n+AR_p_DHT_AR_p_n
rV(1608,1)	=	k_1607*CycE*AR_p_DHT_2	 ; % 	 1608	 CycE+AR_p_DHT_2 = CycE_AR_p_DHT_2
rV(1609,1)	=	k_1608*CycE_AR_p_DHT_2	 ; % 	 1609	 CycE_AR_p_DHT_2 = CycE+AR_p_DHT_2
rV(1610,1)	=	k_1609*CycE*AR_p_2	 ; % 	 1610	 CycE+AR_p_2 = CycE_AR_p_2
rV(1611,1)	=	k_1610*CycE_AR_p_2	 ; % 	 1611	 CycE_AR_p_2 = CycE+AR_p_2
rV(1612,1)	=	k_1611*CycE*AR_p_DHT_AR_p	 ; % 	 1612	 CycE+AR_p_DHT_AR_p = CycE_AR_p_DHT_AR_p
rV(1613,1)	=	k_1612*CycE_AR_p_DHT_AR_p	 ; % 	 1613	 CycE_AR_p_DHT_AR_p = CycE+AR_p_DHT_AR_p
rV(1614,1)	=	k_1613*Import*CycE_AR_p_DHT_2	 ; % 	 1614	 Import+CycE_AR_p_DHT_2 = Import_CycE_AR_p_DHT_2
rV(1615,1)	=	k_1614*Import_CycE_AR_p_DHT_2	 ; % 	 1615	 Import_CycE_AR_p_DHT_2 = Import+CycE_AR_p_DHT_2
rV(1616,1)	=	k_1615*Import_CycE_AR_p_DHT_2	 ; % 	 1616	 Import_CycE_AR_p_DHT_2 = Import+CycE_AR_p_DHT_2_n
rV(1617,1)	=	k_1616*Export*CycE_AR_p_DHT_2_n	 ; % 	 1617	 Export+CycE_AR_p_DHT_2_n = Export_CycE_AR_p_DHT_2_n
rV(1618,1)	=	k_1617*Export_CycE_AR_p_DHT_2_n	 ; % 	 1618	 Export_CycE_AR_p_DHT_2_n = Export+CycE_AR_p_DHT_2_n
rV(1619,1)	=	k_1618*Export_CycE_AR_p_DHT_2_n	 ; % 	 1619	 Export_CycE_AR_p_DHT_2_n = Export+CycE_AR_p_DHT_2
rV(1620,1)	=	k_1619*Import*CycE_AR_p_2	 ; % 	 1620	 Import+CycE_AR_p_2 = Import_CycE_AR_p_2
rV(1621,1)	=	k_1620*Import_CycE_AR_p_2	 ; % 	 1621	 Import_CycE_AR_p_2 = Import+CycE_AR_p_2
rV(1622,1)	=	k_1621*Import_CycE_AR_p_2	 ; % 	 1622	 Import_CycE_AR_p_2 = Import+CycE_AR_p_2_n
rV(1623,1)	=	k_1622*Export*CycE_AR_p_2_n	 ; % 	 1623	 Export+CycE_AR_p_2_n = Export_CycE_AR_p_2_n
rV(1624,1)	=	k_1623*Export_CycE_AR_p_2_n	 ; % 	 1624	 Export_CycE_AR_p_2_n = Export+CycE_AR_p_2_n
rV(1625,1)	=	k_1624*Export_CycE_AR_p_2_n	 ; % 	 1625	 Export_CycE_AR_p_2_n = Export+CycE_AR_p_2
rV(1626,1)	=	k_1625*Import*CycE_AR_p_DHT_AR_p	 ; % 	 1626	 Import+CycE_AR_p_DHT_AR_p = Import_CycE_AR_p_DHT_AR_p
rV(1627,1)	=	k_1626*Import_CycE_AR_p_DHT_AR_p	 ; % 	 1627	 Import_CycE_AR_p_DHT_AR_p = Import+CycE_AR_p_DHT_AR_p
rV(1628,1)	=	k_1627*Import_CycE_AR_p_DHT_AR_p	 ; % 	 1628	 Import_CycE_AR_p_DHT_AR_p = Import+CycE_AR_p_DHT_AR_p_n
rV(1629,1)	=	k_1628*Export*CycE_AR_p_DHT_AR_p_n	 ; % 	 1629	 Export+CycE_AR_p_DHT_AR_p_n = Export_CycE_AR_p_DHT_AR_p_n
rV(1630,1)	=	k_1629*Export_CycE_AR_p_DHT_AR_p_n	 ; % 	 1630	 Export_CycE_AR_p_DHT_AR_p_n = Export+CycE_AR_p_DHT_AR_p_n
rV(1631,1)	=	k_1630*Export_CycE_AR_p_DHT_AR_p_n	 ; % 	 1631	 Export_CycE_AR_p_DHT_AR_p_n = Export+CycE_AR_p_DHT_AR_p
rV(1632,1)	=	k_1631*CDK6*AR_p_DHT_2	 ; % 	 1632	 CDK6+AR_p_DHT_2 = CDK6_AR_p_DHT_2
rV(1633,1)	=	k_1632*CDK6_AR_p_DHT_2	 ; % 	 1633	 CDK6_AR_p_DHT_2 = CDK6+AR_p_DHT_2
rV(1634,1)	=	k_1633*CDK6*AR_p_2	 ; % 	 1634	 CDK6+AR_p_2 = CDK6_AR_p_2
rV(1635,1)	=	k_1634*CDK6_AR_p_2	 ; % 	 1635	 CDK6_AR_p_2 = CDK6+AR_p_2
rV(1636,1)	=	k_1635*CDK6*AR_p_DHT_AR_p	 ; % 	 1636	 CDK6+AR_p_DHT_AR_p = CDK6_AR_p_DHT_AR_p
rV(1637,1)	=	k_1636*CDK6_AR_p_DHT_AR_p	 ; % 	 1637	 CDK6_AR_p_DHT_AR_p = CDK6+AR_p_DHT_AR_p
rV(1638,1)	=	k_1637*Import*CDK6_AR_p_DHT_2	 ; % 	 1638	 Import+CDK6_AR_p_DHT_2 = Import_CDK6_AR_p_DHT_2
rV(1639,1)	=	k_1638*Import_CDK6_AR_p_DHT_2	 ; % 	 1639	 Import_CDK6_AR_p_DHT_2 = Import+CDK6_AR_p_DHT_2
rV(1640,1)	=	k_1639*Import_CDK6_AR_p_DHT_2	 ; % 	 1640	 Import_CDK6_AR_p_DHT_2 = Import+CDK6_AR_p_DHT_2_n
rV(1641,1)	=	k_1640*Export*CDK6_AR_p_DHT_2_n	 ; % 	 1641	 Export+CDK6_AR_p_DHT_2_n = Export_CDK6_AR_p_DHT_2_n
rV(1642,1)	=	k_1641*Export_CDK6_AR_p_DHT_2_n	 ; % 	 1642	 Export_CDK6_AR_p_DHT_2_n = Export+CDK6_AR_p_DHT_2_n
rV(1643,1)	=	k_1642*Export_CDK6_AR_p_DHT_2_n	 ; % 	 1643	 Export_CDK6_AR_p_DHT_2_n = Export+CDK6_AR_p_DHT_2
rV(1644,1)	=	k_1643*Import*CDK6_AR_p_2	 ; % 	 1644	 Import+CDK6_AR_p_2 = Import_CDK6_AR_p_2
rV(1645,1)	=	k_1644*Import_CDK6_AR_p_2	 ; % 	 1645	 Import_CDK6_AR_p_2 = Import+CDK6_AR_p_2
rV(1646,1)	=	k_1645*Import_CDK6_AR_p_2	 ; % 	 1646	 Import_CDK6_AR_p_2 = Import+CDK6_AR_p_2_n
rV(1647,1)	=	k_1646*Export*CDK6_AR_p_2_n	 ; % 	 1647	 Export+CDK6_AR_p_2_n = Export_CDK6_AR_p_2_n
rV(1648,1)	=	k_1647*Export_CDK6_AR_p_2_n	 ; % 	 1648	 Export_CDK6_AR_p_2_n = Export+CDK6_AR_p_2_n
rV(1649,1)	=	k_1648*Export_CDK6_AR_p_2_n	 ; % 	 1649	 Export_CDK6_AR_p_2_n = Export+CDK6_AR_p_2
rV(1650,1)	=	k_1649*Import*CDK6_AR_p_DHT_AR_p	 ; % 	 1650	 Import+CDK6_AR_p_DHT_AR_p = Import_CDK6_AR_p_DHT_AR_p
rV(1651,1)	=	k_1650*Import_CDK6_AR_p_DHT_AR_p	 ; % 	 1651	 Import_CDK6_AR_p_DHT_AR_p = Import+CDK6_AR_p_DHT_AR_p
rV(1652,1)	=	k_1651*Import_CDK6_AR_p_DHT_AR_p	 ; % 	 1652	 Import_CDK6_AR_p_DHT_AR_p = Import+CDK6_AR_p_DHT_AR_p_n
rV(1653,1)	=	k_1652*Export*CDK6_AR_p_DHT_AR_p_n	 ; % 	 1653	 Export+CDK6_AR_p_DHT_AR_p_n = Export_CDK6_AR_p_DHT_AR_p_n
rV(1654,1)	=	k_1653*Export_CDK6_AR_p_DHT_AR_p_n	 ; % 	 1654	 Export_CDK6_AR_p_DHT_AR_p_n = Export+CDK6_AR_p_DHT_AR_p_n
rV(1655,1)	=	k_1654*Export_CDK6_AR_p_DHT_AR_p_n	 ; % 	 1655	 Export_CDK6_AR_p_DHT_AR_p_n = Export+CDK6_AR_p_DHT_AR_p
rV(1656,1)	=	k_1655*CDC25A_p*AR	 ; % 	 1656	 CDC25A_p+AR = CDC25A_p_AR
rV(1657,1)	=	k_1656*CDC25A_p_AR	 ; % 	 1657	 CDC25A_p_AR = CDC25A_p+AR
rV(1658,1)	=	k_1657*CDC25A_p*AR_p	 ; % 	 1658	 CDC25A_p+AR_p = CDC25A_p_AR_p
rV(1659,1)	=	k_1658*CDC25A_p_AR_p	 ; % 	 1659	 CDC25A_p_AR_p = CDC25A_p+AR_p
rV(1660,1)	=	k_1659*CDC25A_p*AR_p_DHT_2	 ; % 	 1660	 CDC25A_p+AR_p_DHT_2 = CDC25A_p_AR_p_DHT_2
rV(1661,1)	=	k_1660*CDC25A_p_AR_p_DHT_2	 ; % 	 1661	 CDC25A_p_AR_p_DHT_2 = CDC25A_p+AR_p_DHT_2
rV(1662,1)	=	k_1661*CDC25A_p*AR_p_2	 ; % 	 1662	 CDC25A_p+AR_p_2 = CDC25A_p_AR_p_2
rV(1663,1)	=	k_1662*CDC25A_p_AR_p_2	 ; % 	 1663	 CDC25A_p_AR_p_2 = CDC25A_p+AR_p_2
rV(1664,1)	=	k_1663*CDC25A_p*AR_p_DHT_AR_p	 ; % 	 1664	 CDC25A_p+AR_p_DHT_AR_p = CDC25A_p_AR_p_DHT_AR_p
rV(1665,1)	=	k_1664*CDC25A_p_AR_p_DHT_AR_p	 ; % 	 1665	 CDC25A_p_AR_p_DHT_AR_p = CDC25A_p+AR_p_DHT_AR_p
rV(1666,1)	=	k_1665*AR_p*PP2A	 ; % 	 1666	 AR_p+PP2A = AR_p_PP2A
rV(1667,1)	=	k_1666*AR_p_PP2A	 ; % 	 1667	 AR_p_PP2A = AR_p+PP2A
rV(1668,1)	=	k_1667*AR_p_PP2A	 ; % 	 1668	 AR_p_PP2A = AR+PP2A
rV(1669,1)	=	k_1668*AR_p_DHT*PP2A	 ; % 	 1669	 AR_p_DHT+PP2A = AR_p_DHT_PP2A
rV(1670,1)	=	k_1669*AR_p_DHT_PP2A	 ; % 	 1670	 AR_p_DHT_PP2A = AR_p_DHT+PP2A
rV(1671,1)	=	k_1670*AR_p_DHT_PP2A	 ; % 	 1671	 AR_p_DHT_PP2A = AR_DHT+PP2A
rV(1672,1)	=	k_1671*TOR	 ; % 	 1672	 TOR = TOR_Act
rV(1673,1)	=	k_1672*ERK_p	 ; % 	 1673	 ERK_p = []
rV(1674,1)	=	k_1673*ERK_pp	 ; % 	 1674	 ERK_pp = []

return;
