table 50107 "AMM Test Cambiado"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; IdTestt; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; Texto; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(PK; IdTestt)
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
        
    end;
     */
}