package rusmoo

class AnswerEssay extends Answer {
    String text
    
    static constrains = {
        text(size:0..256)
//        test(nullable:true)
//        answer(nullable:true)
    }
    
    String toString() {
        text
    }
}

