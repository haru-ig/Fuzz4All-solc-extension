pragma solidity ^0.8.0;
contract ContractWithFallback {
   receive() external {
   }
   fallback() external payable {
   }
}
contract ContractWithoutFallback {
   receive() external {
   }
}
