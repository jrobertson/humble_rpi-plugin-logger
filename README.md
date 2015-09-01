# Using the Humble RPi plugin logger gem version 0.2.0

    require 'humble_rpi-plugin-logger'

    log = HumbleRPiPluginLogger.new settings: {methods: %i(on_led_message)}
    log.start
    log.respond_to? :on_led_message
    log.on_led_message '0 on'
    log.on_exit

In the above example the method calls to the plugins are logged by declaring the method names under the methods key under settings.

## Output

Observed the following from file hrpi.log:

<pre>
I, [2015-09-01T21:09:02.288204 #601]  INFO -- : on_start() invoked
I, [2015-09-01T21:09:02.418735 #601]  INFO -- : method on_led_message invoked; a
rgs: 0 on
I, [2015-09-01T21:09:02.459349 #601]  INFO -- : on_exit() invoked
</pre>

## Resources

* ?humble_rpi-plugin-logger https://rubygems.org/gems/humble_rpi-plugin-logger?

humblerpipluginlogger humble_rpi plugin logger humblerpi
