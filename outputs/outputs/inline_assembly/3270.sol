pragma solidity ^0.8.0;
contract Mutate5{

  uint public _contractValue=1;
  uint public _array[1];
  address public _address;
  uint public _amount;
  uint public _last;
  uint public _first;

  constructor(){
    _address = msg.sender;
  }



  function SetArrayValue() public {
    _array[0] = _contractValue++;
    _array[1] = _array[1]+1;
    _first = (100 + 100) * _array[0];
    _last = _array[0];
  }

  function ChangeArray(uint arr) public {
    _array[(_contractValue)]=arr;
  }

  modifier onlyByCaller(){
    assert(msg.sender == _address);
    _;
  }
}
