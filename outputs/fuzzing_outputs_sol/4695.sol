pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint counter, uint counter) public shouldReturnBefore(uint counter) returns (uint) {
        lastCalls[counter] = true;
        return counter;
    }
}
