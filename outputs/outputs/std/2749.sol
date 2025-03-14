pragma solidity ^0.8.0;
library Array
{
    uint[] a;
    bytes32 x;
    constructor () { a[0] = a[1] = 1; b = "Hello World"; }
    uint getMin() view public returns (uint) {
        return a[0];
    }
    uint getMax() view public returns (uint) {
        return a[1];
    }
    uint sum() view public returns (uint) {
        return a[0] + a[1];
    }
    bytes32 getFirst() view public returns (bytes32) {
        return x;
    }
    string memory b;
    uint[] public array = [a[1], a[0]];
}
