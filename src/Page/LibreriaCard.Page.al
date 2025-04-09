page 50107 "AMM Libreria Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Librerias";
    Editable = false;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'Lista de Librerias';
                field(IdLibreria;Rec.IdLibreria)
                {
                    Editable = false;
                }
                field(Codigo;Rec.Codigo)
				{
					ApplicationArea = All;
					Editable = true;
                    /* AccessByPermission = tabledata "AMM Librerias" = R; */ 
				}
            }
            part("Apartado Libros Asignados"; "AMM Libros Asignados SubPage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = IdLibreria = field("IdLibreria");
            }
            part("Apartado Movs Libreria"; "AMM Movs Libreria SubPage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = IdLibreria = field("IdLibreria");
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("Borrar Registros Movs")
            {
                
                trigger OnAction()
                var
                    Boton: Codeunit "AMM Borrar Registros Movs";
                begin
                    Message('%1',Rec);
                    Boton.Run()
                end;
            }
            
        }
    }
    
    var
        myInt: Integer;
}