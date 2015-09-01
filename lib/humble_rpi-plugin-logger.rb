#!/usr/bin/env ruby

# file: humble_rpi-plugin-logger.rb

require 'logger'


class HumbleRPiPluginLogger

  def initialize(settings: {}, variables: {})
    
    @log = Logger.new(settings[:filepath] || 'hrpi.log')
    
    settings[:methods].each do |name|
      
      method_name = name.to_s
      
      instance_eval %Q(
        def #{method_name}(*args)
          @log.info "method #{method_name} invoked; args: %s" % args
        end
      )      
    end
    
  end
  
  def start()

    @log.info 'on_start() invoked'
    
  end
  
  
  alias on_start start
  
  def on_exit()
    @log.info 'on_exit() invoked'
  end
  
  
end
