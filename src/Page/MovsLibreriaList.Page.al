page 50104 "AMM Movs Libreria List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "AMM Movs Libreria";
    layout
    {
        area(Content)
        {
            repeater("Movs Libreria")
            {
                field(IdMovsLibreria;Rec.IdMovsLibreria)
                {
                    
                }
                field(CodigoLibro;Rec.CodigoLibro)
                {
                    
                }
                field(CodigoLibreria;Rec.CodigoLibreria)
                {
                    
                }
                field(Cantidad;Rec.Cantidad)
                {

                }
                field(Estante;Rec.Estante)
                {
                    /* AccessByPermission = tabledata "AMM Movs Libreria" = RIMD; */
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