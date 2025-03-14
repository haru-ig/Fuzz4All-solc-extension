pragma solidity ^0.8.0;
contract A { function f(uint256) public {assert(true);} }
contract B { function f(uint256 a) public {assert(a > 0);} }
contract BAB { function f(uint256 a) public {assert(a >= 0);} }
contract BAA { function f(uint256 a) public {assert(a < 0);} }
contract BBB { function f(uint256 a) public {assert(a < 0);} }
contract BABB { function f(uint256 a) public {assert(a <= 0);} }
contract BABCA { function f(uint256 a) public {assert(a >= 0);} }
contract BAC { function f(uint256 a) public {assert(a == a);} }
contract BADD { function f(uint256 a) public {assert(a + 1 >= 2);} }
contract BC { function f(uint256 a) public { a += 1; assert(a == 2);} }
contract CA { function f(uint256 a) public {a += 1; assert(a == 1);} }
contract CB { function f(uint256 a) public {a += 1; assert(a == 2);} }
contract CC { function f(uint256 a) public {a += 1; assert(a == 3);} }
contract CCDC { function f(uint256 a) public {a += 1; assert(a == 3);} }
contract CDDDD { function f(uint256 a) public {a += 1; assert(a == 4);} }
contract BCCCC { function f(uint256 a) public {a += 1; assert(a == 4);} }
contract AB { function f(uint256 a) public {return A()} }
interface I { function f(uint256) public pure {} }
contract BCAC { function f(uint256 a) public{ B a; assert(a.f(a) == 1);} }
contract BACDC { function f
