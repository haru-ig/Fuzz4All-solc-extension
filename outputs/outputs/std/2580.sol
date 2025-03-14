pragma solidity ^0.8.0;
interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function approve(address spender, uint wad) external returns (bool);
    function transfer(address recipient, uint wad) external returns (bool);
    function transferFrom(address sender, address recipient, uint wad) external returns (bool);
}
