pragma solidity ^0.8.0;
contract MultipleReturn0x56c {
    uint public x;
    uint public y;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint) {
        if (_num > x) {
            return (x, 5);
        }
        return (
            2,
            5
        );
    }
    function multipleReturn0x540modified(uint _num) public returns (uint) {
        if (_num > x) {
            return x;
        }
        return 2;
    }
    function multipleReturn0x541modified(uint _num) public returns (uint) {
        if (_num > x) {
            return x;
        }
        return 5;
    }
    function multipleReturn2modified(uint _num) public returns (uint) {
        if (_num > x) {
            return x;
        }
        return 5;
    }
    function multipleReturn0x02modified(uint _num) public returns (uint) {
        if (_num > x) {
            return x;
        }
        return 2;
    }
}
