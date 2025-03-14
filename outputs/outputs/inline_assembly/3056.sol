pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b=2;
  uint public c;
  uint public counter;
  constructor() {
    a=10;
    b=24;
    c=a-b;
    counter=0;
  }
  function M() public {
    a++;
    b--;
    b=10;
    while (counter++ < 3) {
      a++;
      b=10+b;
      c++;
    }
    c--;

    assert(c==9);
  }
}
