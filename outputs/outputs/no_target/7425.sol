pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  uint256 public constant constant2Mod = 1.0 % 2;
  function test1() public pure returns(bool) {
    return constant2 == param + constant2;
  }
}
contract Test {
  function test1() public pure returns(bool) { return 1.0 > 2.0;  }
}
contract Test {
  function test1() public pure returns(bool) { return 1.0 == 2.0; }
}
contract Test {
  function test1(uint256 param) public pure returns(bool) { return 1.0 > param; }
}
contract Test {
  function test1() public pure returns(uint) { return constant1 + constant2; }
}
contract Test {
  function test1() public pure returns(bool) { return constant1 < 2; }
}
contract Test {
  function test1NoParam() public pure returns(bool) { return constant2Mod < 1; }
}
contract Test {
  function test1() public pure returns(bool) { return constant1 % 1 == 0; }
}
