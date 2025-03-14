pragma solidity ^0.8.0;
contract Mutant
{
  uint256 immutable x;
  bytes32 immutable w;
  function Mutant() {
    w = hex"deadbeef";
    x = 1;
  }
  receive() external payable {}
}
library Lib
{

    function sendFunction(address sender) public {
        sender.send(address(this).balance);
    }
}
