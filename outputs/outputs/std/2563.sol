pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint256 constant value = 123;
    uint256 public value2;
    function setResultTwo(uint256 newValue2) public
    {
        uint256 oldValue2;
        oldValue2 = value2;
        value2 = newValue2;
    }
    function getResultTwo() public
    {
        return value2;
    }
   emit MessageWithOldAndNewValue(oldValue2, value2);
}

pragma solidity ^0.8.0;
contract HelloWorld3 {
    uint myInt;
    function setValue(uint256 newValue) public
    {
        uint256 oldValue;
        oldValue = myInt;
        myInt = newValue;
        emit MyEvent(newValue, myInt);
    }
    function getMessageWithOldInt() public
    {
        return myInt;
    }
    event MyEvent(uint oldValue, uint newValue);
}

pragma solidity ^0.8.0;
contract HelloWorld4 {
    bool myInt;
    function SetValue(uint256 newValue) public
    {
        bool oldBool = myInt;
        myInt = newValue > 1? false : true;
        emit MyEvent(oldBool, myInt);
    }
    function GetMessageWithOldBool() public
    {
        return myInt;
    }
    event MyEvent(bool oldValue, bool newValue);
