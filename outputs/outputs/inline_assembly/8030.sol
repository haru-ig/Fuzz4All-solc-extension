pragma solidity ^0.8.0;
contract MultipleReturnMutated0x0 {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn0x0() public returns (uint) {
        x *= 3;
        num = 40;
        return num;
    }
    function multipleReturn() public returns (uint, uint, uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        num = 40;
        return (
            num,
            58 / (x + 1),
            41 / num,
            9 / num - x + 1
        );
    }
    function multipleReturn2() public returns (uint, uint, uint, uint, uint,) {
        num = 2;
        uint x = 1;
        x = num;
        uint y;
        uint x2;
        y = x * 2;
        x2 = 3 * y;
        num = 20;
        uint z;
        x = y;
        z = x2;
        x *= 3;
        return (
            num,
            58 / (x + 1),
            x2,
            x,
            41 / num
        );
    }
}
