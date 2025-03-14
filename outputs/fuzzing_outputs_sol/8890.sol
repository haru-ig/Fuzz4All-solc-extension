pragma solidity ^0.8.0;
contract ContractWithFallback {
   address storageFallback;
   constructor() { storageFallback = address(1); }

   fallback() external payable {
      storageFallback.transfer(msg.value);
   }

   receive() external payable {
      emit RecievedEther(msg.value);
   }
}
