pragma solidity ^0.8.0;
contract OptimizelyExample107 {
    uint internal value = 1 << 30;

    constructor(){
        value >>= 2;
    }

    function mutateValue() public returns (uint) {
        value <<= 2;
        return value;
    }
}
