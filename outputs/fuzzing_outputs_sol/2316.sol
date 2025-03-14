pragma solidity ^0.8.0;
interface ContractWithFallback {


  address payable fallback() external payable;


  function fallback() public payable {}
}
