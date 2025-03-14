pragma solidity ^0.8.0;
contract MultipleReturn0x13 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint _num1, uint _num2) {
        num = _num;
        uint temp = num ^ 2;
        return (
            num + temp,
            temp
        );
    }
    function multipleReturn0x11(uint _num) public returns (uint, uint) {
        num = _num;
        uint temp = num ^ 3;
        return (
            num + temp,
            temp
        );
    }
    function multipleReturn2(uint _num) public returns (uint, uint) {
        num = _num;
        uint temp = num | 6;
        return (
            num + temp,
            temp
        );
    }
    function multipleReturn0x18(uint _num) public returns (uint, uint) {
        num = _num;
        uint temp = num | 7;
        return (
            num + temp,
            temp
        );
    }
}
