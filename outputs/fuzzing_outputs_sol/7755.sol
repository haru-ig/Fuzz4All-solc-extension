pragma solidity ^0.8.0;
contract MutatingPayable {
    uint8 i;
    uint8 private value;

    function get() public returns (uint8) { return i; }
    function set(uint8 _v) public { i = _v; }

    receive() public payable {
        value += 1;
    }
}
