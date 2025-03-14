pragma solidity ^0.8.0;
contract Mutator {
  Caller public c;
  function foo(Caller s) public payable {
    c.foo.value(10**27)();
  }
}
contract Test {
    Mutator m;
    constructor (address _m) public {
        m = Mutator(_m);
    }
    uint amount = 1 finney;
    receive () public payable { }
    fallback() external { amount -= 5 }
}
