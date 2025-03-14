pragma solidity ^0.8.0;
contract FallbackMutator {
    mapping (uint => bool) public lastCalls;
    function shouldBe(uint counter) public returns (uint) {
        lastCalls[counter] = true;
        counter = counter + 1;
        return counter;
    }
}
