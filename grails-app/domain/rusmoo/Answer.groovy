package rusmoo

class Answer {
    Integer score
    Boolean right
    AnswerClose close
    AnswerEssay essay
    AnswerOneSelect oneSelect
    
    static constrans = {
        score(nullable:true)
        right(nullable:true)
        question(nullable:true)
        close(nullable:true)
        essay(nullable:true)
        oneSelect(nullable:true)
    }   
    
    static belongsTo = [question : Question]
    
    static mapping = {
        
    }
}