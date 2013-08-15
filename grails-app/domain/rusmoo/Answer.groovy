package rusmoo

class Answer {
    Boolean righted
    String comment
    
    static constrans = {
        right nullable:true
        question nullable:true
        comment nullable:true, size:256
    }   
    
    static belongsTo = [question : Question]
}