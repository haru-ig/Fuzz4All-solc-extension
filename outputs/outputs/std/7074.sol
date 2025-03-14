pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd8 {
    uint256 a;
    function setX() public {
        a = a + 8;
    }
    function add() public {
        a = a ^ (a << 56);
        a = a ^ (a >> 33);
        a = a ^ (a << 25);
        a = a ^ (a >> 46);
        a = a ^ (a << 37);
        a = a ^ (a >> 40);
        a = a ^ (a << 32);
        a = a ^ (a >> 55);
        a = a ^ (a << 11);
    }
}
