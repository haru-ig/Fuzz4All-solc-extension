pragma solidity ^0.8.0;
contract Mutated {
    function mutateA(uint value) public {   }
    function mutateB(uint value) public {   }
    function returnC() public {
        require(this.returnC() > 3, "A returnC() of 2 may not be greater than 3");
        return;
    }
    event Mutated(uint a, uint b, uint startTime, uint endTime);
}
