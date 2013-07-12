package rusmoo

class Unit {

    String name
    Integer blockId
    
    static constraints = {
        name(nullable:true, size:100)
        blockId(nullable:true)
    }
}
