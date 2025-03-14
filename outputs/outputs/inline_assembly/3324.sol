pragma solidity ^0.8.0;
contract CallConst {
  constructor() {

  }
  function payout(uint _value) public payable {
    emit SomeEvent(_value);
  }
  function payout2(uint _value) public payable {
    emit SomeEvent(_value);
  }
}
