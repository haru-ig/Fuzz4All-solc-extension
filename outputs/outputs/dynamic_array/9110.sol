pragma solidity ^0.8.0;
contract MyArray {
  uint8 public array[3] = [6,8,10];
  bool internal _equal[2][3] = [true, false, false];
  uint8 private _value;
  uint8 internal constant EMPTY_VALUE = 0;
  constructor(uint8 _value) public  {
      array[2] = _value;
      array[3] = _value;
      _equal[0][2] = true;
  }

  function set_value(uint8 _value) public {
      array[3] = _value;
      array[2] = EMPTY_VALUE;
      _equal[0][2] = false;
  }

  function _get_value() private view returns (uint8) {
    return array[2];
  }

  modifier is_empty {
      require(_get_value() == EMPTY_VALUE, "MyArray: is_empty");
      _;
  }

  modifier value_equals_to(uint8 _value) {
      require(_equal[0][3], "MyArray: value_equals_to");
      _;
  }

  function set_equal(uint8 _value, uint8 _compare) public  {
      require(array[0] == VALUE_0, "MyArray: set_equal: invalid value 0");
      _equal[0][0] = _value;
      _equal[0][1] = _compare;
  }

  function is_equal(uint8 _value, uint8 _compare) public view returns (bool)  {
      return IEquatable(this).compare(_value, _equal[0][1]);
  }

}
