pragma solidity ^0.8.0;
contract Mutate_0001 {
    uint256 public b;
    function f(uint256 h) public {
        uint256 v = b + a(h);
        v = b + e0e;
        v = b + e1[1](h);
        v = b + e1[2](h);
    }
    uint8 internal constant one = 0x1;
    uint254 internal constant e0e = 0x100;
    uint[1]private e1;
    constructor(uint256 a) public { require(a >= 0, "negative"); }
}
