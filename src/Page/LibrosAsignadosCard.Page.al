page 50110 "AMM Libros Asignados Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros Asignados";
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'Lista de Libros Asignados';
                field(IdLibreria;Rec.IdLibreria)
                {
                    
                }
                field(IdLibro;Rec.IdLibro)
                {
                    
                }
                field(Cantidad;Rec.Cantidad)
                {
                    
                }
                field(Estante;Rec.Estante)
                {
                    
                }
                field(Test;Rec.Test)
                {
                    
                }
            }
        }
    }
    
    

    /* actions
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
    } */
    
    var
        myInt: Integer;
}