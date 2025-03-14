pragma solidity ^0.8.0;
import "./StringSize.sol";
contract SemanticEquivalent {
  function len() public view returns (uint256) {
    uint256 lenOfStr;
    assembly { lenOfStr := mload(0x40) }
    return lenOfStr;
  }
}
