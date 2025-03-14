pragma solidity ^0.8.0;
contract Example11 {
    function add(uint x, uint y) public pure returns (uint) {
        uint sum = 0;
        sum += x;
        sum += y;
        x = x + y;
        x = x + y + sum;
        return x;
    }
}
contract Example12 {
    uint public storedData;

    constructor() { this.storedData = 42; }
}
