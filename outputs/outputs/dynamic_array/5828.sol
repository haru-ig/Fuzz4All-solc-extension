pragma solidity ^0.8.0;
contract Test1804G {

        uint8 public m1;
        uint128 public m2;
        uint32 public m3;
        uint64 public m4;
        bool public m5;
        bool public m6;
        bool public m7;
        bool public m8;
        bool public m9;
        bool public m10;
        bool public m11;
        bool public m12;
        bool public m13;
        bool public m14;
        bool public m15;
        bool public m16;
        bool public m17;
        bool public m18;
        bool public m19;
        bool public m20;

        address public receiverA;
        address public receiverB;
        address public receiverBC;
    constructor() public {
        m1 = 1;
        m2 = 2;
        m3 = 4;
        m4 = 2;
        m5 = false;
        m6 = true;
        m7 = true;
        m8 = false;
        m9 = false;
        m10 = false;
        m11 = false;
        m12 = false;
        m13 = false;
        m14 = true;
        m15 = true;
        m16 = true;
        m17 = false;
        m18 = false;
        m19 = true;
        m20 = true;
        receiverA = msg.sender;
        receiverB = address(0);
        receiverBC =  address(this);
    }
    function setX(uint8 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint8) {return x;}
}
