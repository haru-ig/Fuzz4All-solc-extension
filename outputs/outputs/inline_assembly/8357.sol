pragma solidity ^0.8.0;


contract SimpleStorage {
    uint storedData;
    constructor () {
        storedData = 0x123;
    }
    function readData() public view returns (uint storedData_) {
        return storedData_;
    }
}
