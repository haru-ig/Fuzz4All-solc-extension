pragma solidity ^0.8.0;
interface IERC20
{
    function balanceOf(address account) external view returns (uint256);
    function allowance(address from, address to) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address to, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
