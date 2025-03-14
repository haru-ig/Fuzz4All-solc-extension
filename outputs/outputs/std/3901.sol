pragma solidity ^0.8.0;
contract TestArrayMutator {
    uint256[] memory numBalls;
    constructor () {
        numBalls.push(1);
        numBalls = arrayMutator(0);
        numBalls = arrayMutator(1);
        numBalls = arrayMutator(1);
    }
    function arrayMutator(uint256 input) public pure returns (uint256[] memory) {
        return [input];
    }
}
