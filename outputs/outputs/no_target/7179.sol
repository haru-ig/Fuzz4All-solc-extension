pragma solidity ^0.8.0;
contract MutatedCounter{
    Counter public counter;
    function setOne() public {
        uint lastNumber = counter.current;
        uint lastNumberChanged = lastNumber + 1;
        counter.setNewCurrent(lastNumberChanged);
    }
    function setTwo() public {
        uint lastNumber = counter.current;
        uint lastNumberChanged = lastNumber + 1;
        lastNumberChanged = lastNumberChanged - 1;
        lastNumber = lastNumberCurrent;

        counter.setNewCurrent(lastNumberChanged);
    }
}
