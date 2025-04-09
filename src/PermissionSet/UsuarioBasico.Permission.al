permissionset 50140 "AMM Usuario Basico" 
{
    Assignable = true;
    Caption = 'Permisos Usuario Básico';
    Permissions = 
        page "AMM Movs Libreria List" = X,
        page "AMM Libros List" = X,
        page "AMM Libros Card" = X,
        page "AMM Libreria List" = X,
        page "AMM Libreria Card" = X,
        page "AMM Libros Asignados List" = X,
        tabledata "AMM Movs Libreria" = RID,
        tabledata "AMM Libros" = RID,
        tabledata "AMM Librerias" = RID,
        tabledata "AMM Libros Asignados" = RID;
}