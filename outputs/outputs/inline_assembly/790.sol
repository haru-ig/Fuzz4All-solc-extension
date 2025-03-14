pragma solidity ^0.8.0;
contract Mutator {
uint _counter;
modifier onlyIncrement() {
      _counter ++;
      _;
    }
    function Increment(uint a, uint b) public onlyIncrement{
        if (b == 0) {
          _counter = 0;
        }
        b = _counter++;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
uint _counter;
modifier onlyIncrement() {
      _counter ++;
      _;
    }
    function Increment(uint a, uint b) public onlyIncrement{
      uint c = _counter + 1;
      b = c;
    }
}
