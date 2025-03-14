pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {assert(a == 5);} }
contract CA { function f(uint256 a) public pure {A a;} }
contract BC { function f(uint256 b1, uint256 b2) public pure {B b;} }
contract CC { function f(uint256 a) public pure {C cc;} }
contract CAA { function f(uint256 a) public pure {CA ca;}  }
contract CAAB { function f(uint256 a) public pure {CAA ca;} }
contract CCAB { function f(uint256 a) public pure {CAAB ca;?> }
contract CCA { function f(uint256 a) public pure {CAAB ca;} }
contract AAA { function f(uint256 a) public pure {CAA ca} }
contract AABB { function f(uint256 a) public pure {AACA ca;} }
contract CCAA { function f(uint256 a) public pure {CAA cc;} }
contract CCCAA { function f(uint256 a) public pure {CAA aa;} }
contract AA { function f(uint256 a, uint256 b) public pure {assert(a == 3);} }
contract AAC { function f(uint256 a) public pure {AA ca;} }
contract ABC { function f(uint256 a, uint256 b) public pure {B b;} }
contract ABCC { function f(uint256 a, uint256 b) public pure {AA ca;} }
contract ABCAA { function f(uint256 a, uint256 b) public pure {AA ca;} }
contract B { function f() public pure {} }
contract AB { function f() public pure {} }
contract ABAC { function f(uint256 a, uint256 b) public pure {A a;} }
contract AABC { function f(uint256 a, uint256 b) public pure {CC cc;} }
contract C { function f() public pure {}
