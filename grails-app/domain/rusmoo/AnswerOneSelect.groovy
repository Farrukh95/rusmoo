package rusmoo

class AnswerOneSelect extends Answer {
    String text
    Boolean selected

    static constraints = {
        text(nullable:true)
        selected(nullable:true)
        answer(nullable:true)
    }
    
    static belongsTo = [answer:Answer]
    
    static mapping = {
    }
    
    String toString() {
        text
    }
}
