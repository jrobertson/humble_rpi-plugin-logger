# Introducing the Humble RPi plugin logger gem

    require 'humble_rpi-plugin-logger'

    log = HumbleRPiPluginLogger.new
    log.start
    log.respond_to? :on_led_message
    log.on_led_message '0 on'
    log.on_exit

## Output

Observed the following from file hrpi.log:

<pre>
# Logfile created on 2015-08-06 15:38:05 +0100 by logger.rb/47272
I, [2015-08-06T15:39:58.571233 #10275]  INFO -- : on_start() invoked
I, [2015-08-06T15:40:14.783910 #10275]  INFO -- : method on_led_message invoked; args: ["0 on"]
I, [2015-08-06T15:40:26.600642 #10275]  INFO -- : on_exit() invoked
</pre>

## Resources

* ?humble_rpi-plugin-logger https://rubygems.org/gems/humble_rpi-plugin-logger?

humblerpipluginlogger humble_rpi plugin logger humblerpi
