pragma solidity ^0.8.0;
contract Mutate7 {
  address payable public _address;
  uint public _amount;
  uint[] public _array;
  uint public _idx;
  uint public _length;
  constructor(uint amt7) {
    _address = payable(msg.sender);
    _amount = amt7;
    _idx = 0;
    _array = new uint[](1);
  }
  function add(uint amt7) public {
    _array[_idx] += amt7;
    _arrIdx++;
  }
  function returnArray() public view returns(uint[]) {
    return _array;
  }
}
