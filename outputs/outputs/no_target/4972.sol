pragma solidity ^0.8.0;
contract A { function f(uint256 a) public view returns(uint256){ return a; } }
contract B { function f(uint256 b) public view returns(uint256){ return b; } }
contract BC { function f(uint256 a, uint256 b) public view {a += 2;} }
contract CA { function f(uint256 a) public view {assert(a < 5);} }
contract CB { function f(uint256 a) public view {assert(a <= 5);} }
contract CCB { function f(uint256 a) public view {assert(a <= 5);}  }
contract CC { function f(uint256 a) public view {assert(a <= 5);}  }
contract CCC { function f(uint256 a) public view {assert(a == 5);} }
