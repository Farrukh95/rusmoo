package rusmoo

class Question {
    String name
    String questiontext
    Integer score
    
    static constrains = {
        score nullable:true, blank: true, inRange: 0..100
        name(nullable:true, size:0..256)
        questiontext(nullable:true)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static hasMany = [answers : Answer]
    
    static mapping = {
        answers joinTable: false, column: "question_id"
    }


    String toString() {
        name
    }    
}

