table 50105 "AMM Movs Libreria"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; IdMovsLibreria; Integer)
        {
            DataClassification = ToBeClassified; 
            AutoIncrement = true;
        }
        field(2; CodigoLibro; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Libros".CodigoLibro;
        }
        field(3; CodigoLibreria; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Librerias".CodigoLibreria;
        }
        field(4; Cantidad; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Estante; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
        field(6; IdUsuario; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(7; FechaHora; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; IdMovsLibreria, CodigoLibro, CodigoLibreria, Estante)
        {
            Clustered = true;
        }
    }
    
    /* trigger On()
    begin
        if UserHasPermission('User1', 'MyPermissionSet') then begin
            // Aplicar permisos específicos de campo
            ApplyFieldPermissions('My Custom Table', 'My Field', 'RIMD');
            ApplyFieldPermissions('My Custom Table', 'Another Field', 'R');
        end;
    end;

    procedure UserHasPermission(UserID: Code[50]; PermissionSetID: Code[50]): Boolean
    begin
        // Lógica para verificar si el usuario tiene el conjunto de permisos
        exit(true); // Ejemplo simplificado
    end;

    procedure ApplyFieldPermissions(TableID: Integer; FieldID: Integer; Permissions: Text[4])
    begin
        // Lógica para aplicar permisos específicos de campo
    end; */
}