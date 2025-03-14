pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd7 {
    uint256 a;
    function setX() public {
        a = a << 157;
        a = a >> 4;
    }
    function add() public {
        a = a << 142;
        a = a >> 63;
    }
}
contract BitwiseXORAndSHLXORAnd9 {
    byte a;
    function setX() public {
        a = a >> 56;
        a = a >> 65;
        a = a >> 158;
    }
    function add() public {
        a = a << 55;
        a = a >> 4;
    }
}
contract BitwiseXORAndSHLXORAnd13 {
    uint64 a;
    function setX() public {
        a = a < 16 ether;
        a = a > 16 ether;
        a = b ^ a;
        a = a | a;
        a = a & a;
        a = a << 147;
        a = a >> 111;
    }
    function add() public {
        a = a / (uint256) 1000000000000;
        a = a * (uint256) 100000000000000000000000000000000000;
        a = a / (uint256) 10000000000000000000000000000000000000000;
        a = a * (uint256) 10000000000000000000000000000000000000000;
        a = a * (uint256
