pragma solidity ^0.8.0;
contract Mutate1 {
  uint public _contractValue;
  address public _address;
  uint public _amount;
  uint[] public _array;
  constructor(uint amt1, address addr1) {
    _amount = amt1;
    _address = addr1;
    _array = new uint[](amt1+1);
  }
  function getAmount() public view returns (uint) {
    return _amount;
  }
  function ChangeArrayValue(uint v) public returns (uint) {
    uint _v;
    require (v>0);
    _v = _array[_contractValue];
    _array[_contractValue]=(_contractValue+v);
    return _v;
  }
}
