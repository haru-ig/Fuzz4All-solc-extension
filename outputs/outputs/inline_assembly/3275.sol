pragma solidity ^0.8.0;
contract Mutate6 {
  uint public _contractAmount;
  address public _address;
  uint[] public _array;
  uint public _amount;
  void ChangeArray(uint) public {
    _array[(_contractAmount)]=200;
    _array[(_contractAmount-1)]=1;
  }
  constructor() {
    _address = msg.sender;
  }
  modifier CheckAmount(){
    require(CheckAmount()>=_amount);
  }
}
