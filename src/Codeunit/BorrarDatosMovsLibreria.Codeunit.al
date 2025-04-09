codeunit 50102 "AMM Borrar Registros Movs"
{
    /* EventSubscriberInstance = StaticAutomatic; */
    trigger OnRun()
    var
        RegistrosMovs: Record "AMM Movs Libreria";
    begin
        BorrarRegistrosMovs(RegistrosMovs/* ,RegistrosLA2 */);
    end;
    local procedure BorrarRegistrosMovs(var Rec: Record "AMM Movs Libreria" /* ; var xRec: Record  "AMM Libros Asignados" */)
    var
        RegistrosMovs: Record "AMM Movs Libreria";
    begin
        message('BORRAR REGISTRO');
        Message('rec = %1', Rec);
        Message('RegistrosMovs = %1',RegistrosMovs);
        Rec.Delete();
    end;
}