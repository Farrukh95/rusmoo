package rusmoo

class AnswerClose extends Answer {
    String text

    static constraints = {
        text(nullable:true, size:0..256)
//        answer(nullable:true)
    }
    
//    static belongsTo = [answer:Answer]
    
    static mapping = {
    }
    
    String toString() {
        text
    }
}
