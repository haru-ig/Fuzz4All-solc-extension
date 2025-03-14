pragma solidity ^0.8.0;
interface IERC20{
    function totalSupply() external view returns(uint);
    function balanceOf(address account) external view returns(uint);
    function transfer(address receiver, uint tokens) external returns(bool success);
    function allowance(address owner, address spender) external view returns(uint);
    function approve(address spender, uint tokens) external returns(bool success);
}
