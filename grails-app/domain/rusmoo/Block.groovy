package rusmoo

class Block {

    String name;
    Integer courseId;
    
    static constraints = {
        name(nullable:true, size:0..100)
        courseId(nullable:true)
    }
    
    static hasMany = [units : Unit]
    
    //static belongsTo = [course : Course]
    
    static mapping = {
        table "BLOCK"
        units joinTable: [column: "UNIT_ID", key: "ID", name: "UNIT"]
    }
}
