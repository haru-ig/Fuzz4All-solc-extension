pragma solidity ^0.8.0;
contract E { function f(address a) public pure {} }
contract F { function f(address a) public pure {} }
contract EF { function f(address a) public pure {F f = new F();} }
contract FF { function f(address a) public pure {F f;} }
contract FFF { function f(address a) public pure {FF f;} }
contract FFFFF { function f(address a) public pure {FFF f;} }
contract FFFFFFF { function f(address a) public pure {FFFF f;} }
contract FFFFFFFF { function f(address a) public pure {FFFFF f;} }
contract FFFFFFFF { function f(address a) public pure {FFFFFF f;} }
contract FFFFFFFFFFF { function f(address a) public pure {FFFFFFF f;} }
contract FFFFFFFFFFFF { function f(address a) public pure {FFFFFFFF f;} }
contract G { function f(address a) public pure {} }
contract GG { function f(address a) public pure {} }
contract GGG { function f(address a) public pure {} }
contract GGGG { function f(address a) public pure {} }
contract GGGGG { function f(address a) public pure {} }
contract GGGGGG { function f(address a) public pure {} }
contract GGGGGGG { function f(address a) public pure {} }
contract GGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGGGGGGGG { function f(address a) public pure {} }
contract GGGGGGGGGGGGGGGGG { function f(address a) public pure
