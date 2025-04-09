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
        field(2; IdLibro; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Libros".IdLibro;
        }
        field(3; IdLibreria; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "AMM Librerias".IdLibreria;
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
    }
    
    keys
    {
        key(PK; IdMovsLibreria, IdLibro, IdLibreria, Estante)
        {
            Clustered = true;
        }
    }
    
    /* fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end; */
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