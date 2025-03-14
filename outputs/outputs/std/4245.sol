pragma solidity ^0.8.0;
<fim_middle>interface IERC20Token {
  function totalSupply() external view returns(uint256);

  function balanceOf(address who) external view returns(uint256);

  function allowance(address owner, address spender)
    external view returns(uint256);
}
