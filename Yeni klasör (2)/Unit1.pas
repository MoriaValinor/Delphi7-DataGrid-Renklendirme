unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1MEMLEKET: TWideStringField;
    ADOTable1CINSIYET: TWideStringField;
    ADOTable1GELR: TIntegerField;
    ADOTable1GDER: TIntegerField;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Add('ÝSME GÖRE ARA');
ComboBox1.Items.Add('SOYÝSME GÖRE ARA');
ComboBox1.Items.Add('MEMLEKETE GÖRE ARA');

end;

procedure TForm1.Button1Click(Sender: TObject);
VAR
degisken:integer;
begin
degisken:=ComboBox1.ItemIndex;
if(degisken=-1)then BEGIN
ShowMessage('LÜTFEN NEYE GÖRE ARAMA YAPACAÐINIZI SEÇÝNÝZ...');
Exit;
END;

if(degisken=0)then begin
if(Trim(Edit1.Text)<>'')then BEGIN
ADOTable1.Filter:='ADI LIKE '+QuotedStr('%'+Trim(Edit1.Text)+'%');
ADOTable1.Filtered:=TRUE
END ELSE
ADOTable1.Filtered:=FALSE

END;

if(degisken=1)then begin
if(Trim(Edit1.Text)<>'')then BEGIN
ADOTable1.Filter:='SOYADI LIKE '+QuotedStr('%'+Trim(Edit1.Text)+'%');
ADOTable1.Filtered:=TRUE
END ELSE
ADOTable1.Filtered:=FALSE;
end;

if(degisken=2)then begin
if(Trim(Edit1.Text)<>'')then BEGIN
ADOTable1.Filter:='MEMLEKET LIKE '+QuotedStr('%'+Trim(Edit1.Text)+'%');
ADOTable1.Filtered:=TRUE
END ELSE
ADOTable1.Filtered:=FALSE;
END;


END;
procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{
if(ADOTable1.RecNo mod 2=1)then begin
DBGrid1.Canvas.Brush.Color :=clgreen
end else
DBGrid1.Canvas.Brush.Color:=clskyblue;
}
{
if(ADOTable1.FieldByName('CINSIYET').AsVariant)='BAYAN'then begin
DBGrid1.Canvas.Brush.Color :=clgreen
END ELSE
DBGrid1.Canvas.Brush.Color :=clYELLOW;
}
if(ADOTable1.FieldByName('GELÝR').AsCurrency <3550)THEN
DBGrid1.Canvas.Brush.Color :=clYELLOW
ELSE
IF  (ADOTable1.FieldByName('GELÝR').AsCurrency > 3550)AND
 (ADOTable1.FieldByName('GELÝR').AsCurrency <= 4550) then begin
DBGrid1.Canvas.Brush.Color :=CLGRAY
end else
DBGrid1.Canvas.Brush.Color :=CLLIME;
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


end.
