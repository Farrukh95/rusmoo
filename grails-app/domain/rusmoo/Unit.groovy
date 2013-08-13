package rusmoo

class Unit {

    String name
    
    static constraints = {
        name(nullable:true, size:0..100)
        block(nullable:true)
    }
    
    static hasMany = [documents:Document, referrences:Referrence, lectures:Lecture, glossaries:Glossary, questions:Question]
    
    static belongsTo = [block: Block]
    
    static mapping = {
        documents joinTable:    false, column: "unit_id"
        referrences joinTable:  false, column: "unit_id"
        lectures joinTable:     false, column: "unit_id"
        glossaries joinTable:   false, column: "unit_id"
        questions joinTable:    false, column: "unit_id"
    }
    
    String toString() {
        name
    }
}
