report 50101 "AMM Info Movs Libreria"
{
    Caption = 'Report Movs Libreria';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'InformeMovsLibreria.rdl';
    
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
            column(CalcularTotal;CalcularTotal(Cantidad))
            {
                
            }
            
        }
    }

    
    
    /* requestpage
    {
        
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    
                }
            }
        }
    } */
    local procedure CalcularTotal(var Cantidad: Integer) : Integer
    var
        total: Integer;
    begin
        total := Cantidad;
        exit(total);
    end;
    /* rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    }
    
    var
        myInt: Integer; */
}