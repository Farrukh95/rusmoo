package rusmoo

class AnswerOneSelect extends Answer {
    String text
    Boolean selected

    static constraints = {
        text(nullable:true)
        selected(nullable:true)
    }
    
    String toString() {
        text
    }
}
