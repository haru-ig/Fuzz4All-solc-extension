pragma solidity ^0.8.0;
contract TestFallback7
{
    address public owner;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
    }
    function f(uint256 x) public
    {
        require(x % 3 == 0, "Test fallback7");
        accounts[msg.sender]++;
    }
    function g(uint256 x) public
    {
        f(x);
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= min) {
            min--;
            accounts[msg.sender] -= min;
        }
    }
}
