pragma solidity ^0.8.0;
contract Fallback {
  function f() public pure returns (uint256) {
    return (uint256(uint128(blockhash(block.number-1)))) * 2;
  }
}
