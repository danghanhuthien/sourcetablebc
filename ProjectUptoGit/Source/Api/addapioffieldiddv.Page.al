page 50111 addapioffieldiddv
{
    APIGroup = 'apiaddfieddidv';
    APIPublisher = 'publisherName';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'addapioffieldiddv';
    DelayedInsert = true;
    EntityName = 'entityName';
    EntitySetName = 'entitySetName';
    PageType = API;
    SourceTable = "Sales Header";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(iddv; Rec.iddv)
                {
                    Caption = 'iddv';
                }
            }
        }
    }
}
