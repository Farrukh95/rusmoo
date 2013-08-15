package rusmoo

class AnswerClose extends Answer {
    String text

    static constraints = {
        text(nullable:true, size:0..256)
    }
    
    String toString() {
        text
    }
}
