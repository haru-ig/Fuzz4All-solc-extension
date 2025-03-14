pragma solidity ^0.8.0;
contract FallbackYesReturn {
  constructor(uint v) {
    require(v!= 0);
    return;
  }
}
contract FallbackContract {
  fallback () external payable returns(uint) {
    require(0 == 1);
    return 0;
  }
}
contract FallbackWithRevert1 {
  constructor(uint v) {
    require(v!= 0);
  }
  fallback () external payable {
    require(0 == 2);
    revert();
  }
}
