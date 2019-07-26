class sync_ts_server::database (
    String $user_password='test',
    String $username='testuser',
) {
    contain postgresql::server

    postgresql::server::db { 'test_sync_ts':
        user     => 'testuser',
        password => postgresql_password('testuser', 'test'),
    }

   postgresql_psql { 'schema-1.0':
        command => file("${module_name}/schema-1.0.sql"),
   }
}
