package rusmoo

class Document {

    String placement
    String name
    Integer unitId
    
    static constraints = {
        placement(nullable:true, size:0..256)
        name(nullable:true, size:0..50)
        unitId(nullable:true)
    }
    
    static mapping = {
        table "DOCUMENT"
        id column: 'ID', type: 'integer'
    }
}
