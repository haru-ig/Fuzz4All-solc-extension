pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _contractValue;
  address public _address;
  function ChangeArray(uint arr) public {
    _array[_contractValue] = arr;
  }
}
