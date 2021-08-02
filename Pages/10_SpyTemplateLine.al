page 77510 SpyTemplateLine
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Config. Template Line";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Template; rec."Data Template Code")
                {
                    ApplicationArea = All;
                }
                field("Line No."; rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(Type; rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Field ID"; rec."Field ID")
                {
                    ApplicationArea = All;
                }
                field(FieldName; rec."Field Name")
                {
                    ApplicationArea = All;
                }
                field("Table ID"; rec."Table ID")
                {
                    ApplicationArea = All;
                }
                field("Table Name"; rec."Table Name")
                {
                    ApplicationArea = All;
                }
                field("Template Code"; rec."Template Code")
                {
                    ApplicationArea = All;
                }
                field("Template Description"; rec."Template Description")
                {
                    ApplicationArea = All;
                }
                field(DefaultValue; rec."Default Value")
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