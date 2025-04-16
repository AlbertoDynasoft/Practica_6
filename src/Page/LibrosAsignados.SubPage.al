page 50138 "AMM Libros Asignados SubPage"
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
                    ToolTip = 'Especifica el código de la libreria relacionada';
                }
                field(CodigoLibro;Rec.CodigoLibro)
                {
                    ToolTip = 'Especifica el código del libro relacionado';
                }
                field(Cantidad;Rec.Cantidad)
                {
                    ToolTip = 'Especifica la cantidad del registro de libros asignados';
                }
                field(Estante;Rec.Estante)
                {
                    ToolTip = 'Especifica el estante del registro de libros asignados';
                }
            }
        }
    }
}