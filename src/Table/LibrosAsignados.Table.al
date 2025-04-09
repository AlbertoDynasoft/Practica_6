table 50106 "AMM Libros Asignados"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; IdLibreria; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Librerias".IdLibreria;
        }
        field(2; IdLibro; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Libros".IdLibro;
        }
        field(3; Cantidad; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Libros: Record "AMM Libros";
                Librerias: Record "AMM Librerias";
            begin
                Libros.SetRange(IdLibro, Rec.IdLibro);
                Librerias.SetRange(IdLibreria, Rec.IdLibreria);

                if Rec.Cantidad <> xRec.Cantidad then begin
                    if Libros.FindSet() and Librerias.FindSet() then begin
                        if Confirm('¿Seguro que desea modificar la cantidad del libro "%1" en la librería "%2"?', false, Libros.Titulo, Librerias.Codigo) then
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
        field(5; Test; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; IdLibreria, IdLibro, Estante)
        {
            Clustered = true;
        }
    }
    
    /* fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end; */
    
}