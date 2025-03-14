pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    uint256 x;
    function setX() public {
        x = (a ^ (a << 56)) ^ (a ^ (a >> 33)) ^ (a ^ (a << 25)) ^ (a ^ (a >> 46))
        ^(a ^ (a << 37)) ^ (a ^ (a >> 40)) ^ (a ^ (a << 32)) ^ (a ^ (a >> 55))
        ^ (a ^ (a << 11));
        a = x;
    }
    function add() public {
        a = (a + (x ^ (a << 56))) + (a + (x ^ (a << 33))) + (a + (x ^ (a << 25))) + (a + (x ^ (a << 46)))
         + (a + (x ^ (a << 37))) + (a + (x ^ (a << 40))) + (a + (x ^ (a << 32))) + (a + (x ^ (a << 55)))
         + (a + (x ^ (a << 11)))
    }
}
