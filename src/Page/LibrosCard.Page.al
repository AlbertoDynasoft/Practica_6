page 50131 "AMM Libros Card"
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
                    ToolTip = 'Especifica el código del libro';
				}
                field(Titulo;Rec.Titulo)
                {
                    ToolTip = 'Especifica el titulo del libro';
                }
                field(Descripcion;Rec.Descripcion)
                {
                    ToolTip = 'Especifica la descripción del libro';
                }
                field(Autor;Rec.Autor)
                {
                    ToolTip = 'Especifica el autor del libro';
                }
                field(Editorial;Rec.Editorial)
                {
                    ToolTip = 'Especifica la editorial del libro';
                }
                field(Genero;Rec.Genero)
                {
                    ToolTip = 'Especifica el género del libro';
                }
            }
        }
    }
}