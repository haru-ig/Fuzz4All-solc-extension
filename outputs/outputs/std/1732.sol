pragma solidity ^0.8.0;
contract Duplicated {
    struct Event {
        uint startTime;
        uint endTime;
    }
    mapping(uint => uint) a;
    mapping(uint => uint) b;
    uint c;

    Event[] private events;

    event DuplicatedEvent(uint v);

    function newGeneration() public {
        a[1] = 42;
        events.push(Event(block.timestamp, block.timestamp + 1));
    }
}
