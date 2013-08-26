package rusmoo

class Glossary {
    
    String term
    String definition

    static constraints = {
        unit(nullable:true)
        term(size:0..255)
        definition(nullable:true, size:0..2000)
    }
    
    static belongsTo = [unit : Unit]
    
    static mapping = {
        definition sqlType:'TEXT'
    }
}
