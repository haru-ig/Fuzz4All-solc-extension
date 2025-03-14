pragma solidity ^0.8.0;
contract Mutator2  is Mutator {
  uint _counter;
  uint c;
  uint counter;
  function Increment(uint a, uint b) public {
    if (b == 0) {
      _counter  = 0;
      a = 0;
      return;
    } else {
      _counter = _counter + 1;
    }
    b = _counter;
  }
function Getvalue() public {
    c=_counter;
  }
}
