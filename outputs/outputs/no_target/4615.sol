pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract A {
    uint[] b;
    uint16[79] m;
    function g() public pure {
        m[60] = 10;
        b[1] = 3;
        b[2] = 30;
    }
    function f() public pure {
        b[0] = 14;
        b[1] += 3;
        b[2] *= 31;
        b[3] = b[5];
        b[4] += b[5];
        b[5] *= b[79];
        b[79] <<= b[5];
    }
}

pragma solidity ^0.8.0.17;

contract C {
    function f() public {
        A a;
        A c;
        A d;
        A e;
        A f;
        b _b;
        if (x) {
            c = a;
        } else {
            c = new A();
        }
        if (x) {
            if(a.f()) {
                c = new A();
            }
        }
        if (x) {
            if(a.f()) {
                if(c.f()) {
                    f = a;
                }
            }
        }
        if (x) {
            if(a.f()) {
                e = a;
            }
        }
        if (x) {
            if(a.f()) {
                d = d;
            } else {
                f = a;
            }
        }
        if (x) {
            if(a.f()) {
                if(e.f()) {
                    if(f.f()) {
                        d = d;
                    }
                }
            }
        }
        if (x) {
            if(a.f()) {
                if(e.f()) {
                    if(f.f()) {
                        e = new A();
                    }
                }
            }
        }
        if (x) {
            if(a.f()) {
                if(e.f()) {
                    if(f.f()) {
                        return;
                    }
                }
            }
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x) {
            a.f();
        }
        if (x &&!b) {
            d.g();
        }
    }
}
