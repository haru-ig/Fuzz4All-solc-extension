pragma solidity ^0.8.0;
contract Mutate2 {
    uint stored = 0;
    function Mutate(uint a, uint b) public pure returns (uint) {
        return a - b;
    }
    function Mutate2(uint a, uint b, uint value) public pure returns (uint) {
        stored = a + b + value;
        return stored;
    }
}
