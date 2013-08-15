package rusmoo

class Referrence {

    String url
    String comment
    
    static constraints = {
        url(nullable:true, size:0..256)
        comment(nullable:true, size:0..256)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        
    }
    
    String toString() {
        url.substring(0, 25) + comment
    }
}
