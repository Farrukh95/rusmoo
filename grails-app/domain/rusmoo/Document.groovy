package rusmoo

class Document {

    String placement
    String name
    Integer unitId
    
    static constraints = {
        placement(nullable:true, size: 256)
        name(nullable:true, size: 50)
        unitId(nullable:true)
    }
}
