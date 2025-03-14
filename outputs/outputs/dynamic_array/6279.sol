pragma solidity ^0.8.0;
struct s {
    uint a;
    uint b;
}
function f(s memory mem) public {
    s storage a;
    a = mem;
    a.b = 3;
    assert(a.b == 2);
}
function g(s memory mem) public {
    s storage a;
    a = mem;
    delete a.b;
    assert(a.b == 2);
}
