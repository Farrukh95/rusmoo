package rusmoo

class Glossary {

    static constraints = {
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        
    }
}
