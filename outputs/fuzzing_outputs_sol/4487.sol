pragma solidity ^0.8.0;
contract Caller {
    uint storedUint;
    function pay(uint x) public {
        storedUint += x;
    }
    function get() public {
        storedUint = 1;
    }
}
