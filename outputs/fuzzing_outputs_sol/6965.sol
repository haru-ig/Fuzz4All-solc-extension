pragma solidity ^0.8.0;
contract Mutator {
    function mutate(uint x) public pure returns (uint) {
        return x*x;
    }
    function xPlusY(uint x) public pure returns (uint) {
        return x + x;
    }
}
