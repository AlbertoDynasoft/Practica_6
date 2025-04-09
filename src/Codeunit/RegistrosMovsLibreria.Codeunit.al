codeunit 50100 "AMM Registros Movs Libreria"
{
    trigger OnRun()
    var
        RegistrosLA: Record "AMM Libros Asignados";
    begin
        CrearRegistrosMovs(RegistrosLA);
    end;
    [EventSubscriber(ObjectType::Table, Database::"AMM Libros Asignados", 'OnBeforeInsertEvent', '', true, true)]
    local procedure CrearRegistrosMovs(var Rec: Record "AMM Libros Asignados")
    var
        RegistrosMovs: Record "AMM Movs Libreria";
        RegistrosLA2: Record "AMM Libros Asignados";
    begin
        RegistrosMovs.IdLibreria := Rec.IdLibreria;
        RegistrosMovs.IdLibro := Rec.IdLibro;
        RegistrosMovs.Cantidad := Rec.Cantidad;
        RegistrosMovs.Estante := Rec.Estante;
        RegistrosMovs.IdUsuario := UserSecurityId();
        RegistrosMovs.Insert();
    end;
}

codeunit 50103 "AMM Registros Movs Libreria 2"
{
    trigger OnRun()
    var
        RegistrosLA: Record "AMM Libros Asignados";
        RegistrosLA2: Record "AMM Libros Asignados";
    begin
        CrearRegistrosMovs(RegistrosLA,RegistrosLA2);
    end;
    [EventSubscriber(ObjectType::Table, Database::"AMM Libros Asignados", 'OnBeforeModifyEvent', '', true, true)]
    local procedure CrearRegistrosMovs(var Rec: Record "AMM Libros Asignados"; var xRec: Record  "AMM Libros Asignados")
    var
        RegistrosMovs: Record "AMM Movs Libreria";
        RegistrosLA2: Record "AMM Libros Asignados";
    begin
        RegistrosMovs.IdLibreria := Rec.IdLibreria;
        RegistrosMovs.IdLibro := Rec.IdLibro;
        RegistrosMovs.Cantidad := Rec.Cantidad-xRec.Cantidad;
        RegistrosMovs.Estante := Rec.Estante;
        RegistrosMovs.IdUsuario := UserSecurityId();
        RegistrosMovs.Insert();
    end;
}