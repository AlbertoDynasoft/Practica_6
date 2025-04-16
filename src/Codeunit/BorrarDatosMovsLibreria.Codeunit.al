codeunit 50131 "AMM Borrar Registros Movs"
{
    procedure BorrarRegistrosMovs(var Rec: Record "AMM Librerias")
    var
        RegistrosMovs: Record "AMM Movs Libreria";
    begin
        RegistrosMovs.SetRange(CodigoLibreria,rec.CodigoLibreria);
        if RegistrosMovs.FindSet() then
            repeat
                RegistrosMovs.Delete()
            until RegistrosMovs.Next() <= 0;
    end;
}