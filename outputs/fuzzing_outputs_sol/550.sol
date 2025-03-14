pragma solidity ^0.8.0;
contract TestFallback4
{
    address public owner;
    mapping(address => uint256) public counts;
    uint256 public min;
    constructor() {
        owner = msg.sender;
        min = 1;
    }
    function f() public
    {
        if (counts[msg.sender] >= min)
            counts[msg.sender] -= min;
    }
    function g() public
    {
        f();
        counts[msg.sender] += min;
        if (counts[msg.sender] >= min)
            counts[msg.sender] -= min;
    }
}
