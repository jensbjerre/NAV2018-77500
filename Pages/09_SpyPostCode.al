page 77509 SpyPostCode
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Post Code";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                }
                field(City; rec.City)
                {
                    ApplicationArea = All;
                }
                field("Country/Region Code"; rec."Country/Region Code")
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