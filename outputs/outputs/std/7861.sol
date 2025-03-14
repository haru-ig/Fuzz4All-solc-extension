pragma solidity ^0.8.0;
contract Storage {
    function write(uint a) public storage {
        a = 42;
    }
    uint a;
    function read() public view returns (uint) {
        return a;
    }
}
