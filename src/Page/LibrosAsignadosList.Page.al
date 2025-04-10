page 50109 "AMM Libros Asignados List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Libros Asignados";
    /* CardPageId = "AMM Libros Asignados Card"; */
    
    layout
    {
        area(Content)
        {
            repeater("Datos Libros Asignados List")
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