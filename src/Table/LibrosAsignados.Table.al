table 50106 "AMM Libros Asignados"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; CodigoLibreria; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Librerias".CodigoLibreria;
        }
        field(2; CodigoLibro; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Libros".CodigoLibro;
        }
        field(3; Cantidad; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Libros: Record "AMM Libros";
                Librerias: Record "AMM Librerias";
            begin
                Libros.SetRange(CodigoLibro, Rec.CodigoLibro);
                Librerias.SetRange(CodigoLibreria, Rec.CodigoLibreria);

                if Rec.Cantidad <> xRec.Cantidad then begin
                    if Libros.FindSet() and Librerias.FindSet() then begin
                        if Confirm('¿Seguro que desea modificar la cantidad del libro "%1" en la librería "%2"?', false, Libros.Titulo, Librerias.CodigoLibreria) then
                            Rec.Cantidad := Rec.Cantidad
                        else
                            Rec.Cantidad := xRec.Cantidad;
                    end;
                end;
            end;
        }
        field(4; Estante; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; CodigoLibreria, CodigoLibro)
        {
            Clustered = true;
        }
        key(PK2; Estante)
        {
            
        }
    }    
}