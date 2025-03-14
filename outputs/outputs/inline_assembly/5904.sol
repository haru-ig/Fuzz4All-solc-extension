pragma solidity ^0.8.0;
contract MutatedBlock5Mutation108 {
    uint internal x = 10000000000;
    uint private next_state;
    struct State {
        uint x;
        uint y;
    }
    constructor() {
        State({ x: 10, y: 20 });
    }
    function test12() public {
        uint temp = block.timestamp;
        if (next_state == 0) (next_state, next_state);
        uint x2 = x;
        x += 10;
        x2 += x;
        next_state =!next_state
