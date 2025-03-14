pragma solidity ^0.8.0;
contract Caller
{
  function call() public {
    Mutate mut = Mutate(someContract);
    mut.sendAndCall(someContract, 1, "hello".encode());
    uint x = Mutate(someContract).sendAndCall(someContract, 1, "world".encode());
  }
}
