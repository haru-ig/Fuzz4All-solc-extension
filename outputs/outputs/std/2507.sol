pragma solidity ^0.8.0;
interface IERC20 {
    bool approve(address spender, uint256 value);
    function transferFrom(address from, address to, uint value);
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    event Transfer(address indexed from, address indexed to, uint256 value);
}
contract TokenContract {
    uint public token;
    function transfer(address payable to, uint value) public{
       uint256 i = 0;
       _token;
       i;
    }
}
