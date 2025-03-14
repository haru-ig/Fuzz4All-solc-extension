pragma solidity ^0.8.0;
contract Mutate7 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;

  constructor(uint amt7) {
    _address = payable(msg.sender);
    _amount = amt7;
  }
}

pragma solidity ^0.8.0;
contract Mutate1 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;

  constructor(uint amt1, uint amt2, uint amt3, uint amt4, uint amt5, uint amt6) {
    _address = payable(msg.sender);
    _amount = amt1;
    _array.push(amt2);
    _array.push(amt3);
    _array.push(amt4);
    _array.push(amt5);
    _array.push(amt6);
  }
}
