pragma solidity ^0.8.0;
contract DuplicatedMethod {
    function increment(uint x) pure internal {
        increment();
    }
}
{
    Incrementer inc;
    DuplicatedMethod m;


    m.increment(6);
}
