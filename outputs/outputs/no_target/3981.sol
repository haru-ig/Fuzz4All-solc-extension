pragma solidity ^0.8.0;
 contract C { I f; mapping(uint => address) public f; }

pragma solidity ^0.8.0;
contract X { string[] public a; uint8 p; }

pragma solidity ^0.8.0;
 contract M { struct S { address a; int16 b; string c; uint128 d; }[] public i; mapping(uint => S) public j; }

pragma solidity ^0.8.0;
 interface II { function callme() external; }
 contract ZY { II y; }
interface X { function f() external; }
contract F is X { function a(X a) external { } }
contract D { F[] public f; }
function f(X x) public returns (bytes4 f) {x.f[0].f; }
