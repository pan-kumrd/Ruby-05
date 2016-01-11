# Load the Rails application.
require File.expand_path('../application', __FILE__)


ActsAsTaggableOn.force_parametrize = true
ActsAsTaggableOn.remove_unused_tags = true
ActsAsTaggableOn.delimiter = ','
