package rusmoo

class AnswerClose extends Answer {
    String text
    Integer answerId

    static constraints = {
        text(nullable:true, size:0..256)
        answerId(nullable:true)
    }
    
    static mapping = {
        table "ANSWER_CLOSE"
        id column: 'ID', type: 'integer'
    }
}
