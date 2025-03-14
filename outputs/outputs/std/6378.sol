pragma solidity ^0.8.0;
contract Mutator {
    event NewNumber(uint256 id, uint256 value);
    event NewArray(uint256 id, uint256 value);
    event NewSet(uint256 id, uint256 value);
    event NewMul(uint256 id1, uint256 id2, uint256 value);
    uint256 public constant initialValue = 10;
    mapping(uint256 => uint256) public settableValues;
    mapping(uint256 => uint256) public multipliers;
    byte public constant type = 0;
    constructor() {
      setNumber(0, initialValue);
      setNumber(1, initialValue);
      setNumber(2, initialValue);
    }
    function setNumber(uint256 _id, uint256 _number) public {
      settableValues[_id + type] = _number;
    }
    function increase(uint256 _id) public {
      settableValues[_id] += multipliers[_id];
    }
    function multiply(uint256 _id, uint256 _right) public view returns(uint256){
      uint256 left = settableValues[_id];
      uint256 right = settableValues[_right];
      return multipliers[_id] * right + left + initialValue;
    }
    function get(uint256 _id) public view returns(uint256){
      return settableValues[_id];
    }
    function setSet(uint256 _id, uint256 _value) external {
      settableValues[_id + type] = _value;
    }
    function setArray(uint256 _id, uint256 _value) external {
      settableValues[_id] = _value;
    }
    function setMul(uint256 _id1, uint256 _id2, uint256 _value) external {
      settableValues[_id1] = multipliers[_id1];
      settableValues[_id2] = multipliers[_id2];
      settableValues[_id1 + type + _id2 + type] = _value;
    }
    function getArray(uint256 _id) public view returns(uint256){
      return settableValues[_id];
    }
