pragma solidity ^0.8.0;
interface IERC223 is IERC223 {
  function transfer(address to, uint256) external;
  function transferFrom(
    address from,
    address to,
    uint256 id
  ) external;
}
