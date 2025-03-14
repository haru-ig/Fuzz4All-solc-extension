pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public pure { B().f(b + 1); } }

pragma solidity ^0.8.1;
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public { A().f(b << 1); } }
contract BC { function f(uint256 a, uint256 b) public pure {} }
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public { B().f(b); } }
contract BC { function f(uint256 a, uint256 b) public pure {} }
