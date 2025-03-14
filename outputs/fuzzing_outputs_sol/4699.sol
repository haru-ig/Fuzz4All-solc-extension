pragma solidity ^0.8.0;
contract Mutator {
    mapping (uint => bool) public lastCalls;
    function shouldBe(uint counter) public returns (uint) {
        if (lastCalls[counter]) {
            throw "test";
        } else {
            lastCalls[counter] = true;
        }
        return counter;
    }
}
