pragma solidity ^0.8.0;
contract Checked {
    uint public value;
    uint public storedValue;
    uint public errorValue;
    event SomeEvent (uint x);
    constructor ()
        {
            value = 1;
            storedValue = value;
            errorValue = value;
            emit SomeEvent(value);
        }
    function add() public checked returns (uint) {
        return add(value);
    }
    function add(uint a) public checked returns(uint) {
        if (a < 0)
            revert("Negative addition. Must be non-negative");
        uint b = storedValue;
        storedValue = b + value;
        emit SomeEvent(a);
        return a + b;
    }
    function addWithOverflowException(uint a) public checked returns(uint) {
        if (a < 0)
            errorValue += a;
        else
            errorValue = 0;
        errorValue++;
        uint b = storedValue;
        storedValue = b + value;
        emit SomeEvent(a);
        return a + b;
    }
}
