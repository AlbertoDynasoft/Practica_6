pageextension 50102 "Pila" extends "SO Processor Activities"
{
    layout
    {
        addfirst(content)
        {

        }
    }
    
    actions
    {
        addlast(processing)
        {
            group(grupo1)
            {
                action("Pedidos de Venta")
                {
                    RunObject = page "Sales Order List";
                    ApplicationArea = All;
                }
                action("Facturas de Venta")
                {
                    RunObject = page "Posted Sales Invoices";
                    ApplicationArea = All;
                }
                action("Clientes")
                {
                    RunObject = page "Customer List";
                    ApplicationArea = All;
                }
                group("Configuración")
                {
                    action("Métodos de Pago")
                    {
                        RunObject = page "Payment Methods";
                        ApplicationArea = All;
                    }
                    action("Condiciones de Pago")
                    {
                        RunObject = page "Payment Terms";
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
    
    var
        myInt: Integer;
}