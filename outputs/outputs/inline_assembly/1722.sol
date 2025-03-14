pragma solidity ^0.8.0;
contract MutatorS17 {
uint i = SIZE - 1;
    function mutate() public {
    assert(i > 0);
    i -= ONE;
    c = MUL32X16(1, i);
  }
}
