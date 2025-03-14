pragma solidity ^0.8.0;
contract P13 {
  function i(uint) public pure returns (uint) {
    return 3;
  }
}
contract P14 {
  function i(uint8) public pure returns (uint8) {
    return 2;
  }
}
contract P15 {
  function i(uint256) public pure returns (uint256) {
    return i(3);
  }
}
