package rusmoo

class Document {

    String name
    byte[] data
    String comment
    
    static constraints = {
        name(nullable:true, size:0..256)
        comment(nullable:true, size:0..256)
        unit(nullable:true)
        data(size: 0..10485760, blank: false) //10MB max size
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        data maxSize: 10485760 //10MB max size
    }
    
    String toString() {
        name
    }
}
