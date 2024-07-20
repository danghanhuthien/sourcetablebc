pageextension 50102 addfiedvaopage extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field(addfiedvao; Rec.iddv)
            {
                ApplicationArea = All;
                Caption = 'Thêm id';
                ToolTip = 'Specifies the value of the iddv field.', Comment = '%';
            }
        }
    }
}
