pragma solidity ^0.8.0;
contract Mutater1 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;
        require(value <= 0 || value!= _value, "Error");
        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) public pure {
        if (value <= 0) {
            revert();
        }
    }
}
