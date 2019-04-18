hiera_include('classes')

node 'node1' {
  include role::web
}

node 'node2' {
  include role::web
}

node default {
  notify{'checkpoint_1':
    message => '***** DEFAULT block *****'
  }
}
