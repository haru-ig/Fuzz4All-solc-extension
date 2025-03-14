pragma solidity ^0.8.0;
contract OptimizelyExample107{
    uint internal value1;
    constructor() public {
        value1 = 1^1 ^ (1-1);
    }
}

pragma solidity 0.8.0;
contract OptimizelyExample200{
    uint internal value1;
    constructor() public {
        value1 = 1 ^ (1 << 1) ^ (2 << (2 * 5 -1));
    }
}
%run optimizely-example-compiler
%run test-optimizely-example107
%run test-optimizely-example200
%run test-optimizely-example206
