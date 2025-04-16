page 50135 "AMM Libreria Card"
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
                    ToolTip = 'Especifica el código de la libreria';
                }
                field(Test;Rec.Test)
                {
                    ToolTip = 'Especifica el test';
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
                ToolTip = 'Botón que borra los registros de Movs libreria que sean de la libreria actual';
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