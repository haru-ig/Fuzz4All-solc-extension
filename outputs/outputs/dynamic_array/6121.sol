pragma solidity ^0.8.0;
contract Test30002 {
    uint[] private arr;
    uint32 public a;
    constructor (uint a) public {
        a = a;
        emit MyEvent1 (a);
        emit MyEvent2 (a);
        emit MyEvent3 (a);
    }
    emit Events (msg.sender);
    fallback () external {
        emit MyEvent4 ();
    }
    event Events (address who);
    event MyEvent1 (uint first);
    event MyEvent2 (uint data);
    event MyEvent3 (uint data);
    event MyEvent4 ();
}
