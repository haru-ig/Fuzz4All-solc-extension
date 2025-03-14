pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent2 {
    int32 x = -3;
    uint32 f(int32 x) view public returns (uint32){
        return 3 * x + a;
    }
    int32 a;
    constructor(uint8 n){
        a = uint32(n);
    }
}
