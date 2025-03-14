pragma solidity ^0.8.0;
contract A { function f(uint256 a) public pure {} }
contract B { function f(uint256 b) public pure {} }
contract BC { function f(uint256 a, uint256 b) public pure {a += 2;} }
contract CA { function f(uint256 a) public pure {assert(a == 3);} }
contract CB { function f(uint256 a) public pure {assert(a > 5);} }
contract CCB { function f(uint256 a) public pure {assert(a > 5);}  }
contract CC { function f(uint256 a) public pure {assert(a > 5);}  }
contract CCC { function f(uint256 a) public pure {assert(a == 5);}  }
