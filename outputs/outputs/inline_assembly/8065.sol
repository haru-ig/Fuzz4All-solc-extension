pragma solidity ^0.8.0;
contract MultipleReturn2x542modified {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint) {
        return (
            5550,
            y
        );
    }
    function multipleReturn2modified(uint _num) public returns (uint256, uint) {
        return (
            y,
            5
        );
    }
    function multipleReturn0x541modified(uint _num) public returns (uint) {
        return x;
    }
}
