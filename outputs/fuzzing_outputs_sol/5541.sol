pragma solidity ^0.8.0;
contract fallbacksemantic_mutated
{
    fallbacksemantic_static foo;
    event Greeted(bytes a);

    constructor()
    {
        foo();
    }

    fallbacksemantic_static()
    {
        foo.f(bytes(bytes32(1)));
    }

    fallbacksemantic_mutated()
    {
        foo.f(bytes(bytes32(1)));
        foo.Greeted(bytes(bytes32(1)));
    }
}
