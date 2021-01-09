$ports=(80,8080,443);
$ip="192.168.0.1";

foreach ($port in $ports)



{try{
 

	$socket=new-object system.net.sockets.tcpclient($ip,$port);
    }
catch{};
	if ($socket -eq $null)
		{
		echo $ip":"$port" - Closed";
		}
	else
		{

		echo $ip":"$port" - Open";$socket = $null;
	    }
	
}
