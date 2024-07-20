page 50107 PageKHDetailSubPage
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
            group(OrderDetailsGroup)
            {
                Caption = 'Chi tiết đơn hàng';

                repeater(OrderDetails)
                {
                    field(id; Rec.id)
                    {
                        ApplicationArea = All;
                        Caption = 'Order ID';
                    }
                    field(OrderDate; Rec.OrderDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Order Date';
                    }
                    field(ProductName; Rec.ProductName)
                    {
                        ApplicationArea = All;
                        Caption = 'Product Name';
                    }
                    field(Quantity; Rec.Quantity)
                    {
                        ApplicationArea = All;
                        Caption = 'Quantity';
                    }
                }
            }
        }
    }
}
