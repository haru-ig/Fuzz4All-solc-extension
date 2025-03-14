pragma solidity ^0.8.0;
contract Mutater6 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public payable {
        _value = value;
        receiveTransfer(value);
    }
    function receiveTransfer(uint32 value) public pure {
        revert();
    }
}
