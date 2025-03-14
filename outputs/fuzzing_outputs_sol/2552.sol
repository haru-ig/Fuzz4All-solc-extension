pragma solidity ^0.8.0;
contract FailFunction
{
  function myFunc() public pure returns (uint) {
    return 0;
  }
}
contract FailReceiver
{
  uint public fallbackValue;
  function myFunc() public pure {
    fallbackValue = 10;
  }
}
contract FallbackFunction
{
  uint public fallbackValue;
  function myFunc() public payable {
    fallbackValue = 20;
  }
}
contract Caller
{
  uint public fallbackValue;
  function sendToFunc(uint _amount) public {
    fallbackValue += 0.08 ether*_amount;
  }
}
contract FunctionReturns
{
  uint public fallbackValue;

  function callMe(uint _value) public {
    fallbackValue += _value;
  }

  function returnUint() public pure returns (uint) {
    return fallbackValue;
  }

  function returnInt() public pure returns (int) {
    return -fallbackValue;
  }

  function returnAddress() public pure returns (address) {
    return address(this);
  }

  function callMyFunc() public payable returns (int) {
    return fallbackValue;
  }
}
contract ReceiveFunction
{
  uint public fallbackValue;
  function receiveEther() public payable {
    fallbackValue = 0;
  }
}
