pragma solidity ^0.8.0;
interface IERC20TokenERC20Decimals {
    function decimals() external view returns (uint8 decimals);
    function burn(uint256 amount) external;
    function safeBorrow(uint256 amount) external;
    function safeTransfer(address to, uint256 tokens) external;
    function borrow(uint256 amount) external;
    function borrowByPercent(uint256 borrowAmount, uint256 borrowRate) external;
    function stableBorrow(uint256 amount) external;
    function stableBorrowByPercent(uint256 borrowAmount, uint256 borrowRate) external;
    function unstableBorrow(uint256 amount) external;
    function unstableBorrowByPercent(uint256 borrowAmount, uint256 borrowRate) external;
}
