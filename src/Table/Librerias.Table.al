table 50131 "AMM Librerias"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; CodigoLibreria; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
        field(2; Test; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; CodigoLibreria)
        {
            Clustered = true;
        }
    }
}