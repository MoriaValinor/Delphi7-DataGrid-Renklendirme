object Form1: TForm1
  Left = 416
  Top = 131
  Width = 909
  Height = 487
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 901
    Height = 297
    Align = alTop
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ADI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMLEKET'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CINSIYET'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'GEL'#304'R'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'G'#304'DER'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 328
    Width = 377
    Height = 28
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 20
    ParentFont = False
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 8
    Top = 368
    Width = 377
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 20
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 400
    Top = 328
    Width = 337
    Height = 73
    Caption = 'S'#304'STEMDEN ARA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 312
    Top = 48
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\bilgiler.accdb;P' +
      'ersist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 352
    Top = 48
    object ADOTable1ADI: TWideStringField
      FieldName = 'ADI'
      Size = 30
    end
    object ADOTable1SOYADI: TWideStringField
      FieldName = 'SOYADI'
      Size = 30
    end
    object ADOTable1MEMLEKET: TWideStringField
      FieldName = 'MEMLEKET'
      Size = 30
    end
    object ADOTable1CINSIYET: TWideStringField
      FieldName = 'CINSIYET'
      Size = 30
    end
    object ADOTable1GELR: TIntegerField
      FieldName = 'GEL'#304'R'
      DisplayFormat = '##,#,TL'
    end
    object ADOTable1GDER: TIntegerField
      FieldName = 'G'#304'DER'
      DisplayFormat = '##,#,TL'
    end
  end
end
