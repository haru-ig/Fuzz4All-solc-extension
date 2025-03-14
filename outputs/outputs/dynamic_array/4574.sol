pragma solidity ^0.8.0;
contract TestInterface is IERC165 {
  function supportsInterface(bytes4 interfaceId) override external view returns (bool) {
    return true;
  }
}
