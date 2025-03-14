pragma solidity ^0.8.0;
contract MyContract {
  using MyLibrary for uint;
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    uint[] memory returnVal = [SOME_CONST, SOME_CONST2, SOME_CONST3];
    return returnVal[uint(SOME_CONST) % 3];
  }
  function getSomeConst2() public returns (uint) {
    uint[] memory returnVal = [SOME_CONST, SOME_CONST2, SOME_CONST3];
    return returnVal[uint(SOME_CONST2) % 3];
  }
  function getSomeConst3() public returns (uint) {
    return SOME_CONST3;
  }
}

pragma solidity ^0.8.0;
contract MyContract {
  using MyLibrary for uint;
  uint constant public SOME_CONST = 2323232323;
  uint constant public SOME_CONST2 = 2111111111;
  uint constant private SOME_CONST3 = 255;
  function getSomeConst() public returns (uint) {
    uint[] memory returnVal = [SOME_CONST, SOME_CONST2, SOME_CONST3];
    uint zetVal = SOME_CONST + SOME_CONST2 + SOME_CONST3;
    return returnVal[uint(ztVal) % 3];
  }
  function getSomeConst2() public returns (uint) {
    uint[] memory returnVal = [SOME_CONST, SOME_CONST2, SOME_CONST3];
    uint zetVal2 = SOME_CONST + SOME_CONST2 + SOME_CONST3;
    return returnVal[uint(ztVal2) % 3];
  }
  function getSomeConst3() public
