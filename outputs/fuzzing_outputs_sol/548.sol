pragma solidity ^0.8.0;
contract TestFallback3
{
    address public owner;
    mapping(address => uint256) public counts;
    constructor() {
        owner = msg.sender;
    }
    function f() public payable
    {
        counts[msg.sender] += 1;
        if (msg.value == 0)
            counts[msg.sender] -= 1;
        if (msg.value > 10 ether)
            counts[msg.sender] -= 1;
    }
    function e() public
    {
        TestFallback3 f1;
        f1.f();
    }
}
