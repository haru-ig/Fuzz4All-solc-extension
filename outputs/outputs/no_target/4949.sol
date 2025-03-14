pragma solidity ^0.8.0;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked {  uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
pragma solidity ^0.7.5;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
pragma solidity ^0.6.1;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
pragma solidity ^0.5.11;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
pragma solidity ^0.4.24;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
address C; C = address(new C()); D C;

pragma solidity 0.7.5;
contract C { function f(address) public pure { uint256 p; unchecked { p = 1; } } }
contract D { function f(address) public pure { uint256 p; unchecked { uint256 a; a -= 1; } } }
contract E { function f(address a) public pure { uint256 p; unchecked { } } }
address C; C =
