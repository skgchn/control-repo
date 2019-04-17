node 'node3' {
  #include base
  class {'::tomcat' : }

  tomcat::deploy {'sysfoo':
    deploy_url     => 'https://9-180957468-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '3b3ba1ee6a6a30960303054f9f9b9c42',
  }
}

node default {
  notify{'checkpoint_1':
    message => '***** Dev: DEFAULT block *****'
  }
}
