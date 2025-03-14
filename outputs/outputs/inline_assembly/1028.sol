pragma solidity ^0.8.0;
contract MyContract {
  uint private SOME_CONST = 1234;
  uint constant public SOME_CONST2 = SOME_CONST + 1;
  uint constant private SOME_CONST3 = SOME_CONST2 + 1;
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}
