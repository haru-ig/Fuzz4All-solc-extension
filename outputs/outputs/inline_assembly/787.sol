pragma solidity ^0.8.0;
contract Mutator {
address payable[] payable1;
modifier onlyIncrement() {
      _counter ++;
      _;
    }
    function Increment(uint a, uint b) public onlyIncrement {
      if (b == 0) {
        _counter = _counter + b;
      }
    }
}
