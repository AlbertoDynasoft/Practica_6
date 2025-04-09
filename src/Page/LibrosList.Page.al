page 50102 "AMM Libros List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros";
    Editable = false;
    CardPageId = "AMM Libros Card";
    
    layout
    {
        area(Content)
        {
            repeater(Libros)
            {
                field(IdLibro;Rec.IdLibro)
                {
                    
                }
                field(Titulo;Rec.Titulo)
                {
                    
                }
                field(Descripcion;Rec.Descripcion)
                {
                    
                }
                field(Autor;Rec.Autor)
                {
                    
                }
                field(Editorial;Rec.Editorial)
                {
                    
                }
                field(Genero;Rec.Genero)
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
    
    var
        myInt: Integer;
}