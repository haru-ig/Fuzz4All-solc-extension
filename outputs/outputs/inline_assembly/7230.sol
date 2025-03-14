pragma solidity ^0.8.0;
contract IERC20 {
    function totalSupply() virtual public view returns (uint256);
    function balanceOf(address account) virtual public view returns (uint256);
    function transfer(address recipient, uint256 amount) virtual public returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}
