pragma solidity ^0.8.0;
contract MutatedExamples6 is MutatedExamples5 {
    function mutated2(address addr, uint x) public returns(uint y, uint z) {
        return (mutated1(addr, x), 4);
    }
}
