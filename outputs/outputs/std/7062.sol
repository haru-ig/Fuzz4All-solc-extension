pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd4 {
    uint8 x;
    function setX() public {
        x ^= x >>> 1;
    }
    function add() public {
        x ^= x >> 1;
        x ^= x >> 7;
        x ^= x >> 17;
        x ^= x >> 45;
    }
}
