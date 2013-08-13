package rusmoo

class Lecture {

    String header
    String content
    
    static constraints = {
        header(nullable:true, size:0..60)
        content(nullable:true)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        
    }
    
    String toString() {
        header
    }
}
