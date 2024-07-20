page 50103 OrderCard
{
    ApplicationArea = All;
    Caption = 'Order Card';
    PageType = Card;
    SourceTable = "Order";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'Thông tin chung';

                field(id; Rec.id)
                {
                    ToolTip = 'Xác định giá trị của trường Order ID.', Comment = '%';
                }
                field(OrderDate; Rec.OrderDate)
                {
                    ToolTip = 'Xác định giá trị của trường Order Date.', Comment = '%';
                }
                field(CustomerID; Rec.CustomerID)
                {
                    ToolTip = 'Xác định giá trị của trường Customer ID.', Comment = '%';
                }
                field(CustomerName; CustomerName)
                {
                    Caption = 'Tên khách hàng';
                    Editable = false;
                }
                field(TotalAmount; TotalAmount)
                {
                    Caption = 'Tổng giá trị đơn hàng';
                    Editable = false;
                }
            }
            part(OrderDetail; OrderList)
            {
                SubPageLink = id=field(id);
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(CalculateTotal)
            {
                ApplicationArea = All;
                Caption = 'Tính tổng';
                Image = Calculate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    CalculateTotalAmount();
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        GetCustomerName();
        CalculateTotalAmount();
    end;
    var CustomerName: Text[100];
    TotalAmount: Decimal;
    local procedure GetCustomerName()
    var
        Customer: Record KhachHang;
    begin
        if Customer.Get(Rec.CustomerID)then CustomerName:=Customer.tenkh
        else
            CustomerName:='';
    end;
    local procedure CalculateTotalAmount()
    var
        Order: Record "Order";
        Product: Record "SanPham";
    begin
        TotalAmount:=0;
        Order.SetRange(id, Rec.id);
        if Order.FindSet()then repeat // Thiết lập điều kiện để tìm sản phẩm tương ứng với sản phẩm trong Order
                Product.SetRange(idsp, Order."ProductID");
                if Product.FindFirst()then TotalAmount+=Product.dongia * Order.Quantity;
            until Order.Next() = 0;
    end;
}
