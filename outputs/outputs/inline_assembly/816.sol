pragma solidity ^0.8.0;
contract Mutator {
    uint public a;
    uint public b;
    modifier onlyIncrement {
      a++;
      b++;
      _;
    }
     function Increment(uint a, uint b) public onlyIncrement{
        if (a == 0) {
          b = 0;
          a = _counter + 1;
          _counter = 0;
        } else {
          b = _counter + 1;
          a = 0;
        }
    }
    function IncrementMore(uint a, uint b) public {
        if (a == 0) {
            b = 0;
            a = _counter + 1;
            _counter = 0;
            return;
        }
        uint _c = _counter;
        _counter = _counter + (b - 1);
        a = _c;
    }
}
