pragma solidity ^0.8.0;
contract Mutator {
    function foo(uint x) public pure {
        if (uint(x) % 2!= 0) throw;
    }
}
contract Example{


    fallback Mutator M;


    fallback Mutator F;
}
contract Mutator{
    function foo(uint x) public pure {
        assert(x % 2!= 0);
    }
}
