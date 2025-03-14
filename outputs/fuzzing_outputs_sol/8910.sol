pragma solidity ^0.8.0;
contract ContractWithFallback {
   receive () external payable {
   }
}
contract ContractWithoutFallback {
   receive () external payable {
   }
}
pragma solidity ^0.8.0;
