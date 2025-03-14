pragma solidity ^0.8.0;
contract MultipleReturn0x5 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint) {
        num += _num;
        uint x = 1;
        x = num;
        return (
            2 * num,
            4 * num
        );
    }
    function multipleReturn0x5() public returns (uint) {
        num += 2;
        uint x = 1;
        x = num;
        return (
            2 * num
        );
    }
    function multipleReturn0x540(uint _num) public returns (uint) {
        num += 2;
        uint x = 1;
        x = num;
        num += 2;
        return (
            2 * num
        );
    }
    function multipleReturn0x541(uint _num) public returns (uint, uint) {
        num += 2;
        uint x = 1;
        x = num;
        num += 2;
        uint y = 2;
        y = 5;
        return (
            2 * num,
            4 * num
        );
    }
    function multipleReturn2(uint _num) public returns (uint, uint) {
        num += _num;
        uint x = 1;
        x = num;
        num += 2;
        num = _num;
        return (
            num,
            5 / num
        );
    }
    function multipleReturn0x02(uint _num) public returns (uint) {
        num += _num;
        uint x = 1;
        x = num;
        num += 2;
        num = _num;
        return num;
    }
}
