pageextension 50101 "CSD ResourceLixtExt" extends "Resource List"

{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }

        addafter(Type)
        {
            field("CSD Resource Type"; Rec."CSD Resource Type")
            {

            }

            field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    trigger OnOpenPage();

    begin

        Showtype := (rec.Getfilter(rec.Type) = '');

        ShowMaxField := (rec.Getfilter(rec.Type)) = format(rec.Type::machine);

    end;



    var
        [InDataSet]

        ShowMaxField: Boolean;

        [InDataSet]

        Showtype: Boolean;

}