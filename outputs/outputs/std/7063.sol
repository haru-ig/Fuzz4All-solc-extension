pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd5 {
    uint256 a;
    function setX() public {
        a = a + 5;
    }
    function add() public {
        a ^= a << 55;
        a ^= a >> 15;
        a ^= a << 19;
        a ^= a >> 50;
        a ^= a << 28;
        a ^= a >> 44;
        a ^= a << 13;
        a ^= a >> 20;
        a = a >> 5;
    }
}
