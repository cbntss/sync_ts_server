require 'spec_helper'

describe "sync_ts_server" do

        let(:params) { {'packages' => ['pac'], 'db_password' => '_password_', 'terminal_url' => 'url'} }


        it { is_expected.to compile }
    it do
        is_expected.to contain_ini_setting('sync_ts_server::database_username').with(
            ensure:  'present'
        )
    end
end

