pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract Mutator {
    function Mutate(uint a) public pure returns (uint) {
        uint mutated;
        assembly {
        mutated := a
        }
    }
}
