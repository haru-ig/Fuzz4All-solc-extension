pragma solidity ^0.8.0;
contract SameMutator {
uint internal a;
uint internal b;
modifier onlyIncrement {
    _;
  }
void Increment(uint a_, uint b_) public onlyIncrement{
    if (b_ == 0) {
      a = 0;
      b = _counter;
      _counter = 0;
    } else {
      b = _counter + 1;
    }
  }
}
```
