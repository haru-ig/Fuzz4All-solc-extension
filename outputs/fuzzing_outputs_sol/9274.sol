pragma solidity ^0.8.0;
contract SemanticFallbackOld {
  fallback() external payable {
  }
}
contract Caller {
  function _fallback() public payable {
  }




}
