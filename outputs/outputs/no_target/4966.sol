pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {a += 2;} }
contract B { function f(uint256 a) public pure {emit LogSomething(a);} }
contract BC { function f(uint256 a, uint256 b) public pure {b += a;} }
contract CA { function f(uint256 a) public pure {emit LogSomething(a);}  }
contract CB { function f(uint256 a) public pure {emit LogSomething(a-1);} }
contract CCB { function f(uint256 a) public pure {a -= 2;} }
contract CC { function f(uint256 a) public pure {a += 2;} }
contract CCC { function f(uint256 a) public pure {assert(a > 5);} }
contract CCCB { function f(uint256 a) public pure {assert(a > 5);} }
contract CCCC { function f(uint256 a) public pure {a -= a / 2;} }*/
