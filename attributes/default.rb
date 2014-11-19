default["oh_my_zsh"]["users"] = [
  {
    login: 'vagrant',
    theme: 'gnzh',
    plugins: ['git', 'rails', 'redis-cli', 'rvm', 'bundler', 'debian']
  }
]
default['fulkku']['user'] = 'vagrant'
default['fulkku']['apps'] = [
  {
    name: 'archive',
    local_dir: '~/Repos/uhhyeahdude',
    github: 'https://github.com/occamsRZR/uhhyeahdude'
  }
]
#
# => dokku configs
default['dokku']['git_revision'] = 'v0.3.0'
default['dokku']['ssh_keys'] = {
  'occamsRZR' => ::File.open('/home/vagrant/.ssh/id_rsa.pub').read
}
default['dokku']['plugins'] = {
  'postgresql' => 'https://github.com/Kloadut/dokku-pg-plugin'
}
default['dokku']['apps'] = {
  'uhhyeahdude' => {
    'env' => {
      'APP' => 'uhhyeahdude',
      'IMAGE' => "dokku/$APP"
    }
  }
}
