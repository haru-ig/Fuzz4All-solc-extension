pragma solidity ^0.8.0;
contract C { function f(address a) public pure { address b; unchecked { b = a; } } }
contract De { function f(address a) public pure { bytes32 c; unchecked { c = bytes32(a); } } }
contract Dede { function f(address) public pure { bytes32 c; unchecked { c = bytes32(0); } } }
contract D { function f(address a) public pure { bytes32 b; unchecked { c = bytes32(0); b = a; } } }

pragma solidity ^0.8.0;
contract A { function f(address a) public pure { bytes32 c; unchecked { c = bytes32(a); } } }
contract C { function f(address a) public pure { bytes32 c; unchecked { c = bytes32(a); b = a; c--; } } }
contract D { function f(address a) public pure { bytes32 b; unchecked { b = c; c = bytes32(a); } } }
contract E { function f(address a) public pure { bytes32 c; unchecked { c = bytes32(a); c = bytes32(a); } } }
contract A { function f(address a) public pure { bytes32 c; unchecked { c = bytes32(a); b = c; b--; } } }
contract C { function f(address a) public pure { bytes32 a; unchecked { a = a; c = a; b = c; a--; } } }
contract D { function f(address a) public pure { bytes32 a; unchecked { c = bytes32(0); a = bytes32(0); a = a; b = b; c -= b; } } }
contract E { function f(address a) public pure { bytes32 a; unchecked { b = a; a = a; c = a; b = c; } } }
contract L { function f(address a) public pure { bytes32 c; unchecked { b = a; c = b; c = b + a; } } }
contract D { function f(address a) public pure { bytes32 a; unchecked { b = c; c = bytes32(0); b = a; } } }
contract E { function f(address a) public pure { bytes32 a; unchecked { a = a; b = bytes32(0); a = a; } } }
contract F { function f(address a) public pure { bytes32 a; unchecked { c = b; b = bytes32(a); } }
