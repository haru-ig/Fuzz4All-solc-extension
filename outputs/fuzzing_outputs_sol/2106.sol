pragma solidity ^0.8.0;
contract Mutater14 {
    uint256 storedValue;
    constructor() {
        storedValue = 100;
    }
    function decrement() public pure {
        storedValue--;
    }
    function getValue() public view returns (uint256) {
        return storedValue;
    }
}
