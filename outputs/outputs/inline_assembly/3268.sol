pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  address payable public _address;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt3) {
    _address = payable(msg.sender);
    _amount = amt3;
  }
  function ChangeArray(uint arr) public {
    _array[(_contractValue)]=arr+1;
  }
}
mapping (uint => uint) _array;
contract Mapped1 {
  mapping (uint => uint) _array;
  uint public _arrayLargestNumber;
  uint _biggestNumber;
  uint public _first;
  uint public _second;
  uint _sum;
  uint _temp;
  constructor(uint initial1, uint initial2) {
    _arrayLargestNumber = initial1;
    _biggestNumber = initial2;
    _first = initial1 + initial2;
  }
  function getSum() public view returns (uint) {
    return _sum;
  }
  function checkBiggestNumber() public view returns(uint) {
    return _biggestNumber;
  }
  function largestNumberAdded() public view returns (uint) {
    return _arrayLargestNumber;
  }
  function getArrayIndex(uint index) public view returns (uint) {
    return _array[index];
  }
  function test() public {
    _temp = _first + _second;
    _sum = _temp / 2;
  }
}
