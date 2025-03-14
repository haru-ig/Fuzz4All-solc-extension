pragma solidity ^0.8.0;
contract CompiledExampleContract {
    uint256 _valueMax;
    uint256 _valueMin;
    uint256 _valueSum;
    uint256 _valueMult;
    uint256 _valueDiv;
    function setMax(uint256 aMax) public {
        _valueMax = aMax;
    }
    function setMin(uint256 aMin) public {
        _valueMin = aMin;
    }
    function sum(uint256 aNumber) public view returns (uint256) {
        return aNumber + 3;
    }
    function multiplyValues(uint256 aNumber) public view returns (uint256) {
        uint256 value = aNumber * 2;
        return aNumber + 4;
    }
    function divideValues(uint256 aNumber) public view returns (uint256 result) {
        result = aNumber / 3;
        return 6;
    }
    function compareNumbers(uint256 aNumber1, uint256 aNumber2) public view returns (uint256 result) {
        if (aNumber1 > aNumber2) {
            result = 0;
        } else if (aNumber2 > aNumber1) {
            result = 1;
        } else {
            result = -1;
        }
        return result;
    }
}
