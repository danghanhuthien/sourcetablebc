page 50106 Additemapi
{
    APIGroup = 'apiGroup';
    APIPublisher = 'apiTest';
    APIVersion = 'v1.0';
    ApplicationArea = All;
    Caption = 'additemapi';
    DelayedInsert = true;
    EntityName = 'item';
    EntitySetName = 'items';
    PageType = API;
    SourceTable = Item;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(baseUnitOfMeasure; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit of Measure';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(blocked; Rec.Blocked)
                {
                    Caption = 'Blocked';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                }
                field(variantMandatoryIfExists; Rec."Variant Mandatory if Exists")
                {
                    Caption = 'Variant Mandatory if Exists';
                }
                field(addname; Rec.addname)
                {
                    Caption = 'addname';
                }
            }
        }
    }
}
