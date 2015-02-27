Setup for demo is described in the report as well as here.

classDefs.rb implements the classes to be tested
classSpecs.rb is the actual RSpec code

1) Install RSpec gem

	sudo gem install rspec

2) Run the demo spec file with the rspec command

	rspec classSpecs.rb -fdoc

-There should be one failing test due to an error, one pending, and the rest passing.