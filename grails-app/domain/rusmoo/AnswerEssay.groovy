package rusmoo

class AnswerEssay extends Answer {
    String content
    String essayHeader
    
    static constrains = {
        content(maxSize:10000)
        essayHeader(size:256)
    }
    
    String toString() {
        essayHeader
    }
    
    static mapping = {
        content sqlType:'TEXT'
    }
}

