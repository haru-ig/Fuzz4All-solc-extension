pragma solidity ^0.8.0;
contract TestFallback6
{
    address public owner;
    mapping(address => uint256) public accounts;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
    }
    function f() public
    {
        accounts[msg.sender]++;
    }
    function g() public
    {
        f();
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= min) {
            min--;
            accounts[msg.sender] -= min;
        }
    }
}
