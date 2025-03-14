pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint[] values;
    function addValue(uint newValue) public
    {
        values.push(newValue);
    }
    function update() public
    {
        values[0] = 120;
    }
    uint[2100] internal newValues;
    uint[2100] internal oldValues;
    uint[2100] previousValues;
    uint number;
    function getAddress() public -> address
    {
        return address(this);
    }
    modifier value(uint newValue){
        uint oldValue = newValues[number];
        newValues[number] = newValue;
        previousValues[number] = oldValue;
        number++;
        emit MessageWithOldAndNewValue(oldValue, newValue);
        value = newValue;
        }
    function printValue() public value(0) {
    }
    event MessageWithOldAndNewValue(uint oldValue, uint newValue);
}
