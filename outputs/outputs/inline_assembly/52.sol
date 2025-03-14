pragma solidity ^0.8.0;
contract C {
    bool public hasMutated;
    uint8 internal initialNumber = 1;
    uint8 number;
    constructor () {
        for(uint8 i = 0; i < 10; i++) {
            initialNumber += 1;
        }
    }

    function _incrementNumberC() internal {
        uint8 result = initialNumber + number;
        number = result;
        hasMutated = true;
    }

    function isMutated() public view returns(bool hasMutated) {
        hasMutated = hasMutated ||!initialNumber + 1 == number;
        return hasMutated;
    }
}
