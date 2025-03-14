pragma solidity ^0.8.0;
contract FallbackCaller {
  function fallback(uint amount) external payable {
    (uint) (address(this).balance);
  }
}
