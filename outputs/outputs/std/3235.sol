pragma solidity ^0.8.0;
interface IHasBytes4Func {
  function doAdd2(bytes1 a, bytes calldata b, uint256 b_length) external;
}
