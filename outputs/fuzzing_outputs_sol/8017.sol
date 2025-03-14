pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  function test() public pure returns (uint8 i, uint256 u, uint64 u64, int8 i8, int256 i256, int64 i64) {}
}
contract Caller
{
  address receiver;
  uint256 value=1;
  uint256 data;
  uint256 x;

  modifier payable {data = msg.value; _; }


    constructor(address _receiver)
    {
      if (msg.sender == _receiver) receiver = _receiver;
      else revert("Call on the wrong contract address");
    }

  function call() public payable returns (uint x) {x = 2; if(receiver == msg.sender) value = 20; return;}
  function send() public payable returns (uint x) {x = 2;if(receiver == msg.sender) value = 20; return;}
  function fallback() public payable {x = 2;data = 20;value = 20;}
  function sendFallback() public payable {data = 20;x = 20;value = 20;}
  function sendReceive() public payable {data = 20;x = 20;value = 20;}
  function sendReceiveData() public payable {receiver.transfer(data);value = 20;}
  function sendData() public payable {data = 200;value = 200;}
}
