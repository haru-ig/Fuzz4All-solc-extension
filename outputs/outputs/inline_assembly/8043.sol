pragma solidity ^0.8.0;
contract MultipleReturnMutated0x542 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn(uint _num) public returns (uint) {
        x--;
        return (
            num + (_num + x)
        );
    }
    function multipleReturn0x5() public returns (uint) {
        x--;
        return num;
    }
    function multipleReturn0x540(uint _num) public returns (uint) {
        x--;
        return (
            num + (_num + x)
        );
    }
    function multipleReturn0x541(uint _num) public returns (uint, uint) {
        x--;
        return (
            num + (_num + x),
            5 / num
        );
    }
    function multipleReturn2(uint _num) public returns (uint, uint) {
        x--
        return (
            num + (_num + x),
            5 / num
        );
    }
    function multipleReturn0x02(uint _num) public returns (uint) {
        x
        return num;
    }
}
