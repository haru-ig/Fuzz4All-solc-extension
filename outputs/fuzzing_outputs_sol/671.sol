pragma solidity ^0.8.0;
contract Caller3
{
   string contract_fallback;
   string contract_receive;
   receive() external payable {
      emit received();
      contract_fallback();
      contract_receive();
   }
   fallback() external payable {
      emit received();
      contract_fallback();
   }
   receive() external payable {
      emit received();
      contract_receive();
   }
   function contract_fallback() public fallback {
   }
   function contract_receive() public receive {
   }
}
