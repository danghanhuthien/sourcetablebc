table 50102 Order
{
    Caption = 'Order';
    DataClassification = ToBeClassified;
    TableType = Normal;

    fields
    {
        field(1; id; Integer)
        {
            Caption = 'Order ID';
            AutoIncrement = true;
        }
        field(2; OrderDate; Date)
        {
            Caption = 'Order Date';
        }
        field(3; CustomerID; Integer)
        {
            Caption = 'Customer ID';
            TableRelation = KhachHang.idkh;
        }
        field(4; ProductID; Integer)
        {
            Caption = 'Product ID';
            TableRelation = SanPham.idsp;
        }
        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
        }
        field(6; LineAmount; Decimal)
        {
            Caption = 'Line Amount';
            Editable = false;
        }
        field(7; CustomerName; Text[100])
        {
            Caption = 'Customer name';
            FieldClass = FlowField;
            CalcFormula = lookup(KhachHang.tenkh where(idkh=field(CustomerID)));
            Editable = false;
        }
        field(8; ProductName; Text[100])
        {
            caption = 'Product name';
            FieldClass = FlowField;
            CalcFormula = lookup(SanPham.tensp where(idsp=field(ProductID)));
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
