pragma solidity ^0.8.0;
contract Mutator {
uint x;
uint _counter;
uint a;
uint b;
modifier onlyIncrement() {
      _counter ++;
      _;
    }

    function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) {
           _counter = 0;
           a = 0;
           return;
        }
       _x = _counter;
       x = _counter;
    }
}
