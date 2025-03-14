pragma solidity ^0.8.0;
contract TestFallback2
{
    address public owner;
    uint256 public constant n = 3;
    constructor() {
        owner = msg.sender;
    }
    function f() public payable
    {
        uint256 r = msg.value / n - (n -1);
    }
}
