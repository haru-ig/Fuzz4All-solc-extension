pragma solidity ^0.8.0;
contract Mutater6 {
    uint8 internal _value;
    function mutatedFunction(uint8 value) public {
        _value = value;
        receiveTransfer(value);
    }
    mapping(uint8 => bool) public success;
    function receiveTransfer(uint8 value) public {
        if (success[value]) revert();
        success[value] = true;
    }
    function revertTransfer(uint8 value) public { revert(); }
}
