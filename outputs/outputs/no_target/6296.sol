pragma solidity ^0.8.0;
contract MyContract {
    function getAddress(uint) public pure returns (address) {
        address addr = this;
        return addr;
    }
    function setAddress(uint x) public {
        address addr;
    }
    function setAddreess2(uint x) public {
        address addr2 = this;
    }
}
contract C {
    address public a;
    constructor (uint x) {
        address addr = address(0x0);
    }
    function get(uint) public pure returns (address) {
        address addr = a;
        return addr;
    }
}
