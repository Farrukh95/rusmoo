package rusmoo

class Course {

    String header;

    static constraints = {
        header(nullable:true, size:0..100)
        blocks(nullable:true)
    }
    
    static mapping = {
        blocks joinTable: false, column: "course_id"
    }
    
    static hasMany = [blocks : Block]
    
    String toString() {
        header
    }
    
}
