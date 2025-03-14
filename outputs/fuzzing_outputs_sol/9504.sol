pragma solidity ^0.8.0;
contract ContractWithFallback4 {
  address public wallet;
  fallback function() public payable {
    wallet.call{value: msg.value}('');
  }
}
