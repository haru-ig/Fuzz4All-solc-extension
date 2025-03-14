pragma solidity ^0.8.0;
contract A { function f(uint256 a) public view returns(uint256){ return a; } }
contract BC { function f(uint256 a, uint256 b) public view {a += 2;} }
contract CA { function f(uint256 a) public view {assert(a > 0);} }
contract CB { function f(uint256 a) public view {assert(a >= 0);} }
contract CCB { function f(uint256 a) public view {assert(a >= 0);}  }
contract CC { function f(uint256 a) public view {assert(a >= 0);}  }
contract CCC { function f(uint256 a) public view {assert(a == 0);} }
contract BC2 { function f(uint256 a) public view {a += 2;} }
contract CA2 { function f(uint256 a) public view {assert(a > 0);} }
contract CB2 { function f(uint256 a) public view {assert(a >= 0);} }
contract CCB2 { function f(uint256 a) public view {assert(a >= 0);}  }
contract CC2 { function f(uint256 a) public view {assert(a >= 0);}  }
contract CCC2 { function f(uint256 a) public view {assert(a == 0);} }
contract B { function g() public view returns(uint256) {return 1;} }
contract BC2 { function g() public view returns(uint256) {return 1;} }
contract E { function f(uint256 a) public view returns(uint256) {return 0;}}
contract E2 { function f(uint256 a) public view returns(uint256) {return 0;}}
contract E3 { function f(uint256 a) public view returns(uint256) {return 1;}}
contract E4 { function f(uint2
