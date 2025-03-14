pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 200.0;
  uint256 constant constant2 = 300.0;
  function test1(uint256 x) public {
    constant2 *= 4;
    constant2 = constant2 + x;
  }
}

pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 200.0;
  uint256 constant constant2 = 300.0;
  uint256 private constant constant3 = 200.0 * 4;
  function test1(uint256 x) public {
    constant2 += x;
    constant2 = constant2 - x;
  }
}

pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 300.0;
  uint256 constant constant2 = 200.0;
  uint256 public constant constant3 = 200.0 * 4;
  uint256 private constant constant3 = 200.0 * 4;
  uint256 public constant constant4 = 2000000000000000000000000000000000;
  uint256 private constant constant4 = 20000000000000000000000000000000000;
  function test1(uint256 x) public {
    constant2 -= x;
  }
}

pragma solidity ^0.8.0;
contract Test {
  uint256 constant constant1 = 200000000000000000000000000000000000;
  uint256 constant constant2 = 2000000000000000000000000000000000000;
  function test1(address a, uint256 b) public {
    b = constant1 + a.call {value: constant2}(abi.encodeWithSelector(Test.default(uint256
