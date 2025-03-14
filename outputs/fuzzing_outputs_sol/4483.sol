pragma solidity ^0.8.0;
contract Caller {
    uint storedUint;
    function get() public {
    }
    function pay(uint x) public {
        storedUint += x;
    }
    receive () public payable { }
    function receive() public {}
}
