pragma solidity ^0.8.0;

contract Mutated_5_1 {
    function sum3(uint x, uint y) public pure returns (uint) {
        return x + y;
    }

    uint x;
    uint y;
    uint z;

    constructor (uint _x, uint _y) {
        x = _x;
        y = _y;
    }

    function run() public pure returns (uint) {
        z = x + y;
        x = 1;
        return sum3(x, y);
    }
}
