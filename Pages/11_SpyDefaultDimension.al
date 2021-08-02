page 77511 SpyDefaultDimension
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Default Dimension";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Table ID"; rec."Table ID")
                {
                    ApplicationArea = All;
                }
                field("No."; rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Dimension Code"; rec."Dimension Code")
                {
                    ApplicationArea = All;
                }
                field("Dimension Value Code"; rec."Dimension Value Code")
                {
                    ApplicationArea = All;
                }
                field("Value Posting"; rec."Value Posting")
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