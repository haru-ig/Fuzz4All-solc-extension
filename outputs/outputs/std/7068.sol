pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd6 {
    uint256 a;
    function setX() public {
        a = a + 6;
    }
    function add() public {
        a = a ^ (a << 55);
        a = a ^ (a >> 15);
        a = a ^ (a << 19);
        a = a ^ (a >> 50);
        a = a ^ (a << 28);
        a = a ^ (a >> 44);
        a = a ^ (a << 13);
    }
}
