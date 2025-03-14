pragma solidity ^0.8.0;
contract FallbackNoReturn {
  constructor(uint v) {
    require(v!= 0);
    revert();
  }
}
contract FallbackContract {
  fallback () external payable {}
}
