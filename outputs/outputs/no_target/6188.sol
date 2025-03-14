pragma solidity ^0.8.0;
contract MutatedContract {
    uint public mutatedResult = 0;
    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant maxValue = 99;
    function getMutatedResult() public view returns(uint) {
        mutatedResult = mutatedResult + increment;
        return mutatedResult;
    }
}
