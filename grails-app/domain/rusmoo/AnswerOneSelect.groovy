package rusmoo

class AnswerOneSelect extends Answer {
    String text
    Boolean selected
    Integer answerId

    static constraints = {
        text(nullable:true)
        selected(nullable:true)
        answerId(nullable:true)
    }
    
    static mapping = {
        table "ANSWER_ONE_SELECT"
    }
}
