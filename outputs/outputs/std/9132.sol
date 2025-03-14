pragma solidity ^0.8.0;
contract Semantics {
    uint256 public _value1;
    uint256 public _value2;
    function increment() public {
        uint256 val1 = _value1;
        uint256 val2 = _value2;
        _value1++;
        _value2 -= _value1;
        _value2 += _value1;
        emit UpdatedValues(val1, val2, _value1, _value2);
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
    function getValues() public view returns (uint256, uint256) {
      return (uint256(0x1234567890abcdef), _value1);
    }
    function getMinValue(uint256 x, uint256 y) public pure returns (uint256) {
      return x < y? x : y;
    }
    function getMaxValue(uint256 x, uint256 y) public pure returns (uint256) {
      return x < y? y : x;
    }
    uint8 constant E = 8;
    uint256 constant BASE_BASE_8_DIV_10 = 256;
    uint256 constant BASE_BASE_8_MASK = BASE_BASE_8_DIV_10 - 1;
    uint256 constant BASE_0 = 0x00000000000000000000
