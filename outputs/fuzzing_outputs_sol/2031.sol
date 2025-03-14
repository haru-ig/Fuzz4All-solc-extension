pragma solidity ^0.8.0;
contract Mutater1 is Mutater0 {
    function mutatedFunction(uint32 value) public {
        _value = value;
        Mutater0(address(this)).mutatedFunction(value);
        mutatedFunctionImpl(value);
    }
}
