pragma solidity ^0.8.0;
contract MultipleReturn2x5 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    uint internal n;
    function multipleReturn(uint _num, uint _n) public returns (uint, uint) {
        num += _num;
        uint x = 1;
        x = num;
        n = _n;
        num += 2;
        uint y = 1;
        y = (x = num) + 2 + _num;
        return (
            2 * num,
            4 * num
        );
    }
    function multipleReturn0x02(uint _num, uint _n) public returns (uint) {
        num += _num;
        uint x = 1;
        x = num;
        n = _n;
        num += 2;
        uint y = 1;
        y = (x = num) + 2 + _num;
        return (
            2 * num
        );
    }
    function multipleReturn0x02540(uint _num, uint _n) public returns (uint) {
        num += _num;
        uint x = 1;
        x = num;
        n = _n;
        num += 2;
        uint y
