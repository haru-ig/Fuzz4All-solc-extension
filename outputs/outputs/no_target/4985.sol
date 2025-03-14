pragma solidity ^0.8.0;
contract A { function f(uint256 a) public view returns(uint{ }){ return a; } }
contract BC { function f(uint256 a, uint256 b) public view {a += 2;} }
contract CA { function f(uint256 a) public view {assert(a > 0);} }
contract CB { function f(uint256 a) public view {assert(a >= 0);} }
contract CCB { function f(uint256 a) public view {assert(a >= 0);}  }
contract CC { function f(uint256 a) public view {assert(a >= 0);}  }
contract CCC { function f(uint256 a) public view {assert(a == 0);} }
contract BC2 { function f(uint256 a) public view {a += 2;} }
