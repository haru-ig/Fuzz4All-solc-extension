pragma solidity ^0.8.0;
contract Immutable {
    function immutableA() public pure returns (uint) {
        return 10;
    }
    function immutableB(uint _) public pure returns (uint) {
        return 20;
    }
    event Immutables(uint a, uint b, uint startTime, uint endTime);
}
contract Cyclic {
    struct Cycle {
        uint startTime;
        uint endTime;
    }
    function cyclicA(uint value) public {
        while(true) {
            emit Mutated(value, value, block.timestamp, block.timestamp);
            value = 20 * uint(block.timestamp % 5);
        }
    }
    function cycleB(Cycle calldata initialCycle) public {
        for(uint i = initialCycle.startTime; i < initialCycle.endTime; i++) {
            emit Mutated((uint(block.timestamp) + 1) % 5, block.timestamp, block.timestamp, block.timestamp);
        }
    }
    event Cycle(uint a, uint b1, uint b2, uint c, uint startTime);
    event TimedOut();
}
