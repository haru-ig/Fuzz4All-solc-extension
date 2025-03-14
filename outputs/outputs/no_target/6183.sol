pragma solidity ^0.8.0;
contract MutatedContractV1 is MutatedContractV2 {
    uint public mutatedResult = 0;
    uint constant maxValue = 99;
    uint constant firstValue = minValue;
    uint public firstMutatedResult;

    function test (uint aValue) public pure returns (uint) {
        return aValue >= firstValue && aValue <= maxValue-increment;
    }
    function test2 (uint aValue) public pure returns (uint) {
        return aValue >= firstValue && aValue <= maxValue;
    }
    function test3 (uint aValue) public pure returns (uint) {
        return aValue < nextMaxValue;
    }
    function nextMaxValue() public pure returns (uint) {
        return maxValue+increment;
    }
    function updateAndCheck(uint newValue) public {
        mutate(newValue, increment);
        require(test(newValue) >= firstValue && test(newValue) <= firstValue+maxValue-increment);
    }
    function mutate(uint newValue, uint increment) public {
        firstMutatedResult = newValue;
        mutatedResult += newValue*increment;
    }
    function getFirstMutatedResult() public view returns (uint) {
        return firstMutatedResult;
    }
    function getMutatedResult() public view returns (uint) {
        return mutatedResult;
    }
}
contract MutatedContractV1Test is MutatedContractV1 {
    constructor(uint aValue) {
        firstMutatedResult = aValue;
        mutatedResult = firstMutatedResult * (maxValue-increment);
    }
    function test(uint aValue) public view override returns(uint) {
        return aValue >= firstValue && aValue <= firstValue+maxValue-increment;
    }
    function test(uint aValue) public view override returns(uint) {
        return aValue >= firstValue && aValue <= maxValue;
    }
    function test(uint aValue) public view override returns(uint) {
        return aValue < nextMaxValue;
    }
}
