pragma solidity ^0.8.0;
contract MutatedExamples6 {
    function mutated1(address, uint x) public returns(uint y) {
        unchecked { return x + 100; }
    }
    function mutated2(address, uint x) public returns(uint y, uint z) {
        unchecked { uint z, y = x; return z; }
    }
    function mutated3(uint x) public returns(uint z) {
        unchecked { unchecked { unchecked { unchecked { unchecked { uint z = 4; return z; } }} }} }
}
