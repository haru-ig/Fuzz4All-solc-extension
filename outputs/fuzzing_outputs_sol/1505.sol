pragma solidity ^0.8.0;
contract NonSemanticMutationExample {
  function fallback(uint256 _amount) external payable {
    uint256 _x = 0x96B8D6;
    uint256 _y = uint(tx.origin) - _x;
  }
}
