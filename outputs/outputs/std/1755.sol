pragma solidity ^0.8.0;
contract SolidityMutated {
    function mutateA(uint) public view {}
    function mutateB(uint) public view {}
    function returnC() public view returns(uint) {
        return 1;
    }
    event Mutated(uint a, uint b, uint startTime, uint endTime);
}
