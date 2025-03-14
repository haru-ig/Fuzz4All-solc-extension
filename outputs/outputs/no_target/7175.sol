pragma solidity ^0.8.0;
contract ModdedCounter is Counter {
    function setNewCurrent(uint newCurrent) internal {
        current *= 2;
    }
}
