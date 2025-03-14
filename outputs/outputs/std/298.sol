pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract Mutator {

    constructor(uint a) public {
        uint mutated;
        uint newuint;
        assembly {
        mutated := a
        newuint := add(mutated, 1)
        }

    }
    function canMutate(address _caller,uint _uint) public pure returns (bool){
        return authorized[_caller][(uint)_uint];
    }
}
