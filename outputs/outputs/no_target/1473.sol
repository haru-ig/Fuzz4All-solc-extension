pragma solidity ^0.8.0;
contract Semantic0031 {
    function same0001() public pure {
        uint8 a;
        a = 0x01;
        uint8 d1;
        uint8 e1;
        uint8 b = a;
        uint8 c;
        uint8 f = uint8(uint8(0x0001));
    }

    function same0002() public pure {
        uint8 a;
        bool x;
        bool x0;

          x = false;




        x0 = false;
        if (false == x) {
            x0 = false;
        }
        uint8 b = uint8(x);
        uint8 d = uint8(x >> 3);
    }
}
