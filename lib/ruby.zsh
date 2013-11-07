# So what if everything looks in test folder, saves me typing it to run tests
export RUBYOPT="-Itest"

# From http://grease-your-suite.heroku.com/#87
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_FREE_MIN=200000

# MAGIC
export DEFER_GC=60
