pragma solidity ^0.8.0;
interface IERC20Extension {
    function increase(uint256 mintedTokens) external returns(bool success);
    function decrease(uint256 burntTokens) external returns(bool success);
    function totalSupply() external view returns(uint256);
}
