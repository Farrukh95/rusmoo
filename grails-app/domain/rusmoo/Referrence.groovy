package rusmoo

class Referrence {

    String url
    
    static constraints = {
        url(nullable:true, size:0..256)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        
    }
    
    String toString() {
        url
    }
}
