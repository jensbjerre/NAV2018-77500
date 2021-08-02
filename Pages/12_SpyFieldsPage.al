page 77512 SpyFieldsPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Field;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(TableNo; rec.TableNo)
                {
                    ApplicationArea = All;

                }
                field(TableName; rec.TableName)
                {
                    ApplicationArea = All;

                }
                field(FieldNo; rec."No.")
                {
                    ApplicationArea = All;

                }
                field(FieldName; rec.FieldName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}