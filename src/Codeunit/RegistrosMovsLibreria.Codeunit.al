codeunit 50130 "AMM Registros Movs Libreria"
{
    trigger OnRun()
    var
        RegistrosLA: Record "AMM Libros Asignados";
        RegistrosLA2: Record "AMM Libros Asignados";
    begin
        CrearRegistrosMovs(RegistrosLA,RegistrosLA2);
    end;
    [EventSubscriber(ObjectType::Table, Database::"AMM Libros Asignados",'OnBeforeValidateEvent', 'Cantidad', true, true)]
    local procedure CrearRegistrosMovs(var Rec: Record "AMM Libros Asignados"; var xRec: Record  "AMM Libros Asignados")
    var
        RegistrosMovs: Record "AMM Movs Libreria";
    begin
        RegistrosMovs.CodigoLibreria := Rec.CodigoLibreria;
        RegistrosMovs.CodigoLibro := Rec.CodigoLibro;
        RegistrosMovs.Cantidad := Rec.Cantidad - xRec.Cantidad;
        RegistrosMovs.Estante := Rec.Estante;
        RegistrosMovs.IdUsuario := UserSecurityId();
        RegistrosMovs.FechaHora := CurrentDateTime();
        RegistrosMovs.Insert();
    end;
}