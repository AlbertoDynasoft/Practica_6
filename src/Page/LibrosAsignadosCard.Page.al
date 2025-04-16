page 50137 "AMM Libros Asignados Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros Asignados";
    layout
    {
        area(Content)
        {
            group("Datos Libros Asignados")
            {
                Caption = 'Lista de Libros Asignados';
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