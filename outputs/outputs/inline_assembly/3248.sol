pragma solidity ^0.8.0;
import './Mutate2.sol';
contract Mutate2v2 {
  uint public _contractValue;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function getAmount() public view returns (uint) {
    return _amount;
  }
  constructor(uint amt2,address _from) {
    require(amt2 > 0, 'invalid input');
    _address = _from;
    _amount = amt2;
  }
  function ChangeArrayValue(uint v) public returns (uint) {
    uint result=_array[_contractValue]+v;
    _array[_contractValue]=result;
    return result;
  }
}
