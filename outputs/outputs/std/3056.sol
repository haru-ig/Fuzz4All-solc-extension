pragma solidity ^0.8.0;
interface IERC20Detailed {
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external pure returns (uint256);
}
