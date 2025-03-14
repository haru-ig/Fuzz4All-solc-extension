pragma solidity ^0.8.0;
contract Main {

    static uint storedValue = 11;
    constructor () { storedValue = 5;}
    function getStoredValue () public view returns (uint) {
        return storedValue;
    }
}
