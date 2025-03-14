pragma solidity ^0.8.0;
contract HelloWorld1 {
    uint value;
    function setResult(uint newValue) public
    {
        uint old = value;
        value = newValue;
        emit MessageWithOldAndNewValue(newValue, old);
    }
    event MessageWithOldAndNewValue(uint oldValue, uint newValue);
}
