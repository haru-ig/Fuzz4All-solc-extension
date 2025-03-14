pragma solidity ^0.8.0;
contract Mutate {
    function f(address addr, uint x){
        addr.send(0.1 ether);

    }
    }
