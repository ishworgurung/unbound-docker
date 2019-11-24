# README

If you already have a master `unbound.conf` and few other configurations in `unbound.conf.d` like me then, you can use this to build your own image with `docker build -t unbound:latest .`.

I run it like so (networking is set host mode):
```bash
$> docker run										\
     --restart=always									\
     -d											\
     --network=host									\
     --name unbound 									\
     -v $HOME/unbound-cfg/unbound.conf:/opt/unbound/etc/unbound/unbound.conf:ro 	\
     -v $HOME/unbound-cfg/unbound.conf.d:/opt/unbound/etc/unbound/unbound.conf.d:ro 	\
     -p 53:53/udp 								    	\
     unbound:latest
```

Thanks to Matthew Vance for the original `Dockerfile`.
