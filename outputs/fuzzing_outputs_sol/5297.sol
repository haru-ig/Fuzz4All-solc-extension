pragma solidity ^0.8.0;
contract Caller5
{
    Fallback5 public fallback;
    Fallback5 public newFallback;

    constructor(Fallback5 _fallback, Fallback5 _newFallback)
    {
        fallback = _fallback;
        newFallback = _newFallback;
    }

    fallback5()
    {
        fallback.c.value(1 ether)(address(0));
        fallback.d.value(1 ether)(address(0));
        fallback.a.value(1 ether)(0);
        fallback.b.value(1 ether)(0);
    }

    constructor()
    {
        fallback.c.value(1 ether)(address(0));
        fallback.d.value(1 ether)(address(0));
        fallback.a.value(1 ether)(0);
        fallback.b.value(1 ether)(0);
    }
}
