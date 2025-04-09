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
            repeater(GroupName)
            {
                field(IdLibreria;Rec.IdLibreria)
                {
                    
                }
                field(IdLibro;Rec.IdLibro)
                {
                    
                }
                field(Cantidad;Rec.Cantidad)
                {
                    /* trigger OnValidate()
                    var
                        mensaje: Label '¿Seguro que desea modificar la cantidad del libro "%1" en la librería "%2"?';
                        Libros: Record "AMM Libros";
                        Librerias: Record "AMM Librerias";
                    begin
                        message('%1 %2',Librerias.Get(Rec.IdLibreria),Rec.IdLibreria);
                        
                        if Rec.Cantidad <> xRec.Cantidad then
                            if Libros.Get(Rec.IdLibro) then
                                repeat
                                    if Confirm(mensaje, false, Libros.Titulo, Librerias.Codigo) then
                                        Rec.Cantidad := Rec.Cantidad
                                    else
                                        Rec.Cantidad := xRec.Cantidad;
                                until Libros.Next() >= 0;
                    end; */
                }
                field(Estante;Rec.Estante)
                {
                    
                }
                field(Test;Rec.Test)
                {
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                /* trigger OnAction()
                var
                    MyCodeunit1: Codeunit "AMM Registros Movs Libreria";
                begin
                    message('Probar');
                    MyCodeunit1.Run()
                end; */
            }
        }
    }

    trigger OnDeleteRecord() : Boolean
    begin
        message('No se permite borrar registros en esta tabla');
        exit(false);
    end;
    
    var
        myInt: Integer;
}