pragma solidity ^0.8.0;
contract Caller
{
  address target;
  function Caller (address _target) public {
    target=_target;
  }
  function sendEther(uint x) public payable{
    Caller(target).modifiedSendEther(x, target);
  }
}
