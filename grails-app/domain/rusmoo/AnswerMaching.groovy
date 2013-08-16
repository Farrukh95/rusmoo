package rusmoo

class AnswerMaching extends Answer {
    
    String question_01;
    String question_02;
    String question_03;
    String question_04;
    String question_05;
    
    String response_01;
    String response_02;
    String response_03;
    String response_04;
    String response_05;
    
    String actualSelect;
    String expectedSelect;

    static constraints = {
        question_01 nullable:true
        question_02 nullable:true
        question_03 nullable:true
        question_04 nullable:true
        question_05 nullable:true
        response_01 nullable:true
        response_02 nullable:true
        response_03 nullable:true
        response_04 nullable:true
        response_05 nullable:true
        actualSelect nullable:true
        expectedSelect nullable:true
    }
}
