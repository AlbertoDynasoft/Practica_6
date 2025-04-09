permissionset 50141 "AMM Administrador" 
{
    Assignable = true;
    Caption = 'Permisos Administrador';
    Permissions = 
        page "AMM Movs Libreria List" = X,
        page "AMM Libros List" = X,
        page "AMM Libros Card" = X,
        page "AMM Libreria List" = X,
        page "AMM Libreria Card" = X,
        page "AMM Libros Asignados List" = X,
        tabledata "AMM Movs Libreria" = RIMD,
        tabledata "AMM Libros" = RIMD,
        tabledata "AMM Librerias" = RIMD,
        tabledata "AMM Libros Asignados" = RIMD;
}