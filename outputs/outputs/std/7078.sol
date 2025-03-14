pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd4 {
    uint256 a;
    function setX() public {
        a = a + 4;
    }
    function add() public {
        a = a ^ (a << 28);
        a = a ^ (a >> 44);
        a = a ^ (a << 37);
        a = a ^ (a >> 28);
    }
}
