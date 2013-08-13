package rusmoo

class Question {
    Byte image
    String name
    String questiontext
    
    static constrains = {
        image(nullable:true)
        name(nullable:true, size:0..256)
        questiontext(nullable:true)
        unit(nullable:true)
    }
    
    static belongsTo = [unit : Unit]
    
    static hasMany = [answers : Answer]
    
    static mapping = {
        answers joinTable: false, column: "QUESTION_ID"
    }


    String toString() {
        name
    }    
}

