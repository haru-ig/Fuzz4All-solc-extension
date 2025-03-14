pragma solidity ^0.8.0;
interface IERC20 {
    function totalSupply() external returns (uint256);
    function balanceOf(address account) external view returns (uint);
    function transfer(address recipient, uint tokens) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint tokens) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed owner, address indexed spender, uint tokens);
}
