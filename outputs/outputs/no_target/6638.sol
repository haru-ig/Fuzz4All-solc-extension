pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}

contract IERC1155PreUpgradeable {
    event TransferMany(address indexed tokenContract, address indexed sender, address[] indexed operatorAddresses, uint256[] values, uint256[] ids);
    function transferFrom(address from, address to, uint256 number) public returns (bool success);
    function balanceOf(address owner, uint256 id) public view returns (uint256 balance);
    function safeTransferFrom(address from, address to, uint256 number, bytes memory data) public returns (bool success);
    function safeTransferFrom(address from, address to, uint256 number, bytes memory data, bytes calldata operatorData) public returns (bool success);
}
contract IERC1155PostUpgradeable {
    event TransferSingle(address indexed tokenContract, address indexed sender, address indexed operator, uint256 indexed id, uint256 value, bytes memory data);
    function safeTransferFrom(address from, address to, uint256 id, bytes memory data) public returns (bool success);
    function safeTransferFrom(address from, address to, uint256 id, bytes memory data, bytes calldata operatorData) public returns (bool success);
}
