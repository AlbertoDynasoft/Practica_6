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
                    field(Name; SourceExpression)
                    {
                        
                    }
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