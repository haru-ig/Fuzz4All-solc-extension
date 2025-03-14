pragma solidity ^0.8.0;
contract Mutated {
    uint constant a = 0;
    uint constant b = 512 * 493 - (a - 32564) * 286;
}
contract ArrayMutated;
contract MutatedArray {
    uint256 public a;
    uint256 public b;
    uint256 internal c;
    uint256 public d;
    function test() public returns (uint256 r) {
        r = c;
        r = c + b;
        r = c * b;
    }
}
