pragma solidity ^0.8.0;
contract Mutablility {
  uint public immutable _value;
  bytes immutable _data;
  uint public _constructor_value = 0;
  constructor ( uint _constructor_value, bytes memory _data) {
    _checkValue(_constructor_value, "constructor_value");
    data = _data;
    _value = _constructor_value;
    _constructor_value = 0;
  }

  function checkValue (uint _value) private pure returns (uint) {
    require(
      _value!= 0,
      "Mutablility.checkValue: _value cannot be 0"
    );
    return _value;
  }

  function valueBefore (bytes memory _data) public view returns (uint) {
    uint _value = abi.decode(_data, (uint));
    _checkValue(_value, "valueBefore.value");
    return _value;
  }

  function dataBefore (bytes storage _data) public view returns (uint) {
    uint _data_value = abi.decode(_data, (uint));
    _checkValue(_data_value, "dataBefore.data");
    return _data_value;
  }

  function dataAfter(uint _value) public view returns (uint) {
    uint _data_value = 10;
    _data_value = _value + _data_value;
    return _data_value;
  }

  function constructorValue() public view returns (uint) {
  }

  function constructorValueSafe() public pure returns (uint) {
    uint _constructor_value = 10;
    require(_constructor_value == 10, "constructorValueSafe: _constructor_value not 10");
    return _constructor_value;
  }

  function assertNonZero(uint _value) public pure {
    require(_value!= 0);
  }

  function assertValue(uint _value) public {
    require(
      _value!= 0,
      "Mutablility.assertValue: _value cannot be 0"
    );
  }

  function assertValidData(bytes memory _data) public pure {
