pragma solidity ^0.8.0;
contract Counter {
    uint internal current;

    function setNewCurrent(uint newCurrent) internal {
        current = newCurrent;
    }
}
