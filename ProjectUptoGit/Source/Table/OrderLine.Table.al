table 50103 OrderLine
{
    Caption = 'Order Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; id; Integer)
        {
            Caption = 'Line ID';
            AutoIncrement = true;
        }
        field(2; OrderID; Integer)
        {
            Caption = 'Order ID';
            TableRelation = Order.id;
        }
        field(3; ProductID; Integer)
        {
            Caption = 'Product ID';
            TableRelation = SanPham.idsp;
        }
        field(4; Quantity; Integer)
        {
            Caption = 'Quantity';
        }
        field(5; LineAmount; Decimal)
        {
            Caption = 'Line Amount';
            Editable = false;
        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
}
