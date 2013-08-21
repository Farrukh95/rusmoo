dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
            dialect = "org.hibernate.dialect.H2Dialect"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            username = "root";
            password = "rootroot";
            url = "jdbc:mysql://10.193.113.77:3306/rusmoodev?useUnicode=yes&characterEncoding=UTF-8"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            username = "debian-sys-maint";
            password = "KU2BEg6kqGYZoqAu";
            url = "jdbc:mysql://localhost:3306/rusmoodev?useUnicode=yes&characterEncoding=UTF-8"
            driverClassName = "com.mysql.jdbc.Driver"
            dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
        }
    }
}
