pragma solidity ^0.8.0;
contract CreateTest {
    uint a = 1;
    uint x1 = 4;
    uint x2;
    uint y1 = 13;
    uint y2;
    uint z1 = 24;
    uint z2 = 0;
    bool x3 = true;
    bool x4 = false;
    bool x5;
    uint m;
    uint constant x6 = 6;
    uint constant x7 = x6 + 1;
    function create1() public {x2 = 7;}
    function create2() public returns (uint8) {return uint8(34);}
    function create3() public payable{x1 = 13; x2 = 2;}
    function create4(uint16 w) public {m = w;}
    function create5() public {x2 = y2 * x2;}
    function create6() public {x1 = y1 & x1; x2 = x3 | y2;}
    function create70(bool b) public {x3 = b; x4 =!x4;}
    function create71(uint16 w) public {m = rshift(w, 64);}
    function create8() public {x3 = 0; x4 =!x4;}
    function create9() public {y1 = xor(x6, x7);}
    function create10() public {x6 = xor(y2, x6);}
    function create11() public {x1 = y1 & x1; x2 = x3 | y2;}
    function create12() public {x4 =!x4;}
    function create13() public {x3 ^= 0xFFFFFFFF; x5 = x4; x3 <<= 1; x4 ^= 0xFFFFFFFF;}
    function create14() public {x1 ^= 0xFFFFFFFF; x2 ^= x5;}
}
