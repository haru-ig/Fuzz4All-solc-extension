pragma solidity ^0.8.0;

contract IERC20 {

    event Transfer(address indexed from, address indexed to, uint256 value);


    event Approval(address indexed owner, address indexed spender, uint256 value);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function balanceOf(address owner) external view returns (uint256 balance);
}
