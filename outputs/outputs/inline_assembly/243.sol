pragma solidity ^0.8.0;
contract E12 {
  mapping (address => uint) public funds;
  uint _x;
  constructor (uint _x) public {
    _x = _x;
    funds[msg.sender] = 10 * 10 **18;
  }
  function divide (uint _x) public returns (uint){
    uint y_ = funds[msg.sender] / 10;
    if (y_ == 0) {
      funds[msg.sender] = 10;
      return 10;
    } else {
      funds[msg.sender] = y_ - 1;
      return _x;
    }
  }
}
