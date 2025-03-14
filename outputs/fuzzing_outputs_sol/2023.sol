pragma solidity ^0.8.0;
contract Mutater10 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        require(value!= 0, "Zero value");
        _value = value;
        mutatedFunctionImpl(value);
    }
    function mutatedFunctionImpl(uint32 value) public pure {
        if (value <= 0) {
            revert();
        }
    }
}
