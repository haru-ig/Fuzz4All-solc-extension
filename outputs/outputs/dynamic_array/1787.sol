pragma solidity ^0.8.0;
contract OverflowingFixedSizeArray {
    mapping(uint256 => uint256) public fixedValues;
    function fixedAddOne(uint256 value) public returns (uint256) {
        require(uint256(0x0) < value, "FixedSizeArrayAddOverflowsOverflows");
        fixedValues[0] += value;
        return fixedValues[0];
    }
    function fixedAddOneNoInitAndCopy(uint256 value) public returns (uint256) {
        require(uint256(0x0) < value, "FixedSizeArrayAddOverflowsOverflows");
        fixedValues[0] += value;
        return fixedValues[0];
    }
    function fixedSetOne(uint256 initialValue, uint256 value) public {
        fixedValues[value] = initialValue;
    }
    function fixedSetOneAndCopy(uint256 initialValue, uint256 value) public {
        fixedValues[value - 1] = initialValue;
    }
}

contract DynamicArrayTest  {
    using OverridingFixedSizeArray for uint256[];
    mapping(uint256 => uint256) public values;
    function arrayAddOne(uint256 value) public {
        values[0] += value;
    }
    function arrayAddOneNoInitAndCopy(uint256 value) public {
        values[1] += value;
    }
    function arraySetOne(uint256 initialValue, uint256 value) public {
        require(uint256(0x0) < value, "FixedSizeArrayAddOverflowsOverflows");
        values[value] = initialValue;
    }
    function arraySetOneAndCopy
