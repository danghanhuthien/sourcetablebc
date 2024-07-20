page 50105 PageDetailsKH
{
    ApplicationArea = All;
    Caption = 'PageDetailsKH';
    PageType = Card;
    SourceTable = KhachHang;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(idkh; Rec.idkh)
                {
                    ToolTip = 'Specifies the value of the idkh field.', Comment = '%';
                }
                field(tenkh; Rec.tenkh)
                {
                    ToolTip = 'Specifies the value of the tenkh field.', Comment = '%';
                }
                field(diachi; Rec.diachi)
                {
                    ToolTip = 'Specifies the value of the diachi field.', Comment = '%';
                }
                field(sdt; Rec.sdt)
                {
                    ToolTip = 'Specifies the value of the sdt field.', Comment = '%';
                }
            }
            group("Sản phẩm đã mua")
            {
                Caption = 'Sản phẩm đã mua';

                part(ProductList; PageKHDetailSubPage)
                {
                    ApplicationArea = All;
                    SubPageLink = "CustomerID"=FIELD(idkh);
                }
            }
        }
    }
}
