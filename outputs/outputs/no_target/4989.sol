pragma solidity ^0.8.0;
contract A {uint256 public a; modifier B(uint256 b) {a = 2 * b;} }
contract BC {uint256 public a; modifier B(uint256 b) {a = 3 - b;} }
contract CA { function g(uint256 a, uint256 b) public {a++;} }
contract CB { function g(uint256 a, uint256 b) public {assert(a == b-2);} }
contract CCB { function g(uint256 a, uint256 b) public {assert(a < b);}   }
contract CC { function g(uint256 a, uint256 b) public {a = 2 + b;} }
contract CCC { function g(uint256 a, uint256 b) public {a--;}    }
