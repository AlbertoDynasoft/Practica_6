page 50103 "AMM Libros Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros";
    /* Editable = true; */
    

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                Caption = 'Lista de Libros';
                field(IdLibro;Rec.IdLibro)
				{
					ApplicationArea = All;
					Editable = false;
				}
                field(Titulo;Rec.Titulo)
                {
                    AccessByPermission = tabledata "AMM Libros" = R;
                }
                field(Descripcion;Rec.Descripcion)
                {
                    AccessByPermission = tabledata "AMM Libros" = R;
                }
                field(Autor;Rec.Autor)
                {
                    
                }
                field(Editorial;Rec.Editorial)
                {
                    
                }
                field(Genero;Rec.Genero)
                {
                    AccessByPermission = tabledata "AMM Libros" = R;
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