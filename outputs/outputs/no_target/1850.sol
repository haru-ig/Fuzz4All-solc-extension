pragma solidity ^0.8.0;
contract Mutate15 {
    uint128 public x;
    constructor() public {
        x >>= 3;
    }
}

pragma solidity ^0.8.0;
contract Mutate15 {
    uint128 public x;
    uint32 public y;
    constructor() public {
        x >>= 2;
        x ^= x;
        x *= 11;
        x >>= 5;
        x &= y;
        x -= x;
        y ^= y;
    }
}
