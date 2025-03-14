pragma solidity ^0.8.0;
contract MultipleReturn0x542 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint, uint) {
        return (
            num + _num,
            5 / 2
        );
    }
    function multipleReturn0x5() public returns (uint) {
        return num;
    }
    function multipleReturn0x540(uint _num) public returns (uint, uint) {
        return (
            num + _num,
            5 / num
        );
    }
}
