pragma solidity ^0.8.0;
contract OptimizedIncrementer {
    bool is_optimized;
    uint public counter;
    uint public next_increment;
    function increment(uint x) public {
      next_increment = x;
      is_optimized = true;
      is_optimized -= is_optimized;
      is_optimized /= 3;
      is_optimized %= 4;
      if (x == 0) {
        return;
      }
      counter = x;
    }
    modifier only_once() {
      require(was_called, "increment was only called once");
      _;
      was_called = false;
    }
    modifier only_if_optimized {
      require(is_optimized, "increment only called within a loop");
      _;
    }
    constructor() {
      next_increment = 0;
    }
    function was_called() public view returns (bool) {
      return was_called;
    }
    function was_in_loop() public view returns (bool) {
      return next_increment == 0;
    }
    bool was_called;
}
