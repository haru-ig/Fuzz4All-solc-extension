pragma solidity ^0.8.0;
contract Mutate16 {
    uint256 public y;
    constructor () {
        uint256 x;
        bool z;
        (x, z) = (1, true);
    }
}
contract Mutate17 {
    uint256[] public array;
    uint256 public y;
    void myFunction(uint256 a, uint256 b) {
        uint256 x;
        uint256 z;
        (x, z) = (a, b);
    }
    constructor () {
        uint256 x;
        uint256 z;
        (x, z) = (1, true);
    }
}
