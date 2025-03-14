pragma solidity ^0.8.0;
contract Mutate {
    mapping (uint => uint) map;
    function () isFallback {
        map[msg.value / 2] /= 2;
    }
    receive() isFallback {
        return msg.value;
    }
}
