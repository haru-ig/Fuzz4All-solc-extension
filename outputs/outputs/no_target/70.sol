pragma solidity ^0.8.0;
interface IERC223Token1633 {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    event Transfer(address indexed sender, address indexed to, uint256 value);
    event Approval(address sender, address indexed approved, uint256 addedValue);
    function safeTransferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function safeTransferFrom(address sender, address recipient, uint256 amount, address data) external returns (bool);
    function safeTransferFrom(address sender, address recipient, uint256 amount, bytes memory data) external returns (bool);
}
