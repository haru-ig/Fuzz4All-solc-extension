pragma solidity ^0.8.0;
contract ArrayExample {
    uint256 a;
    uint256 a1;
    uint a2;
    uint a3;
    uint a4;
    uint256 a5;
    uint b;
    uint b1;
    uint256 b2;
    uint256 c;
    mapping(uint256 => uint256) c5;
    function setX() public {
        setOneToA();
        setOneToB();
        setOneToB1();
        setOneToB2();
        setOneToC();
        setOneToC5();
    }
    function setOneToA() public {
        a = 0;
    }
    function setOneToB() public {
        a1 = 0;
    }
    function setOneToB1() public {
        b1 = 0;
    }
    function setOneToB2() public {
        c = 1;
    }
    function setOneToC() public {
        c = c + (c << 32);
    }
    function setOneToC5() public {
        uint256 a1 = 0;
        a1 = a1 + (a1 << 32);
    }
}
