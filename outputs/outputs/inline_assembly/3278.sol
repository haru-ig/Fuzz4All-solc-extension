pragma solidity ^0.8.0;
contract Mutate6 {
  uint public _contractAmount;
  address public _address;
  uint[] public _array;
  uint public _amount;
  function CheckAmount() public view returns (uint) {
    return _amount;
  }
  function ChangeArray() public {
    for(uint i=0;i<_array.length;i++){
    	_array[i]=1.3;
    }

  }
  constructor() {
  }
}
