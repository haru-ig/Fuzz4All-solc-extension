pragma solidity ^0.8.0;
contract NonPayableFallback is InvalidFallback {
   function fallback() public payable {

      msg.value = 1 ether;
   }
}
