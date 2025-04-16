page 50134 "AMM Libreria List"
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
                    ToolTip = 'Especifica el código de la libreria';
                }
                field(NumLibros;this.ObtenerNumeroLibros())
                {
                    Caption = 'Número de Libros';
                    ToolTip = 'Especifica el número de libros totales';
                }
                field(Test;Rec.Test)
                {
                    ToolTip = 'Especifica el test';
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
        if Libros.FindSet() then
            repeat
                Contador := Contador + 1;
            until Libros.next() <= 0;
        exit(Contador);
    end;
}