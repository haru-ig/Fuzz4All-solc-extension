pragma solidity ^0.8.0;
contract Mutater6 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public payable {
        _value = value;
        emit LogValue(_value);
    }
    function Logs(uint32 value) public pure {
        emit LogValue(value);
    }
    event LogValue(uint32 value);
}
