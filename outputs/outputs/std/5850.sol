pragma solidity ^0.8.0;
contract Mutated19 {
    function mutated19(uint244 a) public pure returns (uint244) {
        (uint244 b, ) = (a, uint244(2));
        return b;
    }
}
