pragma solidity ^0.8.0;
contract MultipleReturn2x58d {
    uint public a;
    uint public b;
    uint public num;
    function multipleReturn(uint _num) public returns (uint256, uint) {
        return (a * x, x);
    }
    function multipleReturn0x542modified(uint _num) public returns (uint256) {
        return (b * x, b);
    }
    function multipleReturn0x541modified(uint _num) public returns (uint) {
        return a;
    }
    function multipleReturn2modified(uint _num) public returns (uint, uint) {
        return (a + 5550, b + 5550);
    }
    function multipleReturn3modified(uint _num) public returns (uint, uint) {
        return (5550 + a, 5550 + b);
    }
    function multipleReturn0x02modified(uint _num) public returns (uint) {
        return a + b;
    }
}
