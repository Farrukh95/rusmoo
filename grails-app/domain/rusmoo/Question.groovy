package rusmoo

class Question {
    Byte image
    String name
    String questiontext
    Integer unitId
    
    static constrains = {
        image(nullable:true)
        name(nullable:true, size:0..256)
        questiontext(nullable:true)
        unitId(nullable:true)
    }
    
    static hasMany = [answers : Answer]
    
    static mapping = {
        table "QUESTION"
        id column: 'ID', type: 'integer'
        answers joinTable: [key: "ID", column: "QUESTION_ID", name: "UNIT"]
    }
    
}

