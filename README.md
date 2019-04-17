### Hi friend, does this ever happen to you?

```ruby
== Sinatra (v2.0.5) has taken the stage on 4567 for development with backup from Thin
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on localhost:4567, CTRL+C to stop
Stopping ...
== Sinatra has ended his set (crowd applauds)
Traceback (most recent call last):
	12: from app.rb:5:in `<main>'
	11: from app.rb:13:in `<class:App>'
	10: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/sinatra-2.0.5/lib/sinatra/base.rb:1459:in `run!'
	 9: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/sinatra-2.0.5/lib/sinatra/base.rb:1525:in `start_server'
	 8: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/rack-2.0.7/lib/rack/handler/thin.rb:22:in `run'
	 7: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/thin-1.7.2/lib/thin/server.rb:162:in `start'
	 6: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/thin-1.7.2/lib/thin/backends/base.rb:73:in `start'
	 5: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/eventmachine-1.2.7/lib/eventmachine.rb:195:in `run'
	 4: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/eventmachine-1.2.7/lib/eventmachine.rb:195:in `run_machine'
	 3: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/thin-1.7.2/lib/thin/backends/base.rb:63:in `block in start'
	 2: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/thin-1.7.2/lib/thin/backends/tcp_server.rb:16:in `connect'
	 1: from /Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/eventmachine-1.2.7/lib/eventmachine.rb:531:in `start_server'
/Users/michaeljacobson/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/eventmachine-1.2.7/lib/eventmachine.rb:531:in `start_tcp_server': no acceptor (port is in use or requires root privileges) (RuntimeError)
```

### Damn. I closed my terminal window before shutting down my server. Now my port is blocked.

<br>

---

<br>

### Annoying, huh? Well here's how to fix the problem:

<br>

##### Option 1: Restart your computer. This will kill all running processes, thus freeing up that blocked port.
```
$ sudo reboot
```

<br>

##### Option 2: Identify the ID of the process using the port, then manually kill that process.
```
$ lsof -i :4567
  COMMAND  PID            USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
  ruby    9154 michaeljacobson   13u  IPv6 0xf5969a74d382b50b      0t0  TCP localhost:tram (LISTEN)
$ kill 9154
```

<br>

##### Option 3: Use freeport™ to do all that heavy lifting for you! Simply install by running the following in your terminal...
```
$ curl -sSL https://freeport.herokuapp.com | sudo sh
```

##### ...then all you have to do is run freeport, with the port that's blocked...
```
$ freeport 4567
  Port 4567 is now free
```

##### ... and voila!

<br><br><br>

Please note, freeport is not _actually_ trademarked...
