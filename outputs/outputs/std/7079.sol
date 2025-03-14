pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    function setX() public {
        a = (a ^ (a << 56)) ^ (a ^ (a >> 33)) ^ (a ^ (a << 25)) ^ (a ^ (a >> 46))
        ^(a ^ (a << 37)) ^ (a ^ (a >> 40)) ^ (a ^ (a << 32)) ^ (a ^ (a >> 55))
        ^ (a ^ (a << 11));
    }
    function add() public {
        a = (a + (a << 56)) + (a + (a >> 33)) + (a + (a << 25)) + (a + (a >> 46))
         + (a + (a << 37)) + (a + (a >> 40)) + (a + (a << 32)) + (a + (a >> 55))
         + (a + (a << 11));
    }
}
