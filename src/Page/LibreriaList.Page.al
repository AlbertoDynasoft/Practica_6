page 50106 "AMM Libreria List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Librerias";
    CardPageId = "AMM Libreria Card";
    layout
    {
        area(Content)
        {
            repeater("Datos Librerias List")
            {
                field(CodigoLibreria;Rec.CodigoLibreria)
                {
                    
                }
                field(NumLibros;ObtenerNumeroLibros())
                {
                    
                }
                field(Test;Rec.Test)
                {
                    
                }
            }
        }
    }
    local procedure ObtenerNumeroLibros() : Integer
    var
        Libros: Record "AMM Libros";
        Contador: Integer;
    begin
        Contador := 0;
        if Libros.FindFirst() then
            repeat
                Contador := Contador + 1;
            until Libros.next <= 0;
        exit(Contador);
    end;
}