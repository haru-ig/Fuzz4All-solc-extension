pragma solidity ^0.8.0;
contract P12 {
  function i(uint) public pure returns (uint) {
    return 1;
  }
}

pragma solidity ^0.8.0;
contract P12 {
  event MyEvent(bool a, address b, uint c);
  function foo() public pure returns (bool) {
    emit MyEvent(false, address(0), 1);
    return true;
  }
}
