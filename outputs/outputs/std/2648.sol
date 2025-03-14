pragma solidity ^0.8.0;
interface ERC20
{
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function approve(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    function safeTransferFrom(address, address, uint256) external returns (bool);
    function safeTransfer(address, uint256) external returns (bool);
    function safeApprove(address, uint256) external returns (bool);
}
