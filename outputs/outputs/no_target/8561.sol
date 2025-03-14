pragma solidity ^0.8.0;
interface IERC20 {
    function transfer(address to, uint amount) external returns (bool);
    function transferFrom(address from, address to, uint amount) external returns (bool);
    function balanceOf(address who) external view returns (uint);
    }
