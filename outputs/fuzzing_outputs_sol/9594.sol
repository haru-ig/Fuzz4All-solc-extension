pragma solidity ^0.8.0;
contract Sink {
function fallback() internal payable {msg.sender.transfer(address(this).balance);}
}
