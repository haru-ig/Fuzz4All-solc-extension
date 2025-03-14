pragma solidity ^0.8.0;
contract MultiPrecision {
    uint256 private lastValue = 0;
    function add(uint256 _location, uint256 _value) internal pure {
        lastValue += _value;
    }
    function substract(uint256 _location, uint256 _value) internal pure {
        lastValue -= _value;
    }
    function multiply(uint256 _location, uint256 _value) internal pure {
        require(_value!= 0, "_value cannot be zero");
        lastValue *= _value;
    }
    function divide(uint256 _location, uint256 _value) internal pure {
        require(_value!= 0, "_value cannot be zero");
        lastValue /= _value;
    }
    function equals(uint256 _location, uint256 _value) internal pure {
        require(_value == lastValue);
    }
}
