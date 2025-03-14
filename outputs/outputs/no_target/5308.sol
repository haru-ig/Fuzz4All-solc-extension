pragma solidity ^0.8.0;
contract MutatedExamples8 {
    bytes32 const public constant INVALID_OPERATION = keccak256("Not enough gas");
    function mutated(uint x) external  returns(uint y){
        y = x;
        if (y < 21){
            revert("Value too small");
        }
    }
}
