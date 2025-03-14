pragma solidity ^0.8.0;
contract Mutater9 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;

    }
    function mutatedFunctionImpl(uint32 value) public pure {
        revert();
    }
}
