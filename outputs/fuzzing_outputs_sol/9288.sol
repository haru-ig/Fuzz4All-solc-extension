pragma solidity ^0.8.0;
contract SemanticFallbackMutated {
  function() external payable {
    require(msg.data.length > 0);
    emit LogEmission(address(this).balance - msg.data.length);
  }
  event LogEmission(uint256 _amount);
}
contract FallbackTest {
  function FallbackTest() public {}
  function fallback() external payable {
    require(msg.data.length > 0);
    emit LogEmission(address(this).balance - msg.data.length);
  }
  event LogEmission(uint256 _amount);
}
