pragma solidity ^0.8.0;
contract MultipleReturn {
    uint public x;
    uint public y;
    uint public z;
    function multipleReturn() public returns (uint) {
        z = 3;
        return 5;
    }
    function multipleReturn0x0() public returns (uint, uint) {
        return (x, 3);
    }
    function multipleReturn2() public returns (uint, uint, uint, uint, uint) {
        z = 5;
        x += 5;
        y = 11;
        uint y = x + z;
    }
    function multipleReturn3() public returns (uint) {
        y = 5;
        return 1;
    }
    function multipleReturn42() public returns (uint) {
        uint x = 5;
        x = 5;
        uint y = 7;
        uint z = 7;
        x += y;
        uint y = 3;
        uint z = 5;
        y = 7;
        x = x + z + y;
        return x;
    }
}
