default["oh_my_zsh"]["users"] = [
  {
    login: 'vagrant',
    theme: 'gnzh',
    plugins: ['git', 'rails', 'redis-cli', 'rvm', 'bundler', 'debian']
  }
]
default['fulkku']['user'] = 'vagrant'

default['dokku']['ssh_keys'] = {
  'occamsRZR' => ::File.open('/home/vagrant/.ssh/fulkku.pub').read
}
