pragma solidity ^0.8.0;
contract CallerWithoutFallback {
   receive() external {
   }

   fallback() external {
   }
}
