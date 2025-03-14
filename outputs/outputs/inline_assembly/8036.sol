pragma solidity ^0.8.0;
contract MultipleReturn0x6 {
    uint public x;
    uint public num;
    function multipleReturn() public returns (uint, uint) {
        num++;
        uint x = 1;
        x = num;
        num++;
        num = 1;
        return (
            2 * num,
            5 * num
        );
    }
    function multipleReturn0x6() public returns (uint, uint) {
        num++;
        num = 0x6;
        uint x = 1;
        x = num;
        num++;
        return (
            0x7,
            0xfffffffffffffffe + 3 * num
        );
    }
    function multipleReturn0x675(uint _num) public returns (uint, uint) {
        num += _num;
        num = 0x6;
        uint x = 1;
        x = num;
        num += 2;
        num = _num;
        return (
            0x7,
            0xfffffffffffffffe + 3 * num
        );
    }
}
