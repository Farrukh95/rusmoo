package rusmoo

class Glossary {

    Integer unitId
    
    static constraints = {
        unitId(nullable:true)
    }
    
    static mapping = {
        table "GLOSSARY"
        id column: 'ID', type: 'integer'
    }
}
