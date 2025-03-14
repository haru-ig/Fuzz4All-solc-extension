pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd6 {
    uint256 a;
    function setX() public {
        a = a + 6;
    }
    function add() public {
        a ^= a << 68;
        a ^= a >> 47;
        a ^= a << 33;
        a ^= a >> 62;
        a ^= a << 25;
        a ^= a >> 18;
        a ^= a << 15;
        a ^= a >> 52;
        a ^= a << 9;
        a ^= a >> 52;
    }
}
