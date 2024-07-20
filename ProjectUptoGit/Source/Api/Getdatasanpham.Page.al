page 50104 Getdatasanpham
{
    APIGroup = 'apiGroup';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'getdatasanpham';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    PageType = API;
    SourceTable = SanPham;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(idsp; Rec.idsp)
                {
                    Caption = 'idsp';
                }
                field(tensp; Rec.tensp)
                {
                    Caption = 'tensp';
                }
                field(dongia; Rec.dongia)
                {
                    Caption = 'dongia';
                }
            }
        }
    }
}
