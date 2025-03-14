pragma solidity ^0.8.0;
contract MutatedArrayLength {
    uint public arrayLength;
    function() {
        arrayLength++;
    }
}
