pragma solidity ^0.8.0;
contract Equivalent
{
   function sendEther(uint x) public payable
    {
       assembly { msg.data := add(mload(0), add(0, 8))) }
    }
}
