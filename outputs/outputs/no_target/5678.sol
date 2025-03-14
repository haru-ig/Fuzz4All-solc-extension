pragma solidity ^0.8.0;
contract Foo{
    bool constant internal c = true;
    bool public b;
}
contract Mixin{
    uint f;
    constructor() public {
        b =!c;
        b = b;
        f = 0xfffffff;
    }
    function get(uint _s1) public view returns (uint)  {
        if ( b ) revert("Foo::get:0");
        return b;
    }
}
contract C{
    function f1() public pure {
        c();
    }
    function c() public pure {
        b();
        if( b ) {
            b;
        }
    }
    function b() public pure {
        a();
    }
    function a() public pure {
        b;
    }
}
contract D{
    uint constant internal x = 0xfffffffc;
    uint constant internal y = 0xfffffffc;
    function f(uint p) public pure {
        unchecked{
            unchecked{
                b(p);
                b(y);
            }
        }
    }
    function b(uint p) public pure {
    }
}
contract E is Mixin, C{
    uint constant internal z = 0xfffffffc;
    function g() public pure {
        b(z);
        b(z);
    }
    function e(uint p) public pure {
        b(p);
    }
    function b(uint p) public pure {
        a();
        unchecked {
            unchecked {
                v(x);
            }
        }
    }
    function a() public pure {
        b(x);
    }
    function v(uint p) public pure {
        b(p);
    }
}
contract F is Mixin, C, Mixin, D{
    uint constant internal w = 0xfffffffc;
    uint constant internal x = 0xffffffff;
    uint constant internal x2 = 0xc081;
    function g() public pure {
        b(z);
        b(w);
        b(x2);
        b((x + x) >> y);
        b(0xff);
    }
    function f0(uint p) public pure {
        b(z >> y);
        b(z);
        b(w);
        b(x2);
        b((x + x) >> y);
        b(0xff);
    }
    function b(uint p) public pure {
        a();
        unchecked {
            unchecked {
                v(z);
                v(x + x);
                v(x + x + 1);
                v(k(p));
                unchecked {
                    unchecked {
                        unchecked {
                            unchecked {
                                v(0x1000000000000000000000000000000000);
                                v(0x5555555555555473);
                                v(0x5555555555555f65);
                                v(0xfffffffffffffffff);
                            }
                        }
                    }
                }
            }
        }
    }
