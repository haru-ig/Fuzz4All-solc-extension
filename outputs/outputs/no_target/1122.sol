pragma solidity ^0.8.0;
contract SemanticMutation11
{
    uint a;
    struct State { uint x; bool b; }
    State x;
    function test() {
        x.x = 1;
        a = unchecked(a * 2);
        a = x.x;
    }
}
