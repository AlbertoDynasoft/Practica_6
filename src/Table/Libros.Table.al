table 50103 "AMM Libros"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; CodigoLibro; Code[20])
        {
            DataClassification = ToBeClassified;
            /* AutoIncrement = true; */
        }
        field(2; Titulo; Text[60])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Descripcion; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Autor; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Editorial; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Genero; Enum Generos)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; CodigoLibro)
        {
            Clustered = true;
        }
        key(PK2; Titulo, Autor, Editorial)
        {
            
        }
    }
}