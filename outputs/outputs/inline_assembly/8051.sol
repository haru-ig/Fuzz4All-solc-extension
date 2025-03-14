pragma solidity ^0.8.0;
contract MultipleReturn0x3a0modified {
    uint public x;
    uint public y;
    uint public z;
    uint public yr;
    uint public r;
    uint public num;
    function multipleReturn(uint _num) public returns (uint _num1, uint _num2) {
        num = _num;
        return num;
    }
    function multipleReturn1(uint _num) public returns (uint, uint) {
        return (
            num,
            5
        );
    }
    function multipleReturn2(uint _num) public returns (uint, uint) {
        uint temp = (
            temp = 1,
            5
        );
    }
    function multipleReturn3(uint _num) public returns (uint, uint) {
        uint num2 = _num - 1;
        return (
            num,
            5
        );
    }
    function multipleReturn4(uint _num) public returns (uint, uint) {
        uint num2 = (
            _num * (
            1 / (
                200
            )
        ) - 1;
        return (
            num,
            5
        );
    }
    function multipleReturn5(uint _num) public returns (uint, uint) {
        uint num2 = _num * 5;
        return (
            num2,
            num
        );
    }
    function multipleReturn6(uint _num) public returns (uint, uint) {
        uint num2 = (_num - 1) * (
            -1 * num + num + num
        );
        return (
            num2,
            num
        );
    }
    function multipleReturn7(uint _num) public returns (uint, uint) {
        uint num2 = num - ((
            ~ (
            (
                1 + 2 - ~ (
                num2 * 2 + num2 - num2
            )
        ) ) - _num + num + num);
        return (
            num2 + num,
            5
        );
    }
    function multipleReturn8(uint _num) public returns (uint, uint) {
        uint num2 = _num + 2 - 1 * (_num +
