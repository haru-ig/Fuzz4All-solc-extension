pragma solidity ^0.8.0;
contract ContractWithFallback {
   receive() public payable {}
   fallback() public payable {}
}
contract ContractWithoutFallback {
   receive() public payable {}
   fallback() external payable {}
}
