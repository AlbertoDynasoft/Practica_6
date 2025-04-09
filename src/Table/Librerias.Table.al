table 50104 "AMM Librerias"
{
    DataClassification = ToBeClassified;
    
    
    fields
    {
        field(1; IdLibreria; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Codigo; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Test; Code[10])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; IdLibreria, Codigo)
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
    
}