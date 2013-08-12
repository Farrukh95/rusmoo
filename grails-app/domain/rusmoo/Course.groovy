package rusmoo

class Course {

    String header;

    static constraints = {
        header(nullable:true, size:0..100)
    }
    
    static mapping = {
        table "COURSE"
        blocks joinTable: [column: "COURSE_ID", key: "ID", name: "BLOCK"]
    }
    
    static hasMany = [blocks : Block]
    
}
