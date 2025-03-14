pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample80 {
    uint internal counter;
    constructor() {
        counter = 5;
    }
    function increment(uint x) public {
        counter = counter + x;
        uint y = counter;
    }
    function getCounter(uint x) public view returns (uint) {
        return counter + x;
    }
}
