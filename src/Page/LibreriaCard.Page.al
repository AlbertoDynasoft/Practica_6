page 50107 "AMM Libreria Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Librerias";
    layout
    {
        area(Content)
        {
            group("Datos Libreria Card")
            {
                Caption = 'Lista de Librerias';
                field(CodigoLibreria;Rec.CodigoLibreria)
                {

                }
            }
            part("Apartado Libros Asignados"; "AMM Libros Asignados SubPage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = CodigoLibreria = field("CodigoLibreria");
            }
            part("Apartado Movs Libreria"; "AMM Movs Libreria SubPage")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = CodigoLibreria = field("CodigoLibreria");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Borrar Registros Movs")
            {
                trigger OnAction()
                var
                    Boton: Codeunit "AMM Borrar Registros Movs";
                begin
                    Boton.BorrarRegistrosMovs(Rec);
                end;
            }
        }
    }
}