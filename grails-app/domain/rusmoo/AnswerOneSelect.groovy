package rusmoo

class AnswerOneSelect {
    String text
    Boolean selected
    Integer answerId

    static constraints = {
        text(nullable:true)
        selected(nullable:true)
        answerId(nullable:true)
    }
}
