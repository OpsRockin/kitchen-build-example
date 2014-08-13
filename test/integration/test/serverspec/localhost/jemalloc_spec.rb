require 'spec_helper'

describe package('jemalloc') do
  it { should be_installed }
end

describe command('/usr/local/bin/jemalloc.sh env') do
  it { should return_stdout /^LD_PRELOAD=.+libjemalloc.+/ }
end
