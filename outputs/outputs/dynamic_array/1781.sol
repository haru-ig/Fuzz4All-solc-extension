pragma solidity ^0.8.0;
contract OverridingFixedSizeArray {
    mapping(uint256 => uint256) public nonFixedValues;
    constructor() {
        nonFixedValues[0] = 0;
        nonFixedValues[1] = 0;
    }
    function nonFixedAddOne(uint256 value) public returns (uint256) {
        nonFixedValues[1] += value;
        return nonFixedValues[1];
    }
    function nonFixedAddOneNoInitAndCopy(uint256 value) public returns (uint256) {
        nonFixedValues[0] += value;
        return nonFixedValues[0];
    }
    function nonFixedSetOne(uint256 initialValue, uint256 value) public {
        nonFixedValues[value] = initialValue;
    }
    function nonFixedSetOneAndCopy(uint256 initialValue, uint256 value) public {
        nonFixedValues[value - 1] = initialValue;
    }
}
