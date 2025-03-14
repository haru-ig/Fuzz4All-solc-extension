pragma solidity ^0.8.0;
contract MutatingFallback5 {
  function modify(uint num, bool flag) external {
    require(flag == true);
    num = num + 123;
  }
}
contract CreateAddress5 {
  function createAddress(uint n) public pure {
    new CreateAddress4().createAddress();
  }
}
