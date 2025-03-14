pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract Mutator {
    constructor() public {
        uint mutated;
        assembly {
            let foo := 259923593225435366


            mutated := foo
            }
    }
}
