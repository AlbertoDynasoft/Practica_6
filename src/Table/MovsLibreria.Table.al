table 50133 "AMM Movs Libreria"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; IdMovsLibreria; Integer)
        {
            DataClassification = ToBeClassified; 
            AutoIncrement = true;
        }
        field(2; CodigoLibro; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Libros".CodigoLibro;
        }
        field(3; CodigoLibreria; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Librerias".CodigoLibreria;
        }
        field(4; Cantidad; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Estante; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; IdUsuario; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(7; FechaHora; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; IdMovsLibreria, CodigoLibro, CodigoLibreria, Estante)
        {
            Clustered = true;
        }
        key(PK1; FechaHora)
        {
            
        }
    }
}