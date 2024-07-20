page 50110 PageKH
{
    ApplicationArea = All;
    Caption = 'PageKH';
    PageType = List;
    SourceTable = KhachHang;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(idkh; Rec.idkh)
                {
                    ToolTip = 'Specifies the value of the idkh field.', Comment = '%';
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        PageDetailsKH: Page "PageDetailsKH";
                    begin
                        PageDetailsKH.SetRecord(Rec);
                        PageDetailsKH.Run();
                    end;
                }
                field(tenkh; Rec.tenkh)
                {
                    ToolTip = 'Specifies the value of the tenkh field.', Comment = '%';
                }
                field(sdt; Rec.sdt)
                {
                    ToolTip = 'Specifies the value of the sdt field.', Comment = '%';
                }
                field(diachi; Rec.diachi)
                {
                    ToolTip = 'Specifies the value of the diachi field.', Comment = '%';
                }
            }
            group("Sản phẩm đã mua")
            {
                part(ProductList; PageAddovuongtt)
                {
                    Caption = 'Số đơn hàng';
                    ApplicationArea = All;
                    SubPageLink = "CustomerID"=FIELD(idkh);
                }
            }
        }
    }
}
