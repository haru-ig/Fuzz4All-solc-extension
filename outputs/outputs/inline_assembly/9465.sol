pragma solidity ^0.8.0;
struct F {
  uint constant value = 1;
}
struct G {
  uint constant value = 2;
}
contract Outer {
  function test(uint, uint) public pure {
    F f;
    G s;

    assembly {
      counter := f.value + counter + g.value;
      counter := counter.sub(f.value)
      counter := counter.add(100)
      counter := 0
    }
  }
}
