
### Array dos repositorios
$repos = [ 'http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo',     ]

### For no array
$repos.each | $repo | {

  ### cada entrada em outro arrya
  $array_repo_file = split($repo,'/')

  ### valida se realmente virou array
  validate_array($array_repo_file)

  ### cria o file com a ultima entrada do array
   file { "/etc/yum.repos.d/${array_repo_file[-1]}":
     ensure => file,
     source => $repo,
   }

}
