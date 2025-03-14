pragma solidity ^0.8.0;
 contract Pre08Mutator {
uint _counter;
uint internal a;
uint internal b;
modifier onlyIncrement {
      _counter ++;
      _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) {
          a = 0;
          b = _counter;
          _counter = 0;
        } else {
          b = _counter + 1;
          _counter = 0;

        }
    }
}
