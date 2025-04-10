page 50102 "AMM Libros List"
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
}