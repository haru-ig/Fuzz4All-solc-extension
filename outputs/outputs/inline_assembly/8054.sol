pragma solidity ^0.8.0;
contract MultipleReturn0x542 {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint, uint) {
        return (
            x,
            y,
            5
        );
    }
    function multipleReturn0x540modified(uint _num) public returns (uint, uint) {
        return (
            x,
            5
        );
    }
    function multipleReturn0x541modified(uint _num) public returns (uint) {
        return x;
    }
    function multipleReturn2modified(uint _num) public returns (uint, uint) {
        return (
            x,
            5
        );
    }
    function multipleReturn0x02modified(uint _num) public returns (uint) {
        return x;
    }
}
