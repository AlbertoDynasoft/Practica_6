page 50106 "AMM Libreria List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Librerias";
    Editable = false;
    CardPageId = "AMM Libreria Card";
    
    layout
    {
        area(Content)
        {
            repeater(Librerias)
            {
                field(IdLibreria;Rec.IdLibreria)
                {
                    
                }
                field(Codigo;Rec.Codigo)
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
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
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