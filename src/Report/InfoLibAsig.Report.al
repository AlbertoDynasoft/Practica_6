report 50100 "AMM Info Libros Asignados"
{
    Caption = 'Report Libros Asignados';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'InformeRDL.rdl';
    dataset
    {
        dataitem("AMM Libros Asignados";"AMM Libros Asignados")
        {
            column(CodigoLibreria;CodigoLibreria)
            {
                
            }
            column(CodigoLibro;CodigoLibro)
            {
                
            }
            column(Cantidad;Cantidad)
            {
                
            }
            column(Estante;Estante)
            {
                
            }
        }
    }
}