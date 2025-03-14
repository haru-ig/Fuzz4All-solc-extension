pragma solidity ^0.8.0;
contract MultipleReentry {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReentry() public returns (uint) {
        num = 2;
        uint x = 1;
        uint y = x;
        if (y == 1) {
            y = 2;
            while (y > 1) {
                y = 5;
            }
        }
        x = 5;
        x += 2;
        bool passed = true;
        while (passed) {
            x = 3;
            passed = false;
            while (x >= 3 || x <= x) {
                x = 4;
                passed = true;
            }
        }
        uint z = 5;
        z += 2;


        while (y!= z) {

            x += 1;
        }
        return x;
    }
    function multipleReentry0x0() public returns (uint, uint) {
        num = 2;
        uint x = 1;
        x = num;
        uint y = 5;
        y = num;
        while (y > 1) {
            y = 4;
        }
        return (5 - num, 6 - num);
    }
    function multipleReentry2() public returns (uint, uint, uint, uint, uint) {
        num = 2;
