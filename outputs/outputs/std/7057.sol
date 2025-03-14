pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd3 {
    uint256 a;
    function setX() public {
        a = a + 3;
    }
    function add() public {
        a ^= a << 3;
        a ^= a >> 22;
        a ^= a << 4;
        a ^= a >> 16;
        a ^= a << 16;
        a ^= a >> 55;
        a = a >> 22;
    }
}
