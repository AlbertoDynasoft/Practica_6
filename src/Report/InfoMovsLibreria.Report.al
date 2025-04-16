report 50131 "AMM Info Movs Libreria"
{
    Caption = 'Report Movs Libreria';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'layout/InformeMovsLibreria.rdl';
    dataset
    {
        dataitem("AMM Movs Libreria";"AMM Movs Libreria")
        {
            DataItemTableView = sorting("CodigoLibro") order(ascending);
            RequestFilterFields = CodigoLibreria;
            column(CodigoLibreria;CodigoLibreria)
            {
                
            }
            column(CodigoLibro;CodigoLibro)
            {
                
            }
            column(Cantidad;Cantidad)
            {
                
            }
        }
    }
}