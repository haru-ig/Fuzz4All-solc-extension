pragma solidity ^0.8.0;

contract Counter {
    uint public current;
    function setNewCurrent(uint newCurrent) public {
        current = newCurrent;
    }
}
