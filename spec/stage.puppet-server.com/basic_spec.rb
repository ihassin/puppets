require 'spec_helper'

describe package('puppetmaster') do
  it { should be_installed }
end

describe service('puppet') do
  it { should be_running }
end
