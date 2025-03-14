pragma solidity ^0.8.0;
contract ContractWithFallback9 {
  function fallback() public payable {
    if (false) {
      address x = address(0x0);
      emit Event();
    }
  }
}
