pragma solidity ^0.8.0;
contract OptimizelyExample107 {
    uint internal value = 1 << 30;
    constructor(){
        value >>= 2;
        value <<= 1;
        value &= 1;
        value ^= 1;
    }
}
