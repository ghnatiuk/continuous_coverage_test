require 'mkmf'

dir_config('ruby', [],[]) # no defaults .. use --with-ruby-include

unless find_header("atomic.h")
  abort "atomic.h is missing.  Supply path to ruby 1.9.3 source w/ --with-ruby-include=\"<path>\""
end
unless find_header("debug.h")
  abort "debug.h is missing"
end
unless find_header("id.h")
  abort "id.h is missing"
end
unless find_header("method.h")
  abort "method.h is missing"
end
unless find_header("node.h")
  abort "node.h is missing"
end
unless find_header("thread_pthread.h")
  abort "thread_pthread.h is missing"
end
unless find_header("vm_core.h")
  abort "vm_core.h is missing"
end
unless find_header("vm_opts.h")
  abort "vm_opts.h is missing"
end
create_makefile('ccoverage')
