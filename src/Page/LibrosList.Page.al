page 50130 "AMM Libros List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros";
    CardPageId = "AMM Libros Card";
    layout
    {
        area(Content)
        {
            repeater(Libros)
            {
                field(CodigoLibro;Rec.CodigoLibro)
                {
                    ToolTip = 'Especifica el código del libro';
                }
                field(Titulo;Rec.Titulo)
                {
                    ToolTip = 'Especifica el titulo del libro';
                }
                field(Descripcion;Rec.Descripcion)
                {
                    ToolTip = 'Especificala descripción del libro';
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