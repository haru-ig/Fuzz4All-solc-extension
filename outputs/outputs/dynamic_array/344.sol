pragma solidity ^0.8.0;
contract X{
    bool public a;
    struct S{uint a; uint b;}
    S[] public b;
    uint public f;
    uint public g;
    function f(S s1, S s2) public{
        b.push(s1);
        b.push(s2);
        uint[4] memory arr = new uint[](4);
        o = arr;
    }
    S[4] o;
}
