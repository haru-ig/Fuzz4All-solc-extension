pragma solidity ^0.8.0;
contract TestFallback4
{
    address public owner;
    mapping(address => uint256) public accounts;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
    }
    modifier g()
    {
        f();
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= min)
            accounts[msg.sender] -= min;
        _;
    }
    function h() public g()
    {
    }
    function f() public g()
    {
        accounts[msg.sender]++;
    }
}
