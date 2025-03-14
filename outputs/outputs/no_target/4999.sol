pragma solidity ^0.8.0;
contract AA { function f(uint256 a) public view {assert(a > 0);} }
contract AB { function f(uint256 a) public view {a += 2;} }
contract AC { function f(uint256 a) public view {assert(a > 0);} }
contract BC { function f(uint256 a) public view {a += 2;} }
contract BD9 { function f(uint256 a) public view {assert(a >= 0);} }
contract BE2 { function f(uint256 a) public view {a += 1;} }
contract CF1 { function f(uint256 a) public view {a += 1;} }
contract DF6 { function f(uint256 a) public view {a += 1;} }
contract FF { struct AAA { uint256 a; } function g() public constant returns(AAA) { uint256 _0; AAA memory _1 = AAA(a); uint256 _2 = 3; assert(_2 <= 2); _0 = _1; assert(_0 <= 3); return AAA(_0); } }
contract GG9 { struct AAA { uint256 a; } function f(uint b) public constant returns(AAA) { AAA memory _0; AAA(_0); AAA(_0); _0.a = b; _0.a = b; return AAA(_0); } }
contract HH { struct AAA { uint256 a; } function f(uint b) public constant returns(AAA) { AAA memory _0; AAA(_0); AAA(_0); _0.a = b; _0.a = b; return AAA(_0); } }
contract IG11 { struct AAA { uint256 a; } function f(uint b) public constant returns(AAA) { AAA memory _0; AAA(_0); _0.a = b; _0.a = b; _0.a = b; _0.a = b; _0.a = b; _0.a = b; return AAA(_0); } }
contract JG5 { struct AAA { uint256 a; } function f(uint b) public constant returns(AAA) { AAA memory _0; AAA(_0); _0.a = b; _0.a = b; _0.a = b; _0
