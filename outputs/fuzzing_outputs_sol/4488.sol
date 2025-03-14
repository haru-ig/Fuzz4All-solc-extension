pragma solidity ^0.8.0;
contract Caller {
    uint storedUint;
    function get() public returns (uint) {
        storedUint = 1;
        return storedUint;
    }
    function pay(uint x) public payable returns (uint) {
        storedUint += x;
        return storedUint;
    }
}
