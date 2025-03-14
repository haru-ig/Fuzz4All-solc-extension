pragma solidity ^0.8.0;

interface ERC20{
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint wad) external returns (bool);
    function balanceOf(address user) external view returns (uint);
    function transfer(address recipient, uint wad) external returns (bool);
    function transferFrom(address sender, address recipient, uint wad) external returns (bool);
    function totalSupply() external view returns (uint);
}
