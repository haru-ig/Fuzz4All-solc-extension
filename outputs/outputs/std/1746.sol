pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(uint value) public {}
    function mutateB(uint value) public {}
    function returnC() public view returns(uint) {
        return 1;
    }
    event Mutated(uint a, uint b, uint startTime, uint endTime);
}
