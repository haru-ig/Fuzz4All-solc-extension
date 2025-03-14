pragma solidity ^0.8.0;
contract TestFallback5
{
    address public owner;
    mapping(address => uint256) public counts;
    uint256 public min;
    constructor () {
        owner = msg.sender;
        min = 1;
    }
    function f() public {
        if (counts[msg.sender] >= min)
            counts[msg.sender] -= min;
        else if (counts[msg.sender] > 0)
            counts[msg.sender] = 0;
    }
}
