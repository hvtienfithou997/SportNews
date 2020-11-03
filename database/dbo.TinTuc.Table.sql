USE [SportNews247]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 03/11/2020 17:27:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[id] [varchar](50) NOT NULL,
	[id_dm] [varchar](50) NULL,
	[id_user] [varchar](50) NULL,
	[tieu_de] [nvarchar](200) NULL,
	[img] [varchar](300) NULL,
	[tom_tat] [nvarchar](700) NULL,
	[noi_dung] [ntext] NULL,
	[ngay_tao] [datetime] NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TinTuc] ([id], [id_dm], [id_user], [tieu_de], [img], [tom_tat], [noi_dung], [ngay_tao], [trang_thai]) VALUES (N'7a052934-1469-4ba9-9db1-defaf301be70', N'111', NULL, N'Chơi bóng chuyền dưới nước, những cú đập bóng “có 1 không 2”', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-30/Choi-bong-chuyen-duoi-nuoc-nhung-cu-dap-bong-co-1-khong-2-bongchuyen2-1604049410-667-width660height495.jpg', N'(Tin thể thao, tin bóng chuyền) Giải đấu bóng chuyền được chơi dưới nước thu hút sự quan tâm của đông đảo khán giả.', N'<p>B&oacute;ng chuy?n l&agrave; m&ocirc;n&nbsp;<a href="https://www.24h.com.vn/the-thao-c101.html">th? thao</a>&nbsp;ph? bi?n tr&ecirc;n to&agrave;n th? gi?i, m&ocirc;n choi n&agrave;y thu?ng di?n ra tr&ecirc;n s&acirc;n c?ng ho?c c&aacute;t, tuy nhi&ecirc;n vi?c b&oacute;ng chuy?n thi d?u tr&ecirc;n m?t nu?c t?o n&ecirc;n c?nh tu?ng khi?n nhi?u ngu?i b?t ng?. H&agrave;ng nam tr&ecirc;n con s&ocirc;ng&nbsp;Ljubljanica, ph&iacute;a Nam d?t nu?c Slovenia ngu?i ta l?i du?c ch?ng ki?n gi?i d?u b&oacute;ng chuy?n tr&ecirc;n nu?c.&nbsp;</p>

<p><img alt="Choi bóng chuy?n du?i nu?c, nh?ng cú d?p bóng “có 1 không 2” - 1" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-30/Choi-bong-chuyen-duoi-nuoc-nhung-cu-dap-bong-co-1-khong-2-bongchuyen2-1604049410-667-width660height495.jpg" /></p>

<p>B&oacute;ng chuy?n choi tr&ecirc;n m?t nu?c t?i Slovenia</p>

<p>Ði b? tr&ecirc;n m?t nu?c d&atilde; kh&oacute; nhung c&aacute;c VÐV c&ograve;n ph?i th?c hi?n di?u kh&oacute; hon, ch?y, d?, c?u, n&ecirc;u b&oacute;ng, hay nh?y l&ecirc;n d?p b&oacute;ng sang lu?i d?i phuong. Gi?i d?u l&agrave; m?t &quot;d?c s?n&quot; c?a Slovenia, n&oacute; thu h&uacute;t d&ocirc;ng d?o ngu?i d&acirc;n d?a phuong v&agrave; kh&aacute;ch du l?ch t?i xem.&nbsp;</p>

<p>C&aacute;c tr?n d?u du?c di?n ra tr&ecirc;n th?m d?u b&ecirc;n du?i l&ograve;ng s&ocirc;ng, kh&aacute;n gi? c&oacute; th? d?ng b&ecirc;n tr&ecirc;n d? quan s&aacute;t c&aacute;c VÐV thi d?u.&nbsp;Tomi Smuc m?t c?u th? sau khi tham gia choi b&oacute;ng d&atilde; n&oacute;i:&nbsp;&quot;T&ocirc;i nghi kh&ocirc;ng th? choi b&oacute;ng tr&ecirc;n m?t nu?c, nhung cu?i c&ugrave;ng tr&ograve; n&agrave;y th?t th&uacute; v?, s? ki?n n&agrave;y th?t d?c bi?t v&agrave; kh&oacute; qu&ecirc;n, t&ocirc;i c?m th?y vui&nbsp;m?ng khi tr? th&agrave;nh m?t ph?n c?a n&oacute;&quot;.</p>

<p>Gi?i d?u t?i Slovenia d&atilde; t?o du?c ti?ng vang l?n. H&agrave;ng nam c&aacute;c d?i b&oacute;ng t? qu?c gia kh&aacute;c nhu Ph&aacute;p, &Yacute;, T&acirc;y Ban Nha, B?...d?u c? d?i b&oacute;ng t?i Slovenia tranh t&agrave;i.</p>

<p>&nbsp;</p>

<p><img alt="Choi bóng chuy?n du?i nu?c, nh?ng cú d?p bóng “có 1 không 2” - 2" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-30/Choi-bong-chuyen-duoi-nuoc-nhung-cu-dap-bong-co-1-khong-2-bongchuyen1-1604049410-107-width660height495.jpg" /></p>

<p>&nbsp;</p>

<p>C&oacute; nhi?u d?i b&oacute;ng n? cung tham d?</p>
', CAST(N'2020-11-03T16:02:30.260' AS DateTime), 1)
INSERT [dbo].[TinTuc] ([id], [id_dm], [id_user], [tieu_de], [img], [tom_tat], [noi_dung], [ngay_tao], [trang_thai]) VALUES (N'85d31f2e-f124-461d-a55d-9725e4c2b23b', N'111', NULL, N'Sau sự cố "clip nóng" bị phát tán, người đẹp bóng chuyền Mỹ xây cuộc sống mới', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-10-29/14-660-1603967641-244-width660height440.jpg', N'(Tin thể thao - Tin bóng chuyền) Harper Hempel và bạn trai Jamal Murray từng bị phát tán "clip nóng" trên mạng xã hội khiến cô suy sụp trong một khoảng thời gian.', N'<p><strong>Ngu?i d?p Harper Hempel d?ng d?y sau s? c? &ldquo;clip n&oacute;ng&rdquo;</strong></p>

<p>C&aacute;ch d&acirc;y v&agrave;i th&aacute;ng, Harper Hempel tr? th&agrave;nh t&acirc;m di?m c?a gi?i m? di?u khi b? r&ograve; r? &ldquo;clip n&oacute;ng&rdquo; c&ugrave;ng b?n trai Jamal Murray. Ng&ocirc;i sao c?a CLB b&oacute;ng r? Denver Nuggets sau d&oacute; ph?i thi d?u t?i NBA Playoffs trong khu ph?c h?p c?a gi?i d?u n&ecirc;n kh&ocirc;ng th? ? g?n c&ocirc; d? cham s&oacute;c nhu thu?ng l?. Hempel chia s? nhi?u th?i di?m c&ocirc; c?m th?y r?t c&ocirc; don.</p>

<p><img alt="Sau s? c? &amp;#34;clip nóng&amp;#34; b? phát tán, ngu?i d?p bóng chuy?n M? xây cu?c s?ng m?i - 1" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-29/14-660-1603967641-244-width660height440.jpg" /></p>

<p>Harper Hempel c&ugrave;ng b?n trai Jamal Murray t?ng b? l? &quot;clip n&oacute;ng&quot;</p>

<p>Tuy nhi&ecirc;n, n?i dau theo th?i gian cung d?n x&oacute;a nh&ograve;a. Hi?n t?i, Hampel d&atilde; chuy?n sang m?t th&agrave;nh ph? m?i v?i m?t cu?c s?ng m?i. B&ecirc;n c?nh d&oacute;, b?n trai Jamal Murray cung d&atilde; tr? l?i b&ecirc;n c?nh sau th?i gian xa c&aacute;ch.</p>

<p><strong>M? nh&acirc;n ngu?i&nbsp;M? gi&uacute;p CLB b&oacute;ng chuy?n Italia bay cao</strong></p>

<p>T?i gi?i b&oacute;ng chuy?n n? VÐQG Italia, CLB Imoco Volley Conegliano dang th? hi?n s? &ldquo;v&ocirc; d?i&rdquo; khi to&agrave;n th?ng 7 v&ograve;ng d?u ti&ecirc;n. Ngu?i d?p t?i t? M?, McKenzie Adams g&oacute;p c&ocirc;ng kh&ocirc;ng nh? trong chu?i tr?n n&agrave;y.</p>

<p>C&ocirc; n&agrave;ng sinh nam 1992 thi d?u ? v? tr&iacute; ch? c&ocirc;ng v?i nh?ng pha d?p b&oacute;ng &ldquo;s?m s&eacute;t&rdquo; t? hai h&agrave;nh lang bi&ecirc;n.</p>

<p><strong>Ch&acirc;n d&agrave;i Thanh Th&uacute;y khoe d&aacute;ng c&ugrave;ng B&ugrave;i Ng&agrave;</strong></p>

<p>M?i d&acirc;y, ch&acirc;n d&agrave;i b&oacute;ng chuy?n Vi?t Nam Nguy?n Th? Thanh Th&uacute;y khoe d&aacute;ng c&ugrave;ng ph? c&ocirc;ng B&ugrave;i Th? Ng&agrave; trong m?t b?c ?nh du?c dang t?i tr&ecirc;n m?ng x&atilde; h?i.</p>

<p>C? hai chu?n b? thi d?u t?i gi?i b&oacute;ng chuy?n C&uacute;p Qu&acirc;n d?i m? r?ng 2020. T?i gi?i d?u n&agrave;y, Thanh Th&uacute;y s? thi d?u cho CLB B&igrave;nh Ði?n Long An trong khi B&ugrave;i Ng&agrave; s? l&agrave; d?i th? khi kho&aacute;c &aacute;o Th&ocirc;ng tin Li&ecirc;n Vi?t Postbank.</p>

<p>&nbsp;</p>

<p><img alt="Sau s? c? &amp;#34;clip nóng&amp;#34; b? phát tán, ngu?i d?p bóng chuy?n M? xây cu?c s?ng m?i - 2" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-10-29/12-660-1603967695-71-width660height660.jpg" /></p>

<p>&nbsp;</p>

<p>Thanh Th&uacute;y khoe d&aacute;ng c&ugrave;ng B&ugrave;i Ng&agrave;</p>

<p><strong>Ti&ecirc;n n?&nbsp;b&oacute;ng chuy?n x? &ldquo;c? hoa&rdquo; th&iacute;ch khoe th&acirc;n</strong></p>

<p>Kayla Simmons l&agrave; m?t trong nh?ng c&aacute;i t&ecirc;n n?i b?t c? v? s?c d?p l?n t&agrave;i nang c?a tru?ng Yonge Developmental (M?). S? h?u chi?u cao 1m75, n? VÐV xinh d?p choi ? v? tr&iacute; chuy?n hai.</p>

<p>Kh&ocirc;ng nh?ng v?y, c&ocirc; n&agrave;ng n&agrave;y c&ograve;n du?c bi?t d?n v?i s? th&iacute;ch khoe th&acirc;n h&igrave;nh trong nh?ng b? bikini c?c k? n&oacute;ng b?ng. V?i s? do ba v&ograve;ng &ldquo;chu?n nhu si&ecirc;u m?u&rdquo;, Kayla Simmons thu?ng xuy&ecirc;n &ldquo;d?n tim&rdquo; ngu?i h&acirc;m m?.</p>
', CAST(N'2020-11-03T16:04:26.337' AS DateTime), 1)
INSERT [dbo].[TinTuc] ([id], [id_dm], [id_user], [tieu_de], [img], [tom_tat], [noi_dung], [ngay_tao], [trang_thai]) VALUES (N'eb41b772-d17e-4a0e-863b-0a250eaab5d3', N'123', NULL, N'SỐC hậu trường Barca: HLV Setien mất ghế vì "liều mạng" nói câu này với Messi', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-11-03/SoC-hau-truong-Barca-Setien-ca-gan-noi-cau-nay-voi-Messi-lap-tuc-mat-ghe-ggdf-1604361044-153-width640height480.jpg', N'Xuất hiện những hé lộ mới nhất liên quan đến cựu HLV Barca Quique Setien và ngôi sao Lionel Messi khi cả hai còn chung chiến tuyến.', N'<p>Setien du?c b? nhi?m HLV&nbsp;<a href="https://www.24h.com.vn/barcelona-c48e1507.html">Barca</a>, thay th? Ernesto Valverde h&ocirc;m 13/1, v?i h?p d?ng d?n th&aacute;ng 6/2022. &Ocirc;ng b? sa th?i sau tr?n thua 2-8 tru?c Bayern ? t? k?t Champions League, c&ugrave;ng v?i d&oacute; l&agrave; vi?c d&aacute;nh m?t l?i th? trong cu?c dua v&ocirc; d?ch La Liga v?i Real v&agrave; ng?m ng&ugrave;i nh&igrave;n d?i k&igrave;nh d?ch l&ecirc;n ng&ocirc;i.</p>

<p><img alt="S?C h?u tru?ng Barca: HLV Setien m?t gh? vì &amp;#34;li?u m?ng&amp;#34; nói câu này v?i Messi - 1" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-11-03/SoC-hau-truong-Barca-Setien-ca-gan-noi-cau-nay-voi-Messi-lap-tuc-mat-ghe-ggdf-1604361044-153-width640height480.jpg" /></p>

<p>Setien kh&ocirc;ng du?c l&ograve;ng Messi</p>

<p>Th?i gian n&agrave;y cung xu?t hi?n nh?ng r?n n?t gi?a Messi v&agrave; v? hu?n luy?n vi&ecirc;n tru?ng cung nhu ban l&atilde;nh d?o Barca v? c&aacute;ch v?n h&agrave;nh d?i b&oacute;ng cung nhu nh?ng v?n d? v? chuy&ecirc;n m&ocirc;n. S?&nbsp;cang th?ng gi?a Messi v&agrave; Setien du?c cho l&agrave; &ldquo;ng&agrave;y c&agrave;ng tang cao v&agrave; kh&ocirc;ng c&oacute; d?u hi?u gi?m nhi?t&rdquo;.</p>

<p>Trong m?t h&eacute; l? m?i nh?t t? t? Mundo Deportivo, Messi v&agrave; Setien d&atilde; to ti?ng v?i nhau sau khi Barca d&aacute;nh roi di?m s? tru?c Celta Vigo h?i th&aacute;ng 6/2020. Tr?n d&oacute; Barca h&ograve;a Celta 2-2, t?o di?u ki?n thu?n l?i d? Zinedine Zidane v&agrave; Real Madrid bang bang v? d&iacute;ch t?i La Liga.</p>

<p>Theo d&oacute;, Messi d?t nghi v?n v? chi?n thu?t c?a Setien sau k?t qu? t? h?i n&agrave;y, l&ecirc;n ti?ng k&ecirc;u g?i v? HLV ph?i t&ocirc;n tr?ng c&aacute;c c?u th?, nh?ng ngu?i d&atilde; gi&agrave;nh du?c nhi?u danh hi?u hon &ocirc;ng. &ldquo;N?u c?u kh&ocirc;ng th&iacute;ch nh?ng g&igrave; t&ocirc;i n&oacute;i, th&igrave; bi?t c&aacute;nh c?a di ra&nbsp;? d&acirc;u r?i d?y&rdquo;, Setien d?p l?i. Messi du?c cho d&atilde; b?t cu?i sau c&acirc;u n&oacute;i tr&ecirc;n.</p>

<p>Trong m?t cu?c ph?ng v?n m?i d&acirc;y v?i t? El Pais c?a T&acirc;y Ban Nha, d&iacute;ch th&acirc;n Setien cung th?a nh?n &ldquo;r?t kh&oacute; d? hu?n luy?n Messi&rdquo;. Setien cho r?ng Messi &ldquo;kh&ocirc;ng ph?i m?t c?u th? don thu?n&rdquo; v&agrave; &ldquo;c&oacute; nh?ng kh&iacute;a c?nh kh&aacute;c r?t ph?c t?p, r?t kh&oacute; n?m b?t&rdquo;.</p>

<p>Messi d&atilde; tr?i qua m?t m&ugrave;a h&egrave; 2020 d?y s&oacute;ng gi&oacute; v?i Barca, li&ecirc;n quan d?n tuong lai c?a anh ? CLB. Ng&ocirc;i sao ngu?i Argentina b&agrave;y t? mong mu?n k&iacute;ch ho?t di?u kho?n ra di t? do, k?t th&uacute;c g?n 2 th?p k? g?n b&oacute; v?i d?i ch? s&acirc;n Nou Camp. D&ugrave; v?y sau t?t c? nh?ng l&ugrave;m x&ugrave;m, Messi v?n ? l?i Barca. Trong nh?ng di?n bi?n m?i d&acirc;y, Ch? t?ch Josep Bartomeu cung d&atilde; t? ch?c.</p>

<p>Trong m?t th&ocirc;ng tin d&aacute;ng ch&uacute; &yacute; kh&aacute;c, k&ecirc;nh El Chiringuito n?i ti?ng c?a T&acirc;y Ban Nha d&atilde; ti?t l? vi?c Messi v?n dang duy tr&igrave; k? ho?ch r?i&nbsp;<a href="https://www.24h.com.vn/barcelona-c48e1507.html">Barcelona</a>, b?t ch?p vi?c Bartomeu kh&ocirc;ng c&ograve;n t?i v?. K&ecirc;nh n&agrave;y d?n m?t ngu?n tin cho r?ng, si&ecirc;u sao 33 tu?i ngu?i Argentina v?n c?m th?y m?t m?i khi ti?p t?c v?i Barcelona v&agrave; dang s? d?ng Bartomeu nhu m?t c&aacute;i c? d? r?i CLB.</p>
', CAST(N'2020-11-03T15:15:03.253' AS DateTime), 1)
INSERT [dbo].[TinTuc] ([id], [id_dm], [id_user], [tieu_de], [img], [tom_tat], [noi_dung], [ngay_tao], [trang_thai]) VALUES (N'f74fa78a-c40a-4eae-86fa-7769284f0d58', N'123', NULL, N'Nhận định bóng đá cúp C1 Atalanta - Liverpool: Chờ đại tiệc siêu tấn công', N'https://cdn.24h.com.vn/upload/4-2020/images/2020-11-02/liv-1-660-1604329475-932-width660height440.jpg', N'(Nhận định bóng đá Atalanta - Liverpool, 3h, 4/11, lượt trận 3 bảng D Champions League) Cuộc đối đầu giữa hai đội bóng sở hữu hàng công cực mạnh hứa hẹn sẽ mang đến một bữa tiệc bàn thắng dành cho người hâm mộ.', N'<p>Sau 2 chi?n th?ng ? b?ng D,&nbsp;<a href="https://www.24h.com.vn/liverpool-c48e1528.html">Liverpool</a>&nbsp;dang v?ng ch?c ? v? tr&iacute; d?u b?ng v?i 6 di?m tuy?t d?i. Ð?i th? ti?p theo c?a d?i di?n nu?c Anh l&agrave; Atalanta, d?i b&oacute;ng cung kh?i d?u ?n tu?ng ?&nbsp;<a href="https://www.24h.com.vn/cup-c1-champions-league-c153.html">Champions League</a>&nbsp;v?i 4 di?m sau 2 tr?n.</p>

<p><img alt="Nh?n d?nh bóng dá cúp C1 Atalanta - Liverpool: Ch? d?i ti?c siêu t?n công - 1" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-11-02/liv-1-660-1604329475-932-width660height440.jpg" /></p>

<p>Liverpool gi&agrave;nh 6 di?m tr?n v?n ? 2 tr?n m? m&agrave;n Champions League m&ugrave;a n&agrave;y</p>

<p>C&oacute; th? n&oacute;i, chuy?n h&agrave;nh qu&acirc;n t?i Italia c?a th?y tr&ograve; Jurgen Klopp s? th?c s? &quot;l&agrave;nh &iacute;t d? nhi?u&quot;, trong b?i c?nh nhi?u tr? c?t c?a nh&agrave; ÐKVÐ nu?c Anh chua th? tr? l?i v&igrave; ch?n thuong. Th? nhung, d&ugrave; dang ch?u nhi?u kh&oacute; khan v? l?c lu?ng nhung Liverpool v?n cho th?y d?ng c?p c?a m?t &quot;&ocirc;ng l?n&quot; ch&acirc;u &Acirc;u b?ng m&agrave;n tr&igrave;nh di?n ?n tu?ng ? c? hai d?u tru?ng l&agrave; Premier League v&agrave; Champions League.&nbsp;</p>

<p>K? t? sau tr?n thua n?ng n?&nbsp;tru?c Aston Villa, do&agrave;n qu&acirc;n c?a HLV Klopp d&atilde; b?t b?i 5 tr?n d?u li&ecirc;n ti?p v?i 4 chi?n th?ng v&agrave;&nbsp;1 tr?n h&ograve;a. Chi?n th?ng g?n nh?t tru?c West Ham ? v&ograve;ng 7 gi?i Ngo?i h?ng Anh d&atilde; dua &quot;The Kop&quot; l&ecirc;n ng&ocirc;i d?u b?ng, v? tr&iacute; quen thu?c c?a d?i b&oacute;ng th&agrave;nh ph? c?ng m&ugrave;a tru?c.</p>

<p><img alt="Nh?n d?nh bóng dá cúp C1 Atalanta - Liverpool: Ch? d?i ti?c siêu t?n công - 2" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-11-02/liv-2-660-1604329510-411-width660height371.jpg" /></p>

<p>Jota dang ch?ng minh gi&aacute; tr? c?a m&igrave;nh&nbsp;</p>

<p>Con dau d?u noi h&agrave;ng ph&ograve;ng ng? d&atilde; ph?n n&agrave;o voi di khi h&agrave;ng c&ocirc;ng c?a Liverpool&nbsp;lu&ocirc;n bi?t t?a s&aacute;ng d&uacute;ng l&uacute;c v?i s? b? sung gi&aacute; tr? mang t&ecirc;n Diogo Jota. Ch&acirc;n s&uacute;t ngu?i B? Ð&agrave;o Nha d&ugrave; thu?ng xuy&ecirc;n v&agrave;o s&acirc;n t? gh? d? b? nhung d&atilde; k?p s? h?u 4 b&agrave;n th?ng tr&ecirc;n m?i d?u tru?ng cho Liverpool. N?u ti?p t?c gi? phong d? hi?n t?i, kh? nang Jota d?y Firmino l&ecirc;n gh? d? b? l&agrave; ho&agrave;n to&agrave;n c&oacute; th? x?y ra.</p>

<p>? ph&iacute;a b&ecirc;n kia chi?n tuy?n, d?i ch? nh&agrave; Atalanta cung dang s? h?u phong d? tuong d?i ?n tu?ng. Th?y tr&ograve;&nbsp;Gasperini dang x?p th? 2 t?i b?ng D ngay sau Liverpool&nbsp;v?i 2 di?m k&eacute;m&nbsp;hon.&nbsp;T?i Serie A, Atalanta&nbsp;cung c&oacute; m&agrave;n tr&igrave;nh di?n ?n d?nh v?i&nbsp;v? tr&iacute; th? 4 tr&ecirc;n BXH khi c&oacute; c&ugrave;ng 12 di?m v?i nh&agrave; ÐKVÐ Juventus.</p>

<p>&nbsp;</p>

<p><img alt="Nh?n d?nh bóng dá cúp C1 Atalanta - Liverpool: Ch? d?i ti?c siêu t?n công - 3" src="https://cdn.24h.com.vn/upload/4-2020/images/2020-11-02/liv-3-660-1604329533-617-width660height440.jpg" /></p>

<p>&nbsp;</p>

<p>Ð?i ch? nh&agrave; s? ti?p t?c ch? d?i s? t?a s&aacute;ng c?a&nbsp;Zapata</p>

<p>H&agrave;ng t?n c&ocirc;ng v?n l&agrave; di?m m?nh c?a Atalanta gi?ng nhu m&ugrave;a gi?i nam ngo&aacute;i. S? thang hoa c?a&nbsp;Duvan Zapata ? Champions League nam nay (3 b&agrave;n, 2 ki?n t?o)&nbsp;dang th?c s? l&agrave; ngu?n c?m h?ng tuy?t v?i d? d?i di?n Serie A t? tin gi&agrave;nh v&eacute; di ti?p ? b?ng d?u c&oacute; s? hi?n di?n c?a c? Liverpool v&agrave; Ajax.</p>

<p>Chi?n th?ng s? l&agrave; m?c ti&ecirc;u m&agrave; c? Liverpool l?n Atalanta hu?ng t?i nhung r&otilde; r&agrave;ng, c?u vuong ch&acirc;u &Acirc;u Liverpool v?n l&agrave; d?i b&oacute;ng du?c d&aacute;nh gi&aacute; cao hon. Trong khi d&oacute;, l?i th? s&acirc;n nh&agrave; s? l&agrave; di?m t?a d? Atalanta hy v?ng gi? l?i &iacute;t nh?t 1 di?m v&agrave; g?n nhu ch?c ch?n, m?t tr?n c?u d&ocirc;i c&ocirc;ng d?p m?t dang ch? d?i ngu?i h&acirc;m m? ? ph&iacute;a tru?c.</p>

<p><strong>D? do&aacute;n t? s?</strong>:&nbsp;Atalanta 2-3 Liverpool</p>

<table align="center" cellpadding="3" cellspacing="0" style="width:500px">
	<tbody>
		<tr>
			<td style="vertical-align:top">
			<p><strong>T&igrave;nh h&igrave;nh l?c lu?ng:</strong></p>

			<p>Atalanta: V?ng Caldara, Carnesecchi, Piccini, De Roon ch?n thuong.</p>

			<p>Liverpool: V?ng Van Dijk, Chamberlain, Fabinho ch?n thuong. Kh? nang ra s&acirc;n c?a Thiago, Matip, Keita, Tsimikas b? ng?.</p>

			<p><strong>Ð?i h&igrave;nh d? ki?n:</strong></p>

			<p>Atalanta:&nbsp;Sportiello, Toloi, Romero, Djimsiti, Hateboer, Malinovskyi, Freuler, Pasalic, Mojica, Gomez, Zapata.</p>

			<p>Liverpool:&nbsp;Alisson, Robertson, Gomez, Phillips, Arnold, Wijnaldum, Henderson, Milner, Mane, Firmino, Salah.</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(N'2020-11-03T15:16:47.937' AS DateTime), 1)
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_DanhMucTin] FOREIGN KEY([id_dm])
REFERENCES [dbo].[DanhMucTin] ([id])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_DanhMucTin]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_User] FOREIGN KEY([id_user])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_User]
GO
