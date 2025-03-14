pragma solidity ^0.8.0;
contract Mutate1E {
    uint public _counter;
    function set(uint x) public {
      _counter = x;
    }
    modifier m() {
      set(_counter);
      _counter++;
      _;
    }
}
