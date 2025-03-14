pragma solidity ^0.8.0;
contract Caller {
    uint storedUint;
    function get() public {
        storedUint = 1;
    }
    function pay(uint x) public payable {
        storedUint += x;
    }
}
