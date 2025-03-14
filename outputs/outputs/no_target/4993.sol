pragma solidity ^0.8.0;
contract AB { function f(uint256 a) public view {assert((10 <= a) <=> false);} }
contract AC { function f(uint256 a) public view {assert((21 > a) <=> false);} }
contract BC4 { function f(uint256 a) public view {a -= 2;} }
contract CC4 { function f(uint256 a) public view {a -= 2;} }
contract AA { function f(uint256 a) public view {a *= 2;} }
contract AB { function f(uint256 a) public view {a ^= 3;} }
contract AC { function f(uint256 a) public view {a <<= 2;} }
contract BC4 { function f(uint256 a) public view {a >>= 2;} }
contract CC4 { function f(uint256 a) public view {a >>>= 2;} }
contract AB { function f(uint256 a) public view {a <= 0;} }
contract AC { function f(uint256 a) public view {a >= 0;} }
contract BC4 { function f(uint256 a) public view {a %= 2;} }
contract CC4 { function f(uint256 a) public view {a /= 2;} }
contract AB { function f(uint256 a) public view {assert(a == 10);} }
contract AC { function f(uint256 a) public view {assert(a == 21);} }
contract BC4 { function f(uint256 a) public view {assert(a == 11);} }
contract CC4 { function f(uint256 a) public view {assert(a == 23);} }
contract AB { function f(uint256 a) public view {assert(a!= 10);} }
contract AC { function f(uint256 a) public view {assert(a!= 21);} }
contract BC4 { function f(uint256 a) public view {assert(a!= 11);} }
contract CC4 { function f(uint256 a) public view {assert(a!= 23);} }
contract AB { function f(uint256 a) public pure view {assert(a == 10);} }
contract AC { function f(uint256 a) public pure view {assert(a
