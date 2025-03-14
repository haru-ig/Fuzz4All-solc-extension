pragma solidity ^0.8.0;
contract Storage {
    uint value;
    function write(uint x) public {
        value = x;
    }
    function read() public view returns (uint) {
        return value;
    }
}
