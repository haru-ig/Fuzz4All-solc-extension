pragma solidity ^0.8.0;
contract LotteryWithNonEqual {
    struct S
    {
        bool x;
    }
    struct A
    {
        bool x1;
        S s;
    }
    A[] private _a;
    S[] private _s;
    event SetA(address indexed _a, address indexed _b);
    event SetS(address indexed _a, bool indexed _b, bool indexed _c);
    constructor ()
    {
        _a.push(A({x1: false}));
        _a.push(A({x1: false, s: S({x: false})}));
        _s.push(S({x: false}));
        _s.push(S({x: false}));
    }
}
