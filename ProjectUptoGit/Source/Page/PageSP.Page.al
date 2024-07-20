page 50101 PageSP
{
    ApplicationArea = All;
    Caption = 'PageSP';
    PageType = List;
    SourceTable = SanPham;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(idsp; Rec.idsp)
                {
                    ToolTip = 'Specifies the value of the idsp field.', Comment = '%';
                }
                field(tensp; Rec.tensp)
                {
                    ToolTip = 'Specifies the value of the tensp field.', Comment = '%';
                }
                field(dongia; Rec.dongia)
                {
                    ToolTip = 'Specifies the value of the dongia field.', Comment = '%';
                }
            }
        }
    }
}
