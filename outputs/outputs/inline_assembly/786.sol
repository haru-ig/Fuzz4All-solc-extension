pragma solidity ^0.8.0;
contract Mutator {
bytes32 _counter;
modifier Increment(uint a, uint b) {
      _counter ++;
      _;
    }
     function Increment(uint a, uint b) public Increment(a, b) {
      if (b == 0) {
         _counter = _counter + b;
      }
    }
}
