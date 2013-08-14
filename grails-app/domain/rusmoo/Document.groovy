package rusmoo

class Document {

    String name
    byte[] data
    
    static constraints = {
        name(nullable:true, size:0..150)
        unit(nullable:true)
        data(size: 0..10485760, render: false, blank: false) //10MB max size
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        data maxSize: 10485760 //10MB max size
    }
    
    String toString() {
        name
    }
}
