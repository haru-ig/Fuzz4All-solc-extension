pragma solidity ^0.8.0;
contract ModMutator
{
  uint a = 123;
  uint b = 456;
  uint public c;
  function my_add() public pure
    {
    c = a + b;
    }
  function set_a(uint aArg) public pure
    {
    a = aArg;
    }
  function set_b(uint bArg) public pure
    {
    b = bArg;
    }
}
contract ContractWithMutators {
  ModMutator m;
}

pragma solidity ^0.8.0;
contract ContractWithMutator
{
  ModMutator m = new ModMutator();
  Mutator mutator_object = new Mutator();
  function some_function() public pure
    {
    uint y;
    uint x;
    x = mutator_object.my_add();
    y = mutator_object.set_a(123);
    x = mutator_object.set_b(123);
    }
}
