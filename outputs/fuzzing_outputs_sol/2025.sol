pragma solidity ^0.8.0;
contract Mutater9 {
    uint32 internal _value;

    function mutatedFunction(uint32 value) public {
        require(isPayable(value), "payable");
        _value = value;
        mutatedFunctionImpl(value);
    }

    function mutatedFunctionImpl(uint32 value) public pure {
        if (value <= 0) {
            revert();
        }
    }

    function isPayable(uint32 value) public pure returns (bool) {
        return value <= 0;
    }
}
