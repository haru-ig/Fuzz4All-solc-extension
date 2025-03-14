pragma solidity ^0.8.0;
contract D { constructor(E arg) public { uint256 v; assembly{ mstore(add(v,0x20),0xe1dcab8c18f45774) } } bool public i;}contract E { uint256 x; uint256 y; function f() public pure { uint256 x; uint256 y; assembly {x:=add(x,x)} {y:=add(x,y)} } } contract C { bool public c; bool g; uint public d; uint[] e; uint[] f; bool j; uint k; object o; }

pragma solidity ^0.8.0;
contract D { constructor(E arg) public { uint256 v; assembly{ mstore(add(v,0x20),0xe1dcab8c18f45774) } } bool public i;}contract E { uint256 x; uint256 y; function f() public pure { uint256 x; uint256 y; assembly {x:=add(x,0x1)} {y:=add(x,x)} } } contract C { bool public c; bool g; uint public d; uint[] e; uint[] f; bool j; uint k; object o; }

pragma solidity ^0.8.0;
contract C { bool public c; bool g; uint public d; uint[] e; uint[] f; bool j; uint k; object o; } contract D { E e; constructor(C arg) public { e.x = E.f() } } contract E { uint public f; function g() public pure { uint x; uint y; assembly {x:=add(x,x) x:=add(x,x) x:=add(x,x) x:=add(x,x)}  y:=add(y,x) } return x + x + x + y; }
