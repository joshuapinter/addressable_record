$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
require 'addressable_record/address'
require 'addressable_record/active_record_extensions'

module AddressableRecord
  VERSION = '1.0.0'
end

ActiveRecord::Base.send( :include, AddressableRecord::ActiveRecordExtensions ) if defined?( ActiveRecord::Base )