page 50105 "AMM Movs Libreria SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Movs Libreria";
    Editable = false;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(IdMovsLibreria;Rec.IdMovsLibreria)
                {
                    
                }
                field(IdLibro;Rec.IdLibro)
                {
                    
                }
                field(IdLibreria;Rec.IdLibreria)
                {
                    
                }
                field(Cantidad;Rec.Cantidad)
                {
                    
                }
                field(Estante;Rec.Estante)
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