pragma solidity ^0.8.0;
interface IERC20 {
    function transfer(address to, uint value) external returns (bool);

    function transferFrom(address from, address to, uint value) external returns (bool);

    function balanceOf(address account) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);
}
contract Array {
    mapping (uint => bytes32) public array;
    function f(uint a) public pure { }
}
