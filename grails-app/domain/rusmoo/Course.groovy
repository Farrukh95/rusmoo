package rusmoo

class Course {

    String header;

    static constraints = {
        header(nullable:true, size: 100)
    }
    
    static mapping = {
    }
    
}
