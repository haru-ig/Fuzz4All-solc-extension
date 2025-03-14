pragma solidity ^0.8.0;
contract Mutator {
    function mutate() external {
        (uint128(now) + 1, uint32(msg.sender));
    }
}

contract CallerMutator is Mutator {
    uint256 constant private MIN = 1;
    uint256 constant private MAX = 1000;
    function mutate() external {
        if (msg.value >= MIN && msg.value <= MAX) {

        }
    }
}
