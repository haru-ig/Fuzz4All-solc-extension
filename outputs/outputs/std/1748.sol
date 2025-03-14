pragma solidity ^0.8.0;
contract Mutated {
    uint public constant START_TIME = block.timestamp;
    uint public constant END_TIME = 5000;
    function mutateA(uint value) public {
        if (value == 100) {

        }
        Mutated memory mem = Mutated(
            START_TIME + uint(block.timestamp - START_TIME) * (value + 1) / 10000,
            (START_TIME + uint(block.timestamp - START_TIME) * (value + 1) / 10000) + uint(block.timestamp - START_TIME) * value / 5,
            block.timestamp,
            block.timestamp + uint(block.timestamp - START_TIME) * value / 5
        );
    }
    function mutateB(uint) public {
        END_TIME = block.timestamp + uint(block.timestamp - START_TIME) * 5 / 5;
        emit Mutated(uint(block.timestamp - START_TIME), uint(block.timestamp - START_TIME), START_TIME, END_TIME);
    }
}
