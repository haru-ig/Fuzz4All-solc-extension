pragma solidity ^0.8.0;
contract Mutator2 {
struct E { uint256 x; uint256 y; }
bytes32 constant C;
bytes32 constant F;
struct C {
e: E;
m: E;
t: E;
f: E;
}
E constant EMPTY = E(1, 1);
E constant ONE = E(0, 1);
mapping (bytes32 => C) _store;
modifier push(bytes32 hash){
require(_store[hash].x == EMPTY, "Invalid insertion");
_store[hash].x = ONE;

_store[F][hash].m = f;
_store[E][hash].m = t;
_store[C].f = hash;
return;
}
function set(bytes32 hash, E _x, E _y) public push(hash){
_store[hash].e = _x;
_store[hash].m = _y;
}

function get(bytes32 hash) public view returns (
E x,
E y){
x = _store[hash].e;
y = _store[hash].m;
}
}
