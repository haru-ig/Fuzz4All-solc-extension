pragma solidity ^0.8.0;
contract A { function f(uint b) public pure {} }
contract B { function f(uint b) public pure {} }
contract BC { function f(uint a, uint b) public pure {a += 2;} }
contract CA { function f(uint b) public pure {assert(b == 3);} }
contract CB { function f(uint a) public pure {assert(a > 5);} }
contract CCB { function f(uint b) public pure {assert(b > 5);} }
contract CC { function f(uint b) public pure {assert(b > 5);} }
contract CCC { function f(uint b) public pure {assert(b == 5);} }
contract CCCC { function f(uint b) public pure {assert(b == 3);}  }
contract CD { function f(uint b) public pure {} }
contract CDCD { function f(uint a, uint b) public pure {a += 2;} }
contract CDC { function f(uint b) public pure {assert(b == 3);} }
contract CDCD { function f(uint a) public pure {assert(a > 5);} }
contract CBCC { function f(uint b) public pure {assert(b == 3);} }
contract CCDD { function f(uint a) public pure {assert(a < 3);} }
contract CCDDD { function f(uint a) public pure {assert(a == 2);} }
contract CBC { function f(uint a, uint b) public pure {a += 2;} }
contract CC { function f(uint a) public pure {assert(a == 3);} }
contract CCDD { function f(uint b, uint a) public pure {assert(b == 3);} }
contract E { function f(uint256 a) public pure {} }
contract EX { function f(uint256 a) public pure {} }
contract EE { function f(uint256 a) public pure {a /= e;} }
contract EC { function f(uint256 a) public pure {a /= e;} }
contract EEC { function f(uint256 a
