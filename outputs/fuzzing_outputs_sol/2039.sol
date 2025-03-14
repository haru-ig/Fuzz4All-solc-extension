pragma solidity ^0.8.0;
contract Mutater2 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public {
        _value = value;
        require(value <= 0 || value!= _value, "Error");
        IMutater2(address(this)).mutatedFunction(value);
    }
}
