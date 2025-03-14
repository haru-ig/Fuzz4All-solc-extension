pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address to, uint x, uint d) public {
        require(x > d && x > 100, "Arguments out of boundary not allowed");
        x = x - d;
        to.transfer(x);
    }
}
