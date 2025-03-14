pragma solidity ^0.8.0;

contract C {
    function f() public static {
        add(3, 4);
        add("3", 4);
        add(uint128(3), uint128(4));
    }
    function add(uint i1, uint i2) pure public returns (uint) {
        return i1 + i2;
    }
    function add(uint i1, uint i2) public returns (uint) {
        return i1 + i2;
    }
}
