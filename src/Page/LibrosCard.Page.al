page 50103 "AMM Libros Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros";
    layout
    {
        area(Content)
        {
            group("Datos Libros Card")
            {
                Caption = 'Lista de Libros';
                field(CodigoLibro;Rec.CodigoLibro)
				{
					ApplicationArea = All;
				}
                field(Titulo;Rec.Titulo)
                {
                    /* AccessByPermission = tabledata "AMM Libros" = R; */
                }
                field(Descripcion;Rec.Descripcion)
                {
                    /* AccessByPermission = tabledata "AMM Libros" = R; */
                }
                field(Autor;Rec.Autor)
                {
                    
                }
                field(Editorial;Rec.Editorial)
                {
                    
                }
                field(Genero;Rec.Genero)
                {
                    /* AccessByPermission = tabledata "AMM Libros" = R; */
                }
            }
        }
    }
}