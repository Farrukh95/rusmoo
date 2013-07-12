package rusmoo

class AnswerClose {
    String text
    Integer answerId

    static constraints = {
        text(nullable:true, size:0..256)
        answerId(nullable:true)
    }
}
