pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint value;
    function setResult(uint newValue) public
    {
        uint old = value;
        value = 212;
        emit MessageWithOldAndNewValue(newValue, old);
    }
    event MessageWithOldAndNewValue(uint oldValue, uint newValue);
}
pragma solidity ^0.8.0;
contract HelloWorld3 {
    uint value;
    function setResult(uint newValue) public
    {
        uint old = value;
        value = 2*10**20;
        emit MessageWithOldAndNewValue(newValue, old);
    }
    event MessageWithOldAndNewValue(uint oldValue, uint newValue);
}
