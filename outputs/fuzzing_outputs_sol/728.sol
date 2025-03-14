pragma solidity ^0.8.0;
contract StorageMutator {
    uint storedData;
    constructor(uint _initialValue) {
        storedData = _initialValue;
    }
    function increment(uint amount) public {
        storedData += amount;
    }
}
