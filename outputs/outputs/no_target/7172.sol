pragma solidity ^0.8.0;
contract Counter {
    Counter public counter;
    function setNewCurrent(uint newCurrent) public {
        counter.current = newCurrent;
    }
    function getNewCurrent() public view returns (uint) {
        return counter.current;
    }
}
