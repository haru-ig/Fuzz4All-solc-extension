pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(uint value) public {}
    function mutateB(uint value) public {}
    event Mutated(uint a, uint b, uint startTime, uint endTime);
}
