pragma solidity ^0.8.0;
contract Mutator {
    function testMethod(int v) public pure {
        v = v + 1;
    }
}
