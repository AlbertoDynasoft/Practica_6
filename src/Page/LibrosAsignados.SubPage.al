page 50108 "AMM Libros Asignados SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros Asignados";
    layout
    {
        area(Content)
        {
            repeater("Datos Libros Asignados Subpage")
            {
                field(CodigoLibreria;Rec.CodigoLibreria)
                {
                    
                }
                field(CodigoLibro;Rec.CodigoLibro)
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
}