pageextension 50100 AddPageSP extends PageSP
{
    layout
    {
        addlast(Content)
        {
            field(slt; Rec.slt)
            {
                ApplicationArea = All;
                Caption = 'Số lượng tồn';
                ToolTip = 'Specifies the value of the slt field.', Comment = '%';
            }
        }
    }
}
