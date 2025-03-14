pragma solidity ^0.8.0;
contract TestFallback4
{
    address public owner;
    mapping(address => uint256) public counts_old;
    constructor() {
        owner = msg.sender;
    }

    modifier pay_through_send(uint value)
    {
        if (msg.value!= value)
            revert("Incorrect value");
        _;
    }
    function f() public pay_through_send(0)
    {
        counts_old[msg.sender] += 1;
        if (msg.value == 0)
            counts_old[msg.sender] -= 1;
        if (msg.value > 10 ether)
            counts_old[msg.sender] -= 1;
    }
    function e() public
    {
        TestFallback4 f1;
        f1.f();
    }
}
