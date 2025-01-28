tableextension 50100 "CSD ResourceExt" extends "Resource"

{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()

            begin

                Rec.TestField("Unit Cost");

            end;
        }

        modify(Type)

        {
            OptionCaption = 'Instructor,Room';

        }

        field(50101; "CSD Resource Type"; Option)
        {
            DataClassification = ToBeClassified;

            OptionMembers = "Internal","External";

            OptionCaption = 'Internal,External';


        }

        field(50102; "CSD Maximum Participants"; Blob)
        {
            DataClassification = ToBeClassified;

            Caption = 'Maximum Participant';

        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            DataClassification = ToBeClassified;

            Caption = 'Quantity Per Day';

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}