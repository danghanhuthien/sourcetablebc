table 50110 KhachHang
{
    Caption = 'KhachHang';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idkh; Integer)
        {
            Caption = 'idkh';
            AutoIncrement = true;
        }
        field(2; tenkh; Text[50])
        {
            Caption = 'tenkh';
        }
        field(3; sdt; Text[10])
        {
            Caption = 'sdt';
        }
        field(4; diachi; Text[200])
        {
            Caption = 'diachi';
        }
    }
    keys
    {
        key(PK; idkh)
        {
            Clustered = true;
        }
    }
}
