require 'spec_helper'

describe 'mysql::server' do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :stage           => 'bootstrap',
      :lsbdistcodename => 'precise',
      :lsbdistrelease  => '12.04',
      :operatingsystem => 'Ubuntu',
    } }

    it do
      should contain_file('/root/.my.cnf').with({
        'ensure' => 'file',
        'group'  => 'root',
        'mode'   => '0400',
        'owner'  => 'root',
      })
    end

    it do
      should contain_file('/etc/mysql').with({
        'ensure' => 'directory',
        'group'  => 'root',
        'mode'   => '0644',
        'owner'  => 'root',
      })
    end

    it do
      should contain_file('/etc/mysql/conf.d').with({
        'ensure' => 'directory',
        'group'  => 'root',
        'mode'   => '0644',
        'owner'  => 'root',
      })
    end

    it do
      should contain_package('mysql-server').with_ensure('present')
    end

    it do
      should contain_service('mysql').with({
        'ensure'     => 'running',
        'enable'     => true,
        'hasstatus'  => false,
        'hasrestart' => true,
      })
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
