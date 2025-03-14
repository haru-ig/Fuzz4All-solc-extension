pragma solidity ^0.8.0;
contract IERC20Token {
    function totalSupply() public view returns (int);
    function balanceOf(address) public view returns (int);
    function transfer(address, int) public returns (bool);
    function approve(address, int) public returns (bool);
    function allowance(address, address) public view returns (int);
}
