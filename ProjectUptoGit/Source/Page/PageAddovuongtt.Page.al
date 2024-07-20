page 50108 PageAddovuongtt
{
    ApplicationArea = All;
    PageType = CardPart;
    SourceTable = "Order";

    layout
    {
        area(Content)
        {
            CueGroup("")
            {
                field("Số đơn hàng"; TotalOrders)
                {
                    StyleExpr = 'Ambiguous'; // Thiết lập màu xanh lá cây
                    ApplicationArea = All;
                    ToolTip = 'Số đơn đặt hàng.';
                    Style = Strong;
                }
            }
        }
    }
    var TotalOrders: Integer;
    CustomerID: Integer;
    trigger OnOpenPage()
    begin
        // Lấy CustomerID từ bản ghi hiện tại
        CustomerID:=Rec.CustomerID;
    end;
    local procedure GetTotalOrders(CustomerID: Integer): Integer var
        OrderRec: Record "Order";
    begin
        // Đếm tổng số đơn hàng của khách hàng này
        OrderRec.Reset();
        OrderRec.SetRange(CustomerID, CustomerID);
        exit(OrderRec.Count());
    end;
    trigger OnAfterGetRecord()
    var
        OrderRec: Record "Order";
    begin
        // Cập nhật TotalOrders và lọc các đơn hàng của khách hàng hiện tại
        // TotalOrders := GetTotalOrders(Rec.CustomerID);
        //Rec.SetRange(CustomerID, Rec.CustomerID);
        // Cập nhật TotalOrders
        TotalOrders:=GetTotalOrders(Rec.CustomerID);
    end;
}
