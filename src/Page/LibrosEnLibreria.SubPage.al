page 50105 "AMM Movs Libreria SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Movs Libreria";
    
    layout
    {
        
        area(Content)
        {
            field(CodigoLibreria;Rec.CodigoLibreria)
            {
                
            }
            repeater("Datos Movs Libreria Subpage")
            {
                field(IdMovsLibreria;Rec.IdMovsLibreria)
                {
                    
                }
                field(CodigoLibro;Rec.CodigoLibro)
                {
                    
                }
                field(Cantidad;Rec.Cantidad)
                {
                    
                }
                field(Estante;Rec.Estante)
                {
                    
                }
                field(IdUsuario;Rec.IdUsuario)
                {
                    
                }
                field(FechaHora;Rec.FechaHora)
                {
                    
                }
            }
        }
    }
}