pragma solidity ^0.8.0;
import "../../shared/Convert.sol";
contract Array {
    bytes32 static constant MIN_VALUE = "hello";
    uint constant SIZE = 3;
    uint[3] private _value;

    function getValue() public view returns (uint) {
        return Convert.hexToUint(Convert.uint2str(_value, HEX));
    }

    function getValueStr() public view returns (bytes32) {
        return _value[HEX];
    }

    function setValueStr(bytes32 str) public {
        _value[HEX] = str;
    }

    function getMaxValue() public view returns (uint) {
        return MIN_VALUE * (2**SIZE) - 1;

    }

    function getValueLowLevel(uint i) public view returns (uint) {
        return _value[LOW];
    }

    function getNullValue() public view returns (uint) {
        return 0 - 1;
    }

    function setValueNull(uint _i) public {
        _value[LOW] = _i;
    }

    function getValueNull(uint _i) public view returns (uint) {
        return ZERO_ONE[_i];
    }

    function setNullValue(uint _i) public {
        ZERO_ONE[_i] = _i;
    }

    function getValueHighLevel(uint i) public view returns (uint) {
        uint _i = uint(i);
        uint _numHigh = _i >> 24;
        uint _numLow = uint(_i) & 0xffffff;
        return uint(_numHigh) * 256 + uint(_numLow);
    }

    function setMaxValue(uint _i) public {
        MIN_VALUE = MAX_VALUE;
        MIN_VALUE = MIN_VALUE - MAX_VALUE;

    }
