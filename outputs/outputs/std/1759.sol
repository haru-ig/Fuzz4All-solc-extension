pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(bytes memory value) public returns(bytes memory) {
        return value;
    }
    function mutateB(uint value) public returns(uint) {
        return value;
    }
    function returnC() public view returns(uint) {
        return 1;
    }
    event Mutated(bytes memory a, uint b, uint startTime, uint endTime);
}
