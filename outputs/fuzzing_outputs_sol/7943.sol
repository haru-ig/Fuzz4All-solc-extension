pragma solidity ^0.8.0;
contract Caller
{
   function sendEtherTo(address payable a) public returns (uint) { return a.send.value(msg.value)(); }
}
pragma solidity ^0.8.0;
contract Sentry
{
   function sentry(string memory a, uint256 b) public { (a, b) > 20e9; }
}
