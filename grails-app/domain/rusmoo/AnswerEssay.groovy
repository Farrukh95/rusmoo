package rusmoo

class AnswerEssay extends Answer {
    String text
    Integer answerId
    
    static constrains = {
        test(nullable:true)
        answerId(nullable:true)
    }
    
    static mapping = {
        table "ANSWER_ESSAY"
        id column: 'ID', type: 'integer'
    }
}

