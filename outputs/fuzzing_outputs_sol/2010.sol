pragma solidity ^0.8.0;
contract Mutater8 {
    uint64 internal _value;
    function mutatedFunction(uint64 value) public pure {
        revert();
    }
    function mutatedFunctionImpl(uint64 value) public pure {
        _value = value;
        mutatedFunctionImpl(value);
    }
}
