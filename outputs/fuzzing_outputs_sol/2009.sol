pragma solidity ^0.8.0;
contract Mutater7 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public payable {
        _value = value;

        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) public pure {
        revert();
    }
}
