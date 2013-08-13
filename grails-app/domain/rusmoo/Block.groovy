package rusmoo

class Block {

    String name;
    
    static constraints = {
        name(nullable:true, size:0..100)
        course(nullable: true)
    }
    
    static hasMany = [units : Unit]
    
    static belongsTo = [course : Course]
    
    static mapping = {
        units joinTable: false, column: "block_id"
    }
    
    String toString() {
        name
    }
}
