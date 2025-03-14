pragma solidity ^0.8.0;
contract MutatedContract {
    uint public constant increment = 1;
    function mutatedFunction() public view returns (uint) {
        mutatedResult = 0;
        uint retVal = minValue;
        for( ; retVal <= maxValue; retVal = retVal + increment) {
            uint oldRetVal = mutatedResult;
            mutatedResult = retVal;
            retVal = oldRetVal + increment;
        }
        return retVal;
    }
}
