node 'node1' {
  #include base
  class {'::tomcat' :
    user          => root,
    group         => root,
    java_opts_xms => '128m',
    java_opts_xmx => '256m',
  }

  tomcat::deploy {'sysfoo':
    deploy_url     => 'https://9-180957468-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '3b3ba1ee6a6a30960303054f9f9b9c42',
  }
}

node 'node2' {
  #include base
  class {'::tomcat' : }
}

node default {
  notify{'checkpoint_1':
    message => '***** DEFAULT block *****'
  }
}
