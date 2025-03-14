pragma solidity ^0.8.0;
contract Mutation_FunctionCaller3 {
  struct Data{
    uint x;
    uint y;
    uint constant value=0xF8B8BD10;
  }
  function call(Data memory d) {
    d.x += d.y;
  }
}
