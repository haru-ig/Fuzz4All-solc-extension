pragma solidity ^0.8.0;

contract C {
    function foo(D storage d, uint256 a) public {
        d.b[a] = d.b[a] + 1;
    }
    function bar(D storage storaged, uint256 a, uint256 b) public {
        d.b[b] = d.b[b] + 2;
        storaged.b[a] = b;
    }
    function bar2(D storage d, uint256 a, D storage d2) public {
        d.b[a] = d.b[a] + 1;
        d2.b[a + 1] = b;
    }
    function bar3(D storage d, uint256 a, uint256 b) public {
        d.b[a - 2] = a;
        d2.b[b] = a + 2;
    }
    function bar4(D storage d, uint256 a, uint256 b) public {
        d.b[a + 1] = b;
        d2.b[b] = a + 1;
    }
    function bar5(bool b, uint256 x) public {
        if(x > 0) {
            require(b);
        } else {
            require(!b);
        }
    }
    function bar6(bool b, uint256 x, uint256 y) public {
        a++;
        require(x + 1 > y || x + 1 < y || b);
    }
    function bar7(bool b, uint256 x, uint256 y, uint256 z) public {
        require(b);
        uint256 b_ = 0;
        uint256 c_ = 1;
        d.a = d.a + 1;
        c_ = d.b[c_];
        a = a * 2;
        b_ = b * (x + 1);
        b = b | 2;
        b_ *= y;
        b = b_ & 1;
