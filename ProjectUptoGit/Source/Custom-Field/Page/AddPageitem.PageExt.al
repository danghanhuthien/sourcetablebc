pageextension 50101 AddPageitem extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field(addname; Rec.addname)
            {
                ApplicationArea = All;
                Caption = 'Thêm tên';
                ToolTip = 'Specifies the value of the slt field.', Comment = '%';
            }
        }
    }
}
