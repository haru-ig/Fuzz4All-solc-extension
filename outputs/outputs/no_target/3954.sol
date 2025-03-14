pragma solidity ^0.8.0;
contract C { function f(uint160) internal pure returns (uint160) { return 1; } }

pragma solidity ^0.8.0;
contract C { modifier foo() {} modifier bar() {} func f() public payable {} function g(uint a) public pure {} }

pragma solidity ^0.8.0;
contract C { bool public a; uint public b; uint public c; uint public d; uint public e; uint public f; uint public g; uint public h; uint public x; uint public y; uint public z; uint public q; uint public p; function f(uint160) internal pure returns (uint160) { a = false; b = 1; c = 0; y = 1; z = 1; q = 1; p = 1; return x; } }

pragma solidity ^0.8.0;
contract C { constructor() { } fallback () { } function f(uint160) internal { } }

pragma solidity ^0.8.0;
contract C { event F (uint value); constructor() { emit F (0); } }
