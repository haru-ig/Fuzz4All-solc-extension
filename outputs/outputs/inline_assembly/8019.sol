pragma solidity ^0.8.0;
contract MultipleReturn {
    uint public x;
    uint public y;
    uint public z;
    function multipleReturn() public returns (uint) {
        return 5;
    }
    function multipleReturn0x0() public returns (uint, uint) {
        return (2, 3);
    }
    function multipleReturn2() public returns (uint, uint, uint, uint, uint) {
        return (2, 5, 5, 7, 11);
    }
    function multipleReturn3() public returns (uint) {
        return 1;
    }
    function multipleReturn42() public {
        uint x = 5;
        x += 1;
        y = 5;
        uint y = x;
    }
}
