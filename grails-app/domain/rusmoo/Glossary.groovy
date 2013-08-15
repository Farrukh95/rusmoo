package rusmoo

class Glossary {
    
    String term
    String definition

    static constraints = {
        unit(nullable:true)
        term(size:0..255)
        definition(size:0..1000)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        definition sqlType:'TEXT'
    }
}
