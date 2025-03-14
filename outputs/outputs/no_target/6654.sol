pragma solidity ^0.8.0;
contract Mutated7 {
    function add(uint x) public pure returns (uint) {
        x = x + 10;
        return x;
    }
}
