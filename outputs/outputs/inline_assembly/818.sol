pragma solidity ^0.8.0;
contract Mutator {
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
        }
    }
    function IncrementMore(uint a, uint b) public {
        if (b == 0) {
            a = 0;
            b = _counter;
            _counter = 0;
            return;
        }
        uint _c = _counter;
        _counter = b;
        a = _c;
    }
}
