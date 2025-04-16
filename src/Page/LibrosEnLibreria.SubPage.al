page 50133 "AMM Movs Libreria SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Movs Libreria";
    layout
    {
        area(Content)
        {
            field(CodigoLibreria;Rec.CodigoLibreria)
            {
                ToolTip = 'Especifica el código de la libreria relacionada';
            }
            repeater("Datos Movs Libreria Subpage")
            {
                field(IdMovsLibreria;Rec.IdMovsLibreria)
                {
                    ToolTip = 'Especifica el id de movs libreria';
                }
                field(CodigoLibro;Rec.CodigoLibro)
                {
                    ToolTip = 'Especifica el código del libro relacionado';
                }
                field(Cantidad;Rec.Cantidad)
                {
                    ToolTip = 'Especifica la cantidad del registro de movs libreria';
                }
                field(Estante;Rec.Estante)
                {
                    ToolTip = 'Especifica el estante del registro de movs libreria';
                }
                field(IdUsuario;Rec.IdUsuario)
                {
                    ToolTip = 'Especifica el id del usuario que ha efectuado un cambio en la cantidad de la tabla de libros asignados del registro de movs libreria';
                }
                field(FechaHora;Rec.FechaHora)
                {
                    ToolTip = 'Especifica la fecha y hora del registro de movs libreria';
                }
            }
        }
    }
}