page 50136 "AMM Libros Asignados List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros Asignados";
    layout
    {
        area(Content)
        {
            repeater("Datos Libros Asignados List")
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
            part("Apartado Movs Libreria"; "AMM Movs Libreria SubPage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = CodigoLibreria = field("CodigoLibreria");
                SubPageView = sorting("FechaHora") order(ascending);
            }
        }
    }
    trigger OnDeleteRecord() : Boolean
    begin
        message('No se permite borrar registros en esta tabla');
        exit(false);
    end;
}