package rusmoo

class Unit {

    String name
    Integer blockId
    
    static constraints = {
        name(nullable:true, size:0..100)
        blockId(nullable:true)
    }
    
    static hasMany = [documents:Document, referrences:Referrence, lectures:Lecture, glossaries:Glossary, questions:Question]
    
    static mapping = {
        table "UNIT"
        documents joinTable:    [key: "ID", column: "UNIT_ID", name: "DOCUMENT"]
        referrences joinTable:  [key: "ID", column: "UNIT_ID", name: "REFERRENCE"]
        lectures joinTable:     [key: "ID", column: "UNIT_ID", name: "LECTURE"]
        glossaries joinTable:   [key: "ID", column: "UNIT_ID", name: "GLOSSARY"]
        questions joinTable:    [key: "ID", column: "UNIT_ID", name: "QUESTION"]
        id column: 'ID', type: 'integer'
    }
}
