#hiera_include('classes')

node 'node1' {
  include ::myrole::web
}

node 'node2' {
  include ::myrole::web
}

node default {
  notify{'checkpoint_1':
    message => '***** DEFAULT block *****'
  }
}
