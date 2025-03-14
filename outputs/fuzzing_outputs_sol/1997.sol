pragma solidity ^0.8.0;
contract Mutater7 {
    uint32 internal _value;
    function mutatedFunction(uint32 value) public pure {
        _value = value;
        uint32 result = _value;
        emit Transfer(msg.sender, msg.sender, result);
    }
    event Transfer(address indexed from, address indexed to, uint32 value);
}
