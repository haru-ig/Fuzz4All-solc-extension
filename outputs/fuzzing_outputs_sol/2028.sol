pragma solidity ^0.8.0;
contract Mutater11 {
    uint256 internal _value;
    constructor() { }
    function mutatedFunction(uint256 value) public {
        require(value!= 0, "Zero value");
        _value = value;
    }
    function mutatedFunctionImpl(uint256 value) public pure {
        require(value > 0, "Negative value");
    }
}
