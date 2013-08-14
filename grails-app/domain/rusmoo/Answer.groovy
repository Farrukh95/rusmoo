package rusmoo

class Answer {
    Integer score
    Boolean righted
    
    static constrans = {
        score nullable:true, blank: true
        right nullable:true
        question nullable:true
    }   
    
    static belongsTo = [question : Question]
    
    static mapping = {
    }
}