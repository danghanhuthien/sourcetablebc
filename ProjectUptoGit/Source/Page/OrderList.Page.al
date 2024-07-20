page 50102 OrderList
{
    ApplicationArea = All;
    Caption = 'OrderList';
    PageType = List;
    SourceTable = "Order";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the Order ID field.', Comment = '%';
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        OrderCard: Page "OrderCard";
                    begin
                        OrderCard.SetRecord(Rec);
                        OrderCard.Run();
                    end;
                }
                field(OrderDate; Rec.OrderDate)
                {
                    ToolTip = 'Specifies the value of the Order Date field.', Comment = '%';
                }
                field(CustomerID; Rec.CustomerID)
                {
                    ToolTip = 'Specifies the value of the Customer ID field.', Comment = '%';
                }
                field(CustomerName; Rec.CustomerName)
                {
                    ToolTip = 'Specifies the name of the Customer.', Comment = '%';
                }
                field(ProductID; Rec.ProductID)
                {
                    ToolTip = 'Specifies the value of the Product ID field.', Comment = '%';
                }
                field(ProductName; Rec.ProductName)
                {
                    ToolTip = 'Specifies the name of the Product.', Comment = '%';
                }
                field(Quantity; Rec.Quantity)
                {
                    ToolTip = 'Specifies the value of the Quantity field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action("View Details")
            {
                ApplicationArea = All;
                Caption = 'Chi tiết đặt hàng';
                Image = View;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    OrderCard: Page "OrderCard";
                begin
                    OrderCard.SetRecord(Rec);
                    OrderCard.Run();
                end;
            }
        }
    }
    var CustomerName: Text[50];
    ProductName: Text[100];
    trigger OnAfterGetRecord()
    var
        Customer: Record KhachHang;
        Product: Record SanPham;
    begin
        if Customer.Get(Rec.CustomerID)then CustomerName:=Customer.tenkh;
        if Product.Get(Rec.ProductID)then ProductName:=Product.tensp;
    end;
}
