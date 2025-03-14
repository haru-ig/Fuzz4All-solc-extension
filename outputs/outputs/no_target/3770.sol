pragma solidity ^0.8.0;
contract E2 {
    uint256 a;
    uint256 x;
    uint256 f;
    uint256 b;

    function z() public {
        x = 1;
        f = a^1+x^1 + b^2;
    }

    function w() public {
        b = 1;
        x = a/b+g^3;
    }

    function v() public {
        x = 1;
        if(b < c) {
            b = 2;
        } else  {
            b = 1;
        }
    }

    function u() public {
        b = 1;
        l = a+x+k/x;
    }

    function t() public {
        b = 1;
        t = a+x+k;
        if(t < k+l) {
            b = 2;
        }
    }

    function s() public {
        a = 1;
        b = 1;
        if(not b) { a = (2/3);}
        x = 1;
        f = a+b^3;
    }

    function q() public {
        u();
        x = 2;
        f += b^2;
    }

    function p() public {
        b = 1;
        h();
        f = 2-a+c^a+f^l;
        f += b^3;
    }

    function o() public {
        b = 1;
        u();
        f = a/x^2;
    }

    function m() public {
        b = 1;
        o();
        v();
        s();
        if(a+b) { x = 1; v(); } else { v(); }
    }

    function n() public {
        b = 1;
        x = 2;
        f = ((2*x)^3)-(2*x)/(3*x)^2+c^(2/(x*x))+f;
        f = ((2*x)^4)-(2*x)/(3*x)^3-a^2/x-y^(2/(x*x))+f;
        f = ((2*x)^5)-(2*x)/(3*x)^4+a^(2/(x*x))+(y^(2/(x*x)))+f;
    }

    function l() public {
        b = 1;
        m();
        x = 1;
        v();
        s();
        v();
        t();
        u();
        h();
        i();
        h();
        p();
        i();
        a = 2; b = 1;
        v();
        z();
        i();
    }
}
