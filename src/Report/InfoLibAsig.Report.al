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
            column(IdLibreria;IdLibreria)
            {
                
            }
            column(IdLibro;IdLibro)
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
    }
    */
    /* rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'mySpreadsheet.xlsx';
        }
    } */
    /*
    var
        myInt: Integer; */
}