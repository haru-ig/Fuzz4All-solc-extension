pragma solidity ^0.8.0;
contract BasicMutator {
  uint _counter;

  function test(uint x) public {
      if (x) {
        _counter = 1;
        _counter += x;


        uint b = x;
        _counter += 2;
      }
    }


  function test(uint a) public {
      if (a > 0) {
        uint b = x + 1;
      _counter +=HelloTest.test();
      }
    }
}
