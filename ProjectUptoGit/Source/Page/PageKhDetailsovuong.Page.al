page 50109 PageKhDetailsovuong
{
    ApplicationArea = All;
    Caption = 'Chi tiết sản phẩm';
    PageType = CardPart;
    SourceTable = "Order";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field(ProductID; Rec.ProductID)
                {
                    ApplicationArea = All;
                    Caption = 'Mã Sản Phẩm';
                }
                field(ProductName; Rec.ProductName)
                {
                    ApplicationArea = All;
                    Caption = 'Tên Sản Phẩm';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    Caption = 'Số Lượng';
                }
            }
            CueGroup("Chi tiết mua hàng của khách hàng")
            {
                field("Total Orders"; TotalOrders)
                {
                    ApplicationArea = All;
                    ToolTip = 'Total number of orders.';
                }
                field("Pending Orders"; PendingOrders)
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of pending orders.';
                }
                field("Completed Orders"; CompletedOrders)
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of completed orders.';
                }
            }
        }
    }
    var TotalOrders: Integer;
    PendingOrders: Integer;
    CompletedOrders: Integer;
    trigger OnOpenPage()
    begin
        // Initialize the data
        TotalOrders:=GetTotalOrders();
    end;
    local procedure GetTotalOrders(): Integer begin
        // Add logic to get total orders count
        exit(Rec.Count);
    end;
}
