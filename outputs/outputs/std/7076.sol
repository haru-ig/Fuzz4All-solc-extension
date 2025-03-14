pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd9 {
    uint256 a;
    function setX() public {
        a = (a + 9) ^ (a << 25);
        a = (a + 9) ^ (a >> 37);
        a = (a + 9) ^ (a << 33);
        a = (a + 9) ^ (a >> 46);
        a = (a + 9) ^ (a << 32);
        a = (a + 9) ^ (a >> 56);
    }
    function add() public {
        a = a + 9;
    }
}
