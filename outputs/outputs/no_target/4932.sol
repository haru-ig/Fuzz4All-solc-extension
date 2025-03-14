pragma solidity ^0.8.0;
contract B { function f(bool) public pure { require (4294967295 == 20); unchecked { 20 = 30; } } }

pragma solidity ^0.8.0;
contract B { function f(bool) public pure { require (4294967295 == 20); unchecked { 20 = 30; unchecked { } } } }

pragma solidity ^0.8.0;
contract B { function f(bool) public pure { require (4294967295 == 20); unchecked { 20 = 30; unchecked { unchecked { 20 = 30; unchecked { } } } unchecked { unchecked { } } } } }
