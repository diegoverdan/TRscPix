object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PIX - By: Roniery Santos Cardoso'
  ClientHeight = 616
  ClientWidth = 1051
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 145
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1051
      145)
    object Label1: TLabel
      Left = 892
      Top = 7
      Width = 75
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Tipo QRCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 950
    end
    object cbbTipoQRCode: TComboBox
      Left = 892
      Top = 26
      Width = 145
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 10
      Width = 255
      Height = 125
      Align = alLeft
      Caption = 'Cobran'#231'a Pix'
      TabOrder = 1
      object Button1: TButton
        AlignWithMargins = True
        Left = 7
        Top = 15
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Gerar Combran'#231'a QRCode'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        AlignWithMargins = True
        Left = 7
        Top = 40
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Consultar Combran'#231'a Pix'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        AlignWithMargins = True
        Left = 7
        Top = 65
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Cancelar Cobran'#231'a Pix'
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 280
      Top = 10
      Width = 255
      Height = 125
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Pix'
      TabOrder = 2
      object Button5: TButton
        AlignWithMargins = True
        Left = 7
        Top = 15
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Consultar Lista de Pix Recebios Por Per'#237'odo'
        TabOrder = 0
        OnClick = Button5Click
      end
      object Button6: TButton
        AlignWithMargins = True
        Left = 7
        Top = 40
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Consultar Pix'
        TabOrder = 1
        OnClick = Button6Click
      end
      object Button7: TButton
        AlignWithMargins = True
        Left = 7
        Top = 90
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Consultar Devolu'#231'ao Pix'
        TabOrder = 2
        OnClick = Button7Click
      end
      object Button4: TButton
        AlignWithMargins = True
        Left = 7
        Top = 65
        Width = 241
        Height = 25
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Solicitar Devolu'#231'ao Pix'
        TabOrder = 3
        OnClick = Button4Click
      end
    end
  end
  object Panel2: TPanel
    Left = 649
    Top = 145
    Width = 402
    Height = 471
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 130
      Width = 394
      Height = 50
      Align = alTop
      Caption = 'Chave Pix para Contribu'#237#231#227'o: E-MAIL: ronierys2@hotmail.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 359
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 48
      Width = 394
      Height = 76
      Align = alTop
      Caption = 
        'Se o Componente lhe ajudar fique a vontade para fazer uma doa'#231#227'o' +
        ' para n'#243's, assim continuamos nosso trabalho e sempre estaremos b' +
        'uscando novas formas de contribuir com nossa comunidade.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 391
    end
    object Image1: TImage
      Left = 1
      Top = 183
      Width = 400
      Height = 287
      Align = alClient
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000001900000
        0190080600000080BF36CC00001C8E4944415478DAED9D3176EC300E04F7DFFF
        D0BB9BD99E6048100DA02955E5241AD090E5C07AFAF7DFFFF31F00008020FF10
        0800009C80400000E0080402000047201000003802810000C011080400008E40
        20000070040201008023100800001C81400000E0080402000047201000003802
        810000C011080400008E4020000070040201008023100800001C81400000E008
        0402000047201000003802810000C011080400008E4020000070040201008023
        100800001C81400000E0080402000047201000003802810000C011080400008E
        1815C8BF7FFFA6FB975335CECCAC5699AA9E437616DF7255FE6CAB66BDDA37B3
        B6325755DD0C93B37464EA1A47206210886E16084493A97AEFD3BA1910C87EBF
        952010310844370B04A2C954BDF769DD0C0864BFDF4A10881804A29B0502D164
        AADEFBB46E0604B2DF6F2508440C02D1CD0281683255EF7D5A370302D9EFB712
        04220681E86681403499AAF73EAD9B0181ECF75B090211834074B340209A4CD5
        7B9FD6CD8040F6FBADC45620AEAFA7647EB853756F5CBB5AEFBA368363DD6C6D
        C7E7307586B338DE97084498B932F78D124020311CEB666B3B3E070422CC8440
        74992B73DF28010412C3B16EB6B6E3734020C24C084497B932F78D124020311C
        EB666B3B3E070422CC844074992B73DF28010412C3B16EB6B6E3734020C24C08
        4497B932F78D124020311CEB666B3B3E070422CC844074992B73DF28010412C3
        B16EB6B6E3734020C24C084497B932F78D124020311CEB666B3B3E070422CC74
        AB40A65E7E7BE2619B3AA82B1C5FCA9BBAB8265F7EABFC23E11BAE0271BC7B10
        4870208E0F7167FDC43C10882E1702D1F5B40281F4CC23030211D745207BFBEE
        80403499B32090D8FA531048B4380269990702D1E54220BA9E5620909E796440
        20E2BA08646FDF1D108826731604125B7F0A02891647202DF34020BA5C0844D7
        D30A04D2338F0C08445C1781ECEDBB0302D164CE824062EB4F4120D1E2084436
        8F4CE6AA794C3DC355ED1BE5B3E2C65C95BF8FA9F7933220906871C3CB0781E8
        E6814062F3C870632E04A2AB8B408203717C883BEBABE691C95C350F04129B47
        861B7321105D5D04121C88E343DC595F358F4CE6AA792090D83C32DC980B81E8
        EA2290E0401C1FE2CEFAAA79643257CD0381C4E691E1C65C08445717810407E2
        F81077D657CD2393B96A1E0824368F0C37E64220BABA08243810C787B8B3BE6A
        1E99CC55F34020B17964B8311702D1D54520C181383EC49DF555F3C864AE9A07
        0289CD23C38DB91088AE2E02090EC4F121EEACAFEAA9EA313EF1DB095320E3FB
        3357E64620D1E286070681F4F55B0902E9C98D407A32AFEA2290E0401C1FE2CE
        FAAA9E10482CF70408E4FECC95B91148B4B8E18141207DFD5682407A7223909E
        CCABBA08243810C787B8B3BEAA270412CB3D0102B93F73656E04122D6E786010
        485FBF9520909EDC08A427F3AA2E02090EC4F121EEACAFEA0981C4724F8040EE
        CF5C991B81448B1B0E24937995DBF57D8C4CBF99CC954CFDB66EFCD648654F55
        99323CF18F22046232904CE6556E04D20702E9DB7BA2DF0C0844980981E832AF
        7223903E1048DFDE13FD664020C24C08449779951B81F48140FAF69EE8370302
        11664220BACCABDC08A40F04D2B7F744BF191088301302D1655EE546207D2090
        BEBD27FACD8040849910882EF32A3702E90381F4ED3DD16F060422CC84407499
        57B911481F08A46FEF897E33201061265781DCCAD44B574F5BBB5ACFDAFDB5AB
        F5ACBD1F04F2106E3C308E6B57EB59BBBF76B59EB5F783401EC28D07C671ED6A
        3D6BF7D7AED6B3F67E10C843B8F1C038AE5DAD67EDFEDAD57AD6DE0F02790837
        1E18C7B5ABF5ACDD5FBB5ACFDAFB41200FE1C603E3B876B59EB5FB6B57EB597B
        3F08E421DC78601CD7AED6B3767FED6A3D6BEF07813C841B0F8CE3DAD57AD6EE
        AF5DAD67EDFDBC5220D083EB877BA6F6767D9130C3D44B88937F60C03C08E405
        2090FD7DB320909EB5E00102790108647FDF2C08A4672D7880405E0002D9DF37
        0B02E9590B1E2090178040F6F7CD82407AD6820708E4052090FD7DB320909EB5
        E00102790108647FDF2C08A4672D7860FB1E88EB8158C1F7403499DF88E3373B
        B2991D9F71E53B356F038104D7AE40209ACC6F0481DC911981FC8040826B5720
        104DE6378240EEC88C407E4020C1B52B108826F31B4120776446203F2090E0DA
        15084493F98D20903B3223901F104870ED0A04A2C9FC4610C81D9911C80F0824
        B8760502D1647E2308E48ECC08E40704125CBB02816832BF110472476604F2C3
        2B059261EA22CFF47CE3215FE5E67B10FBFDAE7A76FD4D9F665A91CD5C55FB46
        71219020AE870D81E8D6DE0802D90781E84020415C0F1B02D1ADBD1104B20F02
        D1814082B81E3604A25B7B2308641F04A2038104713D6C0844B7F64610C83E08
        44070209E27AD810886EED8D20907D10880E0412C4F5B02110DDDA1B4120FB20
        101DD77E0F64EA404CCAA90AD76F6B5465AEECE989978BEB79A9A2B2A71BBF71
        F375160844B736CB8D97F18D992B7B4220BA794C8140F64120C2B5596EBC8C6F
        CC5CD91302D1CD630A04B20F0211AECD72E3657C63E6CA9E10886E1E5320907D
        1088706D961B2FE31B3357F6844074F3980281EC8340846BB3DC7819DF98B9B2
        2704A29BC71408641F04225C9BE5C6CBF8C6CC953D2110DD3CA64020FB2010E1
        DA2C375EC63766AEEC0981E8E6310502D9C7F645C215373E88A94B806F7AE898
        FC7D3CADA7A9DF56E5F740A65E704520416E7C1008E47E1088AE2704A2EB1781
        04B9F1412090FB4120BA9E1088AE5F0412E4C6078140EE0781E87A4220BA7E11
        48901B1F0402B91F04A2EB0981E8FA4520416E7C1008E47E1088AE2704A2EB17
        8104B9F1412090FB4120BA9E1088AEDF570A648ACA1F75D53B04B7BEDBF20DC7
        F72DB2B83E07C7EFA3B87EC364EA0FAE2BBFCB8240FE8240FA4020BA9E323DBB
        3EFF1BCF836B4F5520900F10481F0844D753A667D7E77FE37970EDA90A04F201
        02E90381E87ACAF4ECFAFC6F3C0FAE3D5581403E40207D20105D4F999E5D9FFF
        8DE7C1B5A72A10C80708A40F04A2EB29D3B3EBF3BFF13CB8F6540502F90081F4
        8140743D657A767DFE379E07D79EAA40201F20903E1088AEA74CCFAECFFFC6F3
        E0DA5315D7BE48F88D273A71EAC29CFC0E4515377E4B64F20F9B4CDD0C377E6B
        068174164720DB20101DAE971E02E9C95CD91302E92C8E40B641203A5C2F3D04
        D293B9B22704D2591C816C834074B85E7A08A42773654F08A4B33802D90681E8
        70BDF410484FE6CA9E1048677104B20D02D1E17AE921909ECC953D2190CEE208
        641B04A2C3F5D243203D992B7B422026DCF8BFE9937B57F53C7941381EB65B45
        3E75F94C7DF3C7F5193B4A200302F90081F4654220BABAAE171702D9DFDBF42A
        FEDE0F02F90B02E9CB844074755D2F2E04B2BFB7E955FCBD1F04F21704D29709
        81E8EABA5E5C08647F6FD3ABF87B3F08E42F08A42F1302D1D575BDB810C8FEDE
        A657F1F77E10C85F10485F2604A2ABEB7A712190FDBD4DAFE2EFFD2090BF2090
        BE4C084457D7F5E24220FB7B9B5EC5DFFB41207F41207D991088AEAEEBC58540
        F6F736BD8ABFF7F34481B83E44BE61A1EBF9C617E7A62EB555EDB7CDB2325726
        F78D2FED2290E05AD79EAA7221105DBF0844D793EB39CDE44620CA6008C42217
        02D1F58B40743DB99ED34C6E04A20C86402C7221105DBF0844D793EB39CDE446
        20CA6008C4221702D1F58B40743DB99ED34C6E04A20C86402C7221105DBF0844
        D793EB39CDE44620CA6008C4221702D1F58B40743DB99ED34C6E04A20C66F84E
        C44EAE1BBF6150D5CFD433BC95CACB65EABD98AA9EDEF81D12C7AB1A817C8040
        74FD2090180844B73683EB1976BCAA11C8070844D70F02898140746B33B89E61
        C7AB1A817C804074FD2090180844B73683EB1976BCAA11C8070844D70F028981
        40746B33B89E61C7AB1A817C804074FD2090180844B73683EB1976BCAA11C807
        0844D70F02898140746B33B89E61C7AB1A817C804074FD2090180844B73683EB
        1976BCAA6D0552DAF403BFE991A1EAA0667F5A8E97DE14B75E9837BE7839F59D
        9A0C63D2432031108866DF1D10C87EE60C0824561781FCEA0781C440209A7D77
        4020FB99332090585D04F2AB1F0412038168F6DD0181EC67CE8040627511C8AF
        7E10480C04A2D9770704B29F39030289D54520BFFA412031108866DF1D10C87E
        E60C0824561781FCEA0781C440209A7D774020FB99332090585D04F2AB1F0412
        038168F6DD0181EC67CE8040627511C8AF7E6E1588E3435CD576FD5167709DA5
        E30B6C95BF4BD7DF4755BF99794C7E9CABAAEE1408448CE3E58340FAD69EEE3B
        B93702F1D9FBB4EE1408448CE3E58340FAD69EEE3BB93702F1D9FBB4EE140844
        8CE3E58340FAD69EEE3BB93702F1D9FBB4EE1408448CE3E58340FAD69EEE3BB9
        3702F1D9FBB4EE1408448CE3E58340FAD69EEE3BB93702F1D9FBB4EE1408448C
        E3E58340FAD69EEE3BB93702F1D9FBB4EE14A302A93A3037FE9F7F16C7FF2FBF
        F53039FE71F2C6776A5CDFA94220BFFA4520CFC0F1E2BAF5302110CDBED57B4F
        81407EF58B409E81E3C575EB6142209A7DABF79E0281FCEA17813C03C78BEBD6
        C3844034FB56EF3D0502F9D52F0279068E17D7AD87098168F6ADDE7B0A04F2AB
        5F04F20C1C2FAE5B0F1302D1EC5BBDF71408E457BF08E419385E5CB71E2604A2
        D9B77AEF2910C8AF7E11C83370BCB86E3D4C0844B36FF5DE5320905FFDBABE48
        C80FB3AFA7AA9F40F6193A5EE419265F24CC30F51CA62EEA4A5CBFBD730A0231
        0281ECAF4720B1BD3320101D08A42B180269EB0981F48040743D393EDFC99E10
        C8673004D2D61302E90181E87A727CBE933D2190CF6008A4AD2704D20302D1F5
        E4F87C277B42209FC110485B4F08A40704A2EBC9F1F94EF684403E832190B69E
        10480F0844D793E3F39DECE99502A9FA61BA7E1BE16DDFA198FC9F78C7673CF9
        B79AA30432992BEB4EE5BAF1FD3504125C5BD5EFAA3602D1F5844062B910484F
        2E04122D8E40B66B23105D4F0824960B81F4E44220D1E20864BB3602D1F58440
        62B910484F2E04122D8E40B66B23105D4F0824960B81F4E44220D1E20864BB36
        02D1F5844062B910484F2E04122D8E40B66B23105D4F0824960B81F4E44220D1
        E20864BB3602D1F5844062B910484F2E04A20C76E965EBF8F293EB219E7A59F4
        C63F4E262F97A7FD8151F982EBD43C5EF922E1D76008440602D1E54220311048
        CF3C10C8673004220381E87221901808A4671E08E433180291814074B910480C
        04D2330F04F2190C81C84020BA5C08240602E9990702F90C86406420105D2E04
        120381F4CC03817C0643203210882E17028981407AE681403E830D5D5CAEEF81
        64F7AEAA5BD9AFE3459EEDB98ACA4BAF325755E61BDFF5E13D1065300422DDBB
        AA6E65BF08641F04A2AB9BC985404C4020DABDABEA56F68B40F64120BABA995C
        08C40404A2DDBBAA6E65BF08641F04A2AB9BC985404C4020DABDABEA56F68B40
        F64120BABA995C08C40404A2DDBBAA6E65BF08641F04A2AB9BC985404C4020DA
        BDABEA56F68B40F64120BABA995C08C40404A2DDBBAA6E65BF08641F04A2AB9B
        C985404CB8F185BD2C8E3D4D5E4C8EF3A8EA67D5D3E44B9999BA55995C9FFF8D
        E24A6542203E38F684407AFA59F5844074752B41202620108F9E10484F3FAB9E
        1088AE6E2508C40404E2D11302E9E967D51302D1D5AD04819880403C7A42203D
        FDAC7A4220BABA952010131088474F08A4A79F554F084457B71204620202F1E8
        0981F4F4B3EA0981E8EA5682403A8B1BFE9FF7E4B70232DCF8DD85CCDE191C7F
        77D95C93B9277A9A7C0FC8F5F7330102096642207D7511880E04A29B85EBEF67
        020412CC8440FAEA22101D0844370BD7DFCF040824980981F4D545203A10886E
        16AEBF9F091048301302E9AB8B40742010DD2C5C7F3F132090602604D2571781
        E84020BA59B8FE7E264020C14C08A4AF2E02D1814074B370FDFD4C8040829910
        485F5D04A20381E866E1FAFB99C0F645C265F0A287E87AE96570FDCE80A36C57
        B95C5F14739D6515932F1A3BF6FCCA170953C111C8360824D62F02D9C7F5B7F3
        C4338E4094C111C8360824D62F02D9C7F5B7F3C4338E4094C111C8360824D62F
        02D9C7F5B7F3C4338E4094C111C8360824D62F02D9C7F5B7F3C4338E4094C111
        C8360824D62F02D9C7F5B7F3C4338E4094C111C8360824D62F02D9C7F5B7F3C4
        338E400203C950F99D81A9CBE78DDF4739ED37CBD433ACA42A77A5D81CDF03AA
        CC95C98D40842090D8DA1B4120311088265365AE4C6E04220481C4D6DE080289
        814034992A7365722310210824B6F64610480C04A2C954992B931B81084120B1
        B53782406220104DA6CA5C99DC0844080289ADBD1104120381683255E6CAE446
        204210486CED8D209018084493A93257263702118240626B6F0481C440209A4C
        95B932B95F299054F0A21FF58D07228BE30F7312D797544FEB56D69E3A2F957F
        50DDF8871E02890647203210C85F1088475D04B20F02890647203210C85F1088
        475D04B20F02890647203210C85F1088475D04B20F02890647203210C85F1088
        475D04B20F02890647203210C85F1088475D04B20F02890647203210C85F1088
        475D04B20F02890647203210C85F1088475D04B2CF2B0572E30B5BAEB9AA7A72
        FD513FF1034A95227FDA1F4D7C24CDA45F0412C33557554F8E97473657060412
        0381F4804084034120BA9E1C2F8F6CAE0C08240602E9018108078240743D395E
        1ED95C1910480C04D20302110E0481E87A72BC3CB2B93220901808A40704221C
        0802D1F5E4787964736540203110480F0844381004A2EBC9F1F2C8E6CA804062
        20901E5E2990AFC14C2FDB156FFBE17E63522053EF1064E6F1C4F7711CC535F9
        CD9FA9B55520103108E40704129B87E30591058178ACAD02818841203F2090D8
        3C1C2F882C08C4636D1508440C02F90181C4E6E178416441201E6BAB40206210
        C80F0824360FC70B220B02F1585B05021183407E4020B179385E10591088C7DA
        2A10881804F2030289CDC3F182C882403CD6568140C420901F10486C1E8E1744
        1604E2B1B68A470AC4F5C5A827F694C9E4FADD960CAEDFB098FA1E48159367E9
        C6176FAB4020E2BDDFD653261302E9595B390F04D297CB110422DEFB6D3D6532
        21909EB595F340207DB91C4120E2BDDFD653261302E9595B390F04D297CB1104
        22DEFB6D3D653221909EB595F340207DB91C4120E2BDDFD653261302E9595B39
        0F04D297CB110422DEFB6D3D653221909EB595F340207DB91CE17B208DB85E7A
        553D557EB3616A6FD76F9CB8E6AA62F2B7E3FA7ECA0408A41104129BC73710C8
        1DB9AA40201E20904610486C1EDF402077E4AA02817880401A4120B1797C0381
        DC91AB0A04E20102690481C4E6F10D047247AE2A10880708A41104129BC73710
        C81DB9AA40201E20904610486C1EDF402077E4AA02817880401A4120B1797C03
        81DC91AB0A04E281ED8B84CBE0A62F4639BEFCE67AB9DC28D41B5FE8AC64F2E5
        C8AACC2B1C73F13D906870D3CB1681E87221107F1088472E04120D6E7AD92210
        5D2E04E20F02F1C88540A2C14D2F5B04A2CB8540FC41201EB9104834B8E9658B
        4074B910883F08C4231702890637BD6C11882E1702F1078178E44220D1E0A697
        2D02D1E54220FE20108F5C08A4B3E9C24BDEF1BD08D7FF6BCFE0FA0E49A66E25
        8EC77CEAF7C1B7557420900F10480C04A2AB5B89E3314720B1BA8E20900F1048
        0C04A2AB5B89E3314720B1BA8E20900F10480C04A2AB5B89E3314720B1BA8E20
        900F10480C04A2AB5B89E3314720B1BA8E20900F10480C04A2AB5B89E3314720
        B1BA8E20900F10480C04A2AB5B89E3314720B1BA8E20900F10480C04A2AB5B89
        E3314720B1BA8ED80A64EAB03DF1A53BD703E17A81647ACAE02ADCAA9E6EFDE6
        8FE31F7ABC48F8190C8184722190FDDA08A40F04A29B070289044320A15C0864
        BF3602E90381E8E6814022C11048281702D9AF8D40FA4020BA79209048300412
        CA8540F66B23903E10886E1E0824120C8184722190FDDA08A40F04A29B070289
        044320A15C0864BF3602E90381E8E681409A0632F98D0AC7DC95EFAE6466E1F8
        BD8F4A5C2F08D7E730F58E5155E66C6EC7BFF51148B02E02D164CAEE7D230824
        060289ED3D010209D645209A4CD9BD6F0481C44020B1BD274020C1BA08449329
        BBF78D2090180824B6F7040824581781683265F7BE1104120381C4F69E008104
        EB22104DA6ECDE378240622090D8DE132090605D04A2C994DDFB4610480C0412
        DB7B020412AC8B403499B27BDF0802898140627B4F60FB22E11399BAC89FC813
        2FE3A96F58F0BD9818537FF83A5ED508A41104A20381F4CD0381ECE746205006
        02D18140FAE68140F6732310280381E840207DF34020FBB91108948140742090
        BE792090FDDC0804CA40203A1048DF3C10C87E6E04026520101D08A46F1E0864
        3F3702E92CFEC04BB16A9C377E4BA4F29D9AB7CDC3F59D1A647CC7DA2A108818
        04A259BB5AFFB67920105D2E04A203818841209AB5ABF56F9B0702D1E542203A
        10881804A259BB5AFFB67920105D2E04A203818841209AB5ABF56F9B0702D1E5
        42203A10881804A259BB5AFFB67920105D2E04A203818841209AB5ABF56F9B07
        02D1E542203A10881804A259BB5AFFB67920105D2E04A2C356208E2FCDAC32AF
        724FBD38F544516770BDF4A67A76CD5CD56F96A77DD323030211665EE546201E
        B85E2E533DBB66AEEA370B02F901810833AF7223100F5C2F97A99E5D3357F59B
        0581FC8040849957B9118807AE97CB54CFAE99ABFACD82407E4020C2CCABDC08
        C403D7CB65AA67D7CC55FD6641203F201061E6556E04E281EBE532D5B36BE6AA
        7EB320901F108830F32A3702F1C0F57299EAD9357355BF5910C80F0844987995
        1B8178E07AB94CF5EC9AB9AADF2C08E4876B0552F5A3AF7CF96D6A1E951FB9A9
        E469979EEBC7862AFF28727CB1B692A98F734D8140C47511880E04B2DF2F02F1
        0081741647202DF340201E20101DAECF1F81741647202DF340201E20101DAECF
        1F81741647202DF340201E20101DAECF1F81741647202DF340201E20101DAECF
        1F81741647202DF340201E20101DAECF1F8174167F99409EF8FD8B295C0FA26B
        AEA9CC53F398FA4E4D265706BE07121C0802E9E909813C23D7546604A29B4755
        A60C08445C1781F4E07A51BBE69ACA8C4074F3A8CA94018188EB22901E5C2F6A
        D75C539911886E1E5599322010715D04D283EB45ED9A6B2A3302D1CDA32A5306
        0422AE8B407A70BDA85D734D654620BA795465CA8040C47511480FAE17B56BAE
        A9CC0844378FAA4C191088B82E02E9C1F5A276CD35951981E8E6519529030211
        D7757C71CAF590DFC8D40B6C482F96D9F192AFCC8540820341207D3D4DF4EB0A
        02E9CB95C98C407A4020E2BA08E4D92090BE5C99CC08A4070422AE8B409E0D02
        E9CB95C98C407A4020E2BA08E4D92090BE5C99CC08A4070422AE8B409E0D02E9
        CB95C98C407A4020E2BA08E4D92090BE5C99CC08A4876B05E298399BFBC6799C
        F653DD53D5A5E8FA1ED08DDF8B79E21F89AEF2A9028108336773DF388FD37EAA
        7B4220FBEB1148AC2E02F9D52F02D165CEE6BE711EA7FD54F78440F6D7239058
        5D04F2AB5F04A2CB9CCD7DE33C4EFBA9EE0981ECAF4720B1BA08E457BF084497
        399BFBC6799CF653DD1302D95F8F40627511C8AF7E11882E7336F78DF338EDA7
        BA2704B2BF1E81C4EA22905FFD22105DE66CEE1BE771DA4F754F08647F3D0289
        D54520BFFA4520BACCD9DC37CEE3B49FEA9E10C8FE7A0412AB8B407EF5EB2A90
        5B71BD40BE31F542A7EBA537F55D964CE6A9DA6F7B86D9BD1D25900181884120
        FBBCEDF241207DF340203D20103108649FB75D3E08A46F1E08A40704220681EC
        F3B6CB0781F4CD0381F48040C420907DDE76F92090BE7920901E10881804B2CF
        DB2E1F04D2370F04D20302118340F679DBE58340FAE681407A1815080000DC0B
        0201008023100800001C81400000E0080402000047201000003802810000C011
        080400008E4020000070040201008023100800001C81400000E0080402000047
        201000003802810000C011080400008E4020000070040201008023100800001C
        81400000E0080402000047201000003802810000C011080400008E4020000070
        040201008023100800001C81400000E00804020000472010000038E27F6F6AEE
        5DE83C19820000000049454E44AE426082}
      Proportional = True
      ExplicitLeft = 176
      ExplicitTop = 184
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Label8: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 394
      Height = 38
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Componente PIX - By  Roniery Santos Cardoso  Contatos:  09298439' +
        '1279 - ronierys2@hotmail.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 371
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 145
    Width = 649
    Height = 471
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object gbConfigImpressora: TGroupBox
      Left = 0
      Top = 354
      Width = 649
      Height = 115
      Align = alTop
      Caption = 'Impressora'
      TabOrder = 0
      object Label25: TLabel
        Left = 176
        Top = 64
        Width = 66
        Height = 13
        Caption = 'Linhas '#224' pular'
        Color = clBtnFace
        ParentColor = False
      end
      object Label26: TLabel
        Left = 9
        Top = 64
        Width = 98
        Height = 13
        Caption = 'Espa'#231'os entre linhas'
        Color = clBtnFace
        ParentColor = False
      end
      object Label27: TLabel
        Left = 376
        Top = 64
        Width = 38
        Height = 13
        Caption = 'Colunas'
        Color = clBtnFace
        ParentColor = False
      end
      object Label28: TLabel
        Left = 9
        Top = 15
        Width = 34
        Height = 13
        Caption = 'Modelo'
        Transparent = False
      end
      object Label7: TLabel
        Left = 176
        Top = 15
        Width = 26
        Height = 13
        Caption = 'Porta'
        Color = clBtnFace
        ParentColor = False
      end
      object Label29: TLabel
        Left = 376
        Top = 15
        Width = 71
        Height = 13
        Caption = 'P'#225'g. de c'#243'digo'
        Transparent = False
      end
      object btSerial: TSpeedButton
        Left = 280
        Top = 56
        Width = 25
        Height = 23
        OnClick = btSerialClick
      end
      object btProcuraImpressoras: TSpeedButton
        Left = 312
        Top = 56
        Width = 25
        Height = 23
        OnClick = btProcuraImpressorasClick
      end
      object seLinhasPular: TSpinEdit
        Left = 176
        Top = 81
        Width = 75
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object seEspLinhas: TSpinEdit
        Left = 9
        Top = 81
        Width = 75
        Height = 22
        MaxValue = 255
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
      object seColunas: TSpinEdit
        Left = 376
        Top = 81
        Width = 75
        Height = 22
        MaxValue = 999
        MinValue = 1
        TabOrder = 5
        Value = 48
      end
      object cbxModeloPosPrinter: TComboBox
        Left = 9
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 0
      end
      object cbxPorta: TComboBox
        Left = 176
        Top = 32
        Width = 161
        Height = 21
        TabOrder = 1
      end
      object cbxPagCodigo: TComboBox
        Left = 376
        Top = 32
        Width = 76
        Height = 21
        Hint = 'Pagina de c'#243'digo usada pela Impressora POS'
        Style = csDropDownList
        TabOrder = 2
      end
      object btTestarPosPrinter: TBitBtn
        Left = 478
        Top = 32
        Width = 130
        Height = 21
        Caption = 'Testar Impressora'
        Layout = blGlyphTop
        TabOrder = 6
        OnClick = btTestarPosPrinterClick
      end
      object BitBtn1: TBitBtn
        Left = 478
        Top = 59
        Width = 130
        Height = 21
        Caption = 'Salvar Configura'#231#245'es'
        Layout = blGlyphTop
        TabOrder = 7
        OnClick = BitBtn1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 649
      Height = 224
      Align = alTop
      Caption = 'Configura'#231#245'es de Seguran'#231'a Pix'
      TabOrder = 1
      object Label2: TLabel
        Left = 309
        Top = 161
        Width = 87
        Height = 16
        Caption = 'Tipo Chave PIX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtCertificado: TLabeledEdit
        Left = 17
        Top = 127
        Width = 265
        Height = 21
        EditLabel.Width = 100
        EditLabel.Height = 13
        EditLabel.Caption = 'Caminho Certificado:'
        TabOrder = 0
      end
      object edtSenhaCertificado: TLabeledEdit
        Left = 309
        Top = 127
        Width = 320
        Height = 21
        EditLabel.Width = 89
        EditLabel.Height = 13
        EditLabel.Caption = 'Senha Certificado:'
        TabOrder = 1
      end
      object edtClientID: TLabeledEdit
        Left = 15
        Top = 79
        Width = 265
        Height = 21
        EditLabel.Width = 41
        EditLabel.Height = 13
        EditLabel.Caption = 'Client ID'
        TabOrder = 2
      end
      object edtClientSecreat: TLabeledEdit
        Left = 309
        Top = 79
        Width = 320
        Height = 21
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Client Secret'
        TabOrder = 3
      end
      object edtDeveloperKey: TLabeledEdit
        Left = 15
        Top = 39
        Width = 265
        Height = 21
        EditLabel.Width = 125
        EditLabel.Height = 13
        EditLabel.Caption = 'Developer Application Key'
        TabOrder = 4
      end
      object edtChavePix: TLabeledEdit
        Left = 472
        Top = 179
        Width = 157
        Height = 21
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave Pix'
        TabOrder = 5
        Text = '011.108.262-57'
      end
      object CbbTipoChavePix: TComboBox
        Left = 309
        Top = 179
        Width = 145
        Height = 21
        TabOrder = 6
      end
      object edtNomeRecebedore: TLabeledEdit
        Left = 17
        Top = 179
        Width = 265
        Height = 21
        EditLabel.Width = 111
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome Titular da Conta:'
        TabOrder = 7
      end
      object btnDoar: TButton
        AlignWithMargins = True
        Left = 397
        Top = 23
        Width = 232
        Height = 37
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Caption = 'Contribuir'
        TabOrder = 8
        OnClick = btnDoarClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 224
      Width = 649
      Height = 130
      Align = alTop
      TabOrder = 2
      object grbxPSP: TGroupBox
        Left = 1
        Top = 1
        Width = 184
        Height = 128
        Align = alLeft
        Caption = 'Configura'#231#245'es PSP'
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 22
          Width = 22
          Height = 16
          Caption = 'PSP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 71
          Width = 83
          Height = 16
          Caption = 'Tipo Ambiente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object CbbPSP: TComboBox
          Left = 16
          Top = 44
          Width = 160
          Height = 21
          TabOrder = 0
        end
        object CbbTipoAmbiente: TComboBox
          Left = 16
          Top = 93
          Width = 160
          Height = 21
          TabOrder = 1
        end
      end
      object grbxPix: TGroupBox
        Left = 185
        Top = 1
        Width = 463
        Height = 128
        Align = alClient
        Caption = 'Configura'#231#245'es PIX'
        TabOrder = 1
        object edtCidadeRecebedor: TLabeledEdit
          Left = 115
          Top = 40
          Width = 89
          Height = 21
          EditLabel.Width = 56
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade Loja'
          TabOrder = 0
          Text = 'Manaus'
        end
        object edtMsgPix: TLabeledEdit
          Left = 219
          Top = 40
          Width = 225
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Mensagem'
          TabOrder = 1
          Text = 'Deus '#233' amor'
        end
        object edtValorPix: TLabeledEdit
          Left = 15
          Top = 40
          Width = 82
          Height = 21
          EditLabel.Width = 40
          EditLabel.Height = 13
          EditLabel.Caption = 'R$ Valor'
          TabOrder = 2
          Text = '1'
        end
        object edtTXID: TLabeledEdit
          Left = 15
          Top = 87
          Width = 80
          Height = 21
          EditLabel.Width = 23
          EditLabel.Height = 13
          EditLabel.Caption = 'TXID'
          TabOrder = 3
        end
        object edtPayload: TLabeledEdit
          Left = 301
          Top = 87
          Width = 143
          Height = 21
          EditLabel.Width = 100
          EditLabel.Height = 13
          EditLabel.Caption = 'Copiar Colar Payload'
          TabOrder = 4
        end
        object edtEndToEndId: TLabeledEdit
          Left = 106
          Top = 87
          Width = 89
          Height = 21
          EditLabel.Width = 58
          EditLabel.Height = 13
          EditLabel.Caption = 'endToEndId'
          TabOrder = 5
        end
        object edtTxIdDev: TLabeledEdit
          Left = 203
          Top = 87
          Width = 89
          Height = 21
          EditLabel.Width = 57
          EditLabel.Height = 13
          EditLabel.Caption = 'edtTxIdDev'
          TabOrder = 6
        end
      end
    end
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 520
    Top = 312
  end
end
