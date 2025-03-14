pragma solidity ^0.8.0;
contract Mutate15 {
    int32 public x;
    int24 public constant y = 10;
    constructor(int24 s) public {
        x += s;
        x -= s;
        x *= s;
        x /= s;
        x %= s;
        x <<= s;
        x >>= s;
        x &= s;
        x ^= s;
        x |= s;
        x &= s;
    }
}
