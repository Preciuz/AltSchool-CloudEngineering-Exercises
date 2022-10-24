## Calculating network IP
 <p>In the calculation of the network IP, the IP and subnet in binary form are necessary.</p>
 <p>Hence, the Network Ip of 193.16.20.35/29 is 193.16.20.32</p>

## Number of hosts
 <p>To calculate the number of hosts that can be assigned on 193.16.20.35/29 is done with the formula below;
 
 max. no of hosts = 2 ** (32 - netmask-length) -2 
    where netmask-lenght = subnet-value</p>
 hence, max no of hosts = 2 ** (32 - 29) -2
 <p>max no of hosts = 6</p>

  ## Range of IP addresses 
  <p>The range of the IP adresses that can be assigned are between the value of the Network IP and the Broadcast IP i.e. 193.16.20.32 and 193.16.20.19</p>
  <p>Hence, we have;</p>
  <ul>
  <li>193.16.20.33</li>
  <li>193.16.20.34</li>
  <li>193.16.20.35</li>
  <li>193.16.20.36</li>
  <li>193.16.20.37</li>
  <li>193.16.20.38</li>
  </ul>

## To calculate the Broadcast IP
 <p>To calculate the broadcast IP, the host bits of the subnet values and network bits are converted to ones and zeros repectively.</p>
 <p>The broadcast IP is gotten by getting the logical OR operation of the IP address and the new subnet value. Then, the logical OR value got would be converted to decimal value giving the Network Ip.</p>
 <p>Hence, the broadcast IP of 193.16.20.35/29 is 193.16.20.39 </p>

