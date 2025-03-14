pragma solidity ^0.8.0;
library Simple {
  struct Counter{ uint counter; }
  Counter memory counter;
  constructor() public {
    counter.counter++;
  }
  function change() public {
    counter.counter = counter.counter + 1;
  }
}
