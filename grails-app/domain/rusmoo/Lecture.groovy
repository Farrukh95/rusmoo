package rusmoo

class Lecture {

    String header
    String content
    Integer unitId
    
    static constraints = {
        header(nullable:true, size:60)
        content(nullable:true)
        unitId(nullable:true)
    }
}
