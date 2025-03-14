pragma solidity ^0.8.0;
contract ValidFallback {
   receive() external payable {}
}

pragma solidity ^0.8.0;
contract Caller {
   InvalidFallback public invalid;
   ValidFallback public valid;

   receive() internal {
       invalid.receive();
   }

   receive() external {
       valid.receive();
   }
}
