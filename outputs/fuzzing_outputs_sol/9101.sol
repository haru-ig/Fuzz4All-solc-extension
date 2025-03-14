pragma solidity ^0.8.0;
contract Caller {
  function badCall() public returns (bool){
    return true;
  }
  fallback() external payable {}
}
