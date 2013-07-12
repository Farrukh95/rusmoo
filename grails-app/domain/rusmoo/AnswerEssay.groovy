package rusmoo

class AnswerEssay {
    String text
    Integer answerId
    
    static constrains = {
        test(nullable:true)
        answerId(nullable:true)
    }
}

