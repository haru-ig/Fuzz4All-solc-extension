pragma solidity ^0.8.0;
contract ExceptionMutator {
    uint constant _VALUE = 0;
    uint storedData;
    constructor() {}
    function increment(uint amount) public {
        if (storedData!= _VALUE) {
            throw;
        }
        storedData += amount;
    }
    fallback() external {
        if (storedData!= _VALUE) {
            revert();
        }
        storedData += amount;
    }
}
