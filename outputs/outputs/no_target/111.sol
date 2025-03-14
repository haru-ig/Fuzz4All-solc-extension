pragma solidity ^0.8.0;
interface IERC20Token {
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function decreaseApproval(uint256 amount) external returns (bool);
    function increaseApproval(uint256 amount) external returns (bool);
    string name() external pure returns (string memory);
    string symbol() external pure returns (string memory);
    uint8 decimals() external pure returns (uint8);
}
