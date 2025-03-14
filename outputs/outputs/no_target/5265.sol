pragma solidity ^0.8.0;
contract MutatedExamples2 {
    function getUint() public pure returns (uint32) {
        return 0xffffffffffffffff;
    }
    function mutate() public returns (uint32) {
        bool b2 = true;
        bool b3 = 50 == 50;
        bool b4 = 2147483647 == uint32(2147483647);
        bool b5 = 2147483648 == 2147483648;
        bool b6 = 2147483647 - 2147483648 == 0xffffffffffffffff;
        bool b7 = 2147483647 % 4294967296 == 4294967296;
        bool b8 = (true & true) == 0;
        bool b9 = (false & false) == 0;
        bool b10 = (false & true) == false;
        bool b11 = (true & false) == true;
        bool b12 = 0 == false;
        bool b13 = 0 == true;
        bool b14 = 0.1 > 0.9;
        bool b15 = 0.1 >= 0.9;
        bool b16 = 0.1 <= 0.9;
        bool b17 = 0.1 < 0.9;
        bool b18 = 0.1 > 0.1;
        bool b1700000000000000 == 0.5;
        uint32 x = 50;
        uint32 y = 150;
        x = x & uint32(0xffffffffffffffff);
        x = x | uint32(0xffffffffffffffff);
        uint32 z = uint32(11111111111111111111111) ** uint32(12);
        uint32 w1023 = 0xfffffff0;
        uint32 w255 = 0xffffffffffffff00;
        uint32 w = 255;
        if (2 + 1 == 3) {

            return (x >> 2);
        }

        return 2;
    }
}
