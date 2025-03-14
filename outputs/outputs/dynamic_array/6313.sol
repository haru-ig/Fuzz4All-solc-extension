pragma solidity ^0.8.0;
contract c {
  function get(uint8[1]) public pure returns (uint8[1]) { }
  function get(uint8[] memory) public pure returns (uint8[] memory) { }
}




pragma solidity ^0.8.0;
contract c {
  function get(uint256[] memory) public pure returns (uint256[] memory) { }
  function get(uint[] memory) public pure returns (uint[] memory) { }
}
