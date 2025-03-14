pragma solidity ^0.8.0;
contract MultipleReturn {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn() public returns (uint) {
        num = 2;
        uint x = 1;
        x = num;
        return x;
    }
    function multipleReturn0x0() public returns (uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        return (5 - num, 6 - num);
    }
    function multipleReturn2() public returns (uint, uint, uint, uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        num = 40;
        return (
            num,
            58 / (x + 1),
            x * x,
            x * (x * (x * num + 1)) + 13,
            num
        );
    }
    function multipleReturn3() public returns (uint) {
        num = 2;
        uint x = 1;
        num = x = 3;
        num = 20;
        num = num * num;
        num = num * num * num * num;
        return num;
    }
    function multipleReturn42() public {
        uint x = 5;
        x += 1;
        y = 5;
        uint y = x;
    }
}
