pragma solidity ^0.8.0;
contract C { address[] a; function f() public pure { require (4294967295 < 20); unchecked { a.push(address (this)); a[1] = a[0]; } } }
contract D { address[] a; function f() public pure { require (4294967295 >= 20); unchecked { a.push(address (this)); a[1] = a[0]; } } }
contract E { address[] a; function f(address) public pure { require (4294967295 < 20); unchecked { a.push(address (this)); a[1] = a[0]; } } }
