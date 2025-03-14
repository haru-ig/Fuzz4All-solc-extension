pragma solidity ^0.8.0;
contract TestFallback7
{
    uint256 min;
    mapping(address => uint256) public accounts;
    uint256 public min;
    constructor ()
    {
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
            accounts[msg.sender] -= min * 3;
            min = 2;
        }
    }
}
