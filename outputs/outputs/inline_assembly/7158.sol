pragma solidity ^0.8.0;

contract OptimizelyExample108 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
        value >>= 2;
        value <<= 1;
        uint testResult = 0xFF << 32;

        value ^= 1;
        value = 0;

        value &= testResult;
        value >>= 2;

        value <<= 1;
        value &= 1;
    }
}

pragma solidity ^0.8.0;

contract OptimizelyExample109 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
        value >>= 2;
        value <<= 1 - 1;
        value ^= 1;
        value >>= 22;

        value <<= 1;
        value &= 1;
    }
}
