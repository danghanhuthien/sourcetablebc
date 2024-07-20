table 50101 SanPham
{
    Caption = 'SanPham';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; idsp; Integer)
        {
            Caption = 'idsp';
            AutoIncrement = true;
        }
        field(2; tensp; Text[50])
        {
            Caption = 'tensp';
        }
        field(3; dongia; Integer)
        {
            Caption = 'dongia';
        }
    }
    keys
    {
        key(PK; idsp)
        {
            Clustered = true;
        }
    }
}
