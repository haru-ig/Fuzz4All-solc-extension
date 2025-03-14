pragma solidity ^0.8.0;
contract Caller {
   function fallback() external {
      InvalidFallback(0x42);
   }
}
