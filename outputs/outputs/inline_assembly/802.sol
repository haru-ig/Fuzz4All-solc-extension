pragma solidity ^0.8.0;
contract Mutator {
    uint _counter;
    uint a;
    uint b;
    modifier onlyIncrement() {
      _counter ++;
      _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        _counter = _counter + 1;
        a = 0;
        b = 0;
        if (b == 0) {
          _counter = 0;
        }
    }
    function IncrementTo(uint a, uint b) public onlyIncrement{
        a = _counter;
        b = b / 2;
        _counter += b;
        incrementAndReturn();
    }
    function incrementAndReturn(){
        _counter = _counter + 1;
    }
}
