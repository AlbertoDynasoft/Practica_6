table 50134 "AMM Test Cambiado"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; IdTestt; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Texto; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; IdTestt)
        {
            Clustered = true;
        }
    }
}