pragma solidity ^0.8.0;
contract ConstantFunction {
  function multiply32by32x(uint256 x) public pure returns (uint256) {

    return 32 * x;
  }
  function divide32by32x(uint256 x) public pure returns (uint256) {

    return 32 * x;
  }
  function multiply32by48y(uint256 y) public pure returns (uint256) {

    return 32 * y * 48;
  }
  function divide48by16a(uint256 a) public pure returns (uint256) {

    return 16 * a / 48;
  }
  function divide48by48x(uint256 x) public pure returns (uint256) {

    return 48 * x / 48;
  }
  function power2x(uint256 t) public pure returns (uint256) {

    return 32 ** t;
  }
  function power288a(address who) public pure returns (uint256) {

    return power2(who) * 88;
  }
  function power2(address who) public pure returns (uint256) {

    return who >> 224;
  }
}
