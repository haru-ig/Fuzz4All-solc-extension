pragma solidity ^0.8.0;
contract Mutator2
{
    bytes32 public state = keccak256(abi.encodePacked(bytes1(0)));
    constructor ()public {
        state[22] = 1;
    }
    function mutates() public {
        state = state;
        state = state + state;
        state = state + state[state];
        state = state + state[state[state]];
    }
}
