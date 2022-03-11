<?php

$sock = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
socket_bind($sock, '0.0.0.0', 10000);

for (;;) {
    socket_recvfrom($sock, $message, 1024, 0, $ip, $port);
    $response = strtoupper($message);
    socket_sendto($sock, $response, strlen($response), 0, $ip, $port);
}

?>