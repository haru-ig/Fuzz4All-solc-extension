pragma solidity ^0.8.0;

contract IERC20Token {
    function totalSupply() public view returns (uint256) {}
    function balanceOf(address account) public view returns (uint256) {}
    function transfer(address to, uint wadValue ) public returns (bool) {}
    function approve(address spender, uint256 wadValue) public returns (bool) {}
    function allowance(address owner, address spender) public view returns (uint256) {}
}
