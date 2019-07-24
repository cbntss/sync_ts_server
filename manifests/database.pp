class sync_ts_server::database () {
    contain postgresql::server

    class { 'postgresql::server':
    }

    postgresql::server::db { 'sync_ts':
        user     => 'connector',
        password => postgresql_password('connector', '_password_'),
    }

   # postgresql::server::schema { 'Sync_TS_DB' :
   #     db               = $postgresql::server::db,
   #     owner            = undef,
   #     schema           = "schema-1.0.sql",
   #     connect_settings = $postgresql::server::default_connect_settings,
   # }
}