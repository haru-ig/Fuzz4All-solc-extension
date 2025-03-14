pragma solidity ^0.8.0;
interface IERC20Generic {
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external pure returns (uint256);
    function decimals() public pure virtual returns (uint8);
    function totalSupply() public view virtual returns (uint256);
    function tokenURI(uint256 tokenID) external view virtual returns (string memory);
    function maxSupply() public view virtual returns (uint256);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function balanceOf(address owner) external view returns (uint256 balance);
    function balanceOf(address owner) public view returns (uint256 balance);
    function transfer(address recipient, uint256 amount) external returns (bool success);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool success);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool success);
}
