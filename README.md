docker-consul
=============

What?
-------------
docker-consul is the test environment of consul.
If you want use new functions of consul, use it.

Usage
-------------
### build

    docker build -t consul .

### run

    docker run -i -t consul

after connected console, you can use consul!

Use vagrant
------------
If you don't have a environment of docker, build it by Vagrant.

    vagrant up

after about 10 minitues, you can use docker.
This environment include foostan/consul. If you want run consul on docker, exec this command.

    docker run -i -t foostan/consul

Contributing
-------------
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
