# ettercap-filters

Some [ettercap] filters(http://ettercap.github.io/ettercap/index.html) ([ettercap git repository](https://github.com/Ettercap/ettercap))

**Requirements**
+ [ettercap](http://ettercap.github.io/ettercap/index.html)
+ [whatever ettercap requires](http://ettercap.github.io/ettercap/about.html#footer)

**Getting startted**

    git clone https://github.com/chxj1992/intranet-sniffer.git
    cd intranet-sniffer
    
    ./run.sh
    etterfilter replacer.filter
    ./run.sh -f filter.ef 192.168.1.5
    ./run.sh -i eth0 -f filter.ef -g 192.168.0.1 192.168.1.2-100
  
  + more options

<pre>
-i : the interface  (wlan0/eth0/...) default: wlan0
-g : the gateway ip address   default: 192.168.1.1
-f : filter  default: NO FILTER
</pre>

> Learn more about [Ettercap](http://linux.die.net/man/8/ettercap)

