package rusmoo

class AnswerEssay extends Answer {
    String text
    
    static constrains = {
        test(nullable:true)
        answer(nullable:true)
    }
    
    static belongsTo = [answer:Answer]
    
    static mapping = {
    }
    
    String toString() {
        text
    }
}

