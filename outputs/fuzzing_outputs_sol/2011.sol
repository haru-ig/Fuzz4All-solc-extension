pragma solidity ^0.8.0;
contract Mutater8 {
    uint32 internal _value;
    function mutatedFunction() public payable {
        _value = 0;
        mutatedFunctionImpl();
    }
    function mutatedFunctionImpl() public pure {
    }
}
