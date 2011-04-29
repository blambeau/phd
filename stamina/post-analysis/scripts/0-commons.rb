$LOAD_PATH.unshift File.expand_path('../../../toolkit/stamina.git.github/lib', __FILE__)
require 'rubygems'
require 'stamina'
require 'dbagile'
raise unless Stamina::VERSION == "0.3.1"

$dba = DbAgile::dba
$dba.repository_path = File.expand_path '../..', __FILE__

def with_connection 
  $dba.with_current_connection &Proc.new
end

