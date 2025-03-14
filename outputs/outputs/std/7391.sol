pragma solidity ^0.8.0;
contract IERC20 {
  function deposit(uint) external;
  function withdraw(uint) external;
  function balance() external view returns(uint256);
}
