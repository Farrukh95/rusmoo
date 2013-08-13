package rusmoo

class Document {

    String placement
    String name
    
    static constraints = {
        placement(nullable:true, size:0..256)
        name(nullable:true, size:0..50)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        
    }
    
    String toString() {
        name
    }
}
