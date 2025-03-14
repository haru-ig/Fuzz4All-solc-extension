pragma solidity ^0.8.0;
contract Mutation
{
    uint a;
    uint b;
    constructor() {
        a = 20;
    }
    function mutate() public {
        a = 10;
    }
}
contract C
{
    function foo() public pure {
        a();
    }
    function bar() public pure {
        b();
    }
    function a() public pure {
        c();
    }
    function c() public pure {}
}
contract Contract
{
   function f() public isMutator() {}
   modifier isMutator { require(true, "Only mutator should be used"); };
}
contract C1 is Mutation, Contract
{
}
contract C2 is Computation, Contract
{
}
