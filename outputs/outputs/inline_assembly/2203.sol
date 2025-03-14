pragma solidity ^0.8.0;

library Counter
{
    mapping (address => uint) public balances;

    function increment() public
    {
        balances[msg.sender]++;
    }
}
contract Simple {
    address payable owner;
    Counter.Counter c;

    event CounterEvent (uint indexed z);

    function Simple() public {
        owner = msg.sender;
    }

    function () public payable {
        c.increment();
    }

    function getCounterValue() public view returns (uint)
    {
        return c.balances[owner];
    }

    function test() public {
        Counter.increment();
        c.increment();
        uint x = c.getCounterValue();
        Counter.increment();
        x += c.getCounterValue();
        msg.sender.call{value: 3}(new bytes(0));
        c.increment();
        c.increment();
        c.increment();
        Counter.increment();
    }

    function setCounterValue(uint y) public {
        c.balances[msg.sender] = y;
    }

    receive() external payable { }
}
