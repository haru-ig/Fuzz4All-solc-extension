pragma solidity ^0.8.0;
contract MultipleReturn0x55 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    uint public num2;
    function multipleReturn(uint _num) public returns (uint, uint, uint, uint, uint) {
        num = num;
        num2 = num >> 32;
        num = _num;
        uint x = 1;
        x = num;
        return (
            3 * num,
            2 * num >> 8,
            1,
            2 * num >> 8,
            3 * num
        );
    }
    function x() public returns (uint) {
        num += 1;
        uint x = 1;
        x = num;
        num += 2;
        return num;
    }
    function x0x3a(uint _num) public returns (uint) {
        num += _num + 4;
        uint x = 1;
        x = 5 - x;
        return num2 + num >> 16 + num ^ num;
    }
}
