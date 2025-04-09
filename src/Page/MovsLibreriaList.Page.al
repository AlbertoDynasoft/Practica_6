page 50104 "AMM Movs Libreria List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Movs Libreria";
    /* Editable = false; */
    layout
    {
        area(Content)
        {
            repeater("Movs Libreria")
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
                    AccessByPermission = tabledata "AMM Movs Libreria" = RIMD;
                }
                field(IdUsuario;Rec.IdUsuario)
                {
                    
                }
            }
            part(PartName; "AMM Movs Libreria SubPage")
            {
                ApplicationArea = Basic, Suite;
                /* SubPageLink = "IdLibro" = field("IdLibro"); */
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
    trigger OnInit()
    var
        myInt: Integer;
    begin
        
    end;
    /*
    var
        myInt: Integer; */
}