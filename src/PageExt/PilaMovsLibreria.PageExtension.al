pageextension 50130 "Pila" extends "SO Processor Activities"
{
    layout
    {
        addfirst(content)
        {
            cuegroup("Registros Movs Libreria")
            {
                field(Entradas;Rec.Entradas)
                {
                    Caption = 'Entradas Movs Libreria';
                    ApplicationArea = All;
                    ToolTip = 'Pila que cuenta los registros de Movs Libreria';
                    DrillDownPageId = "AMM Movs Libreria List";
                }
                field("EntradasMayor20";this.EntradasMayorQue20())
                {
                    Caption = 'Entradas Movs Libreria';
                    ApplicationArea = All;
                    ToolTip = 'Pila que cuenta los registros de Movs Libreria con cantidad superior a 20';
                    DrillDownPageId = "AMM Movs Libreria List";
                }
            }
        }
    }
    local procedure EntradasMayorQue20() : Integer
    var
        MovsLibreria: Record "AMM Movs Libreria";
        ContadorEntradas: Integer;
    begin
        ContadorEntradas := 0;
        MovsLibreria.SetFilter("Cantidad", '>20');
        if MovsLibreria.FindSet() then
            repeat
                ContadorEntradas := ContadorEntradas + 1;
            until MovsLibreria.next() <= 0;
        exit(ContadorEntradas)
    end;
}