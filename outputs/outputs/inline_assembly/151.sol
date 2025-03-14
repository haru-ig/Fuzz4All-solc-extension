pragma solidity ^0.8.0;
interface IERC20 {
  function totalSupply() external view returns (uint);

  function balanceOf(address _who) external view returns (uint);

  function transfer(address _to, uint _value) external returns (bool);
}
