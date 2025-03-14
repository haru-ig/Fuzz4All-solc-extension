pragma solidity ^0.8.0;
contract OptimizelyExample107Mutator{
    uint public x;
    constructor() public {
        x = 1 & (((1<<1) + 255) | (1>>1) | (1 << (1+255)));
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample107Mutator{
    uint public x;
    constructor() public {
        x = 1 ^ (256 + 16);
    }
}
