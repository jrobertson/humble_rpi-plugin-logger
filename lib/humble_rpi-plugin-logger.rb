#!/usr/bin/env ruby

# file: humble_rpi-plugin-logger.rb

require 'logger'


class HumbleRPiPluginLogger

  def initialize(settings: {}, variables: {})
    
    @log = Logger.new(settings[:filepath] || 'hrpi.log')
    
  end
  
  def method_missing(method_name, *args)
    @log.info "method %s invoked; args: %s" % [method_name, args]
  end  
  
  def respond_to?(name)
    true
  end

  def start()

    @log.info 'on_start() invoked'
    
  end
  
  alias on_start start
  
  def on_exit()
    @log.info 'on_exit() invoked'
  end
  
  
end
