pragma solidity ^0.8.0;
contract SemanticEquivalence3 {
    contract Inner1 { }
    contract Inner2 {
        address x;
        uint y;
        constructor(address x_) {
            x = x_;
        }
        function f() public {
            if (x == x) {
                Inner1(inner()).f();
            } else {
                bytes2 b;
                (bytes2 b_, uint a_) = f();
                assert(b[b_] == b && a == a_);
            }
        }
    }
    contract Mixin {
        function inner() virtual public { }
    }
    contract Caller {
        Mixin x;
        address y;
        mapping(address => uint) public calls;
        constructor() { x = new Mixin(); y = msg.sender; }
        function run() public {
            x.f();
        }
    }
}
