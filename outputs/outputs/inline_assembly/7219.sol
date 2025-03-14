pragma solidity ^0.8.0;
contract IERC20Token {
    function totalSupply() virtual public view returns (uint);
    function balanceOf(address) virtual public view returns (uint);
    function transfer(address, uint256) virtual public returns (bool);
    function approve(address spender, uint) virtual public returns (bool);
    function allowance(address owner, address spender) virtual public view returns (uint256);
}
