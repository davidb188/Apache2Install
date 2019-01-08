# # encoding: utf-8

# Inspec test for recipe Apache2Install::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end

# Verify Apache2 is installed
################################# Use resource language syntax NOT shell syntax
# Installed
# Started
# Correct Version
# Lockdown objects
# Expected output from a web page
# Check for home page existance and resource verb the page
describe apache do
  its ('service') { should cmp 'apache2' }
end
