tableextension 50135 "AMM Pila Movs Libreria" extends "Sales Cue"
{
    fields
    {
        field(50130; Entradas; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("AMM Movs Libreria");
        }
    }
}