pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract Mutator {
    constructor(uint a) public {
        uint mutated;
        assembly {

        mutated := a
        }
    }
}
