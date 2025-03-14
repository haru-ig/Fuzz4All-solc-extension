pragma solidity ^0.8.0;
contract Modifications4_SEM9 {

    function f() public {
        a++ > 5;
    }
    uint256 a;
}

contract Modification6_SEM9 {

    event A(uint a, uint b) ;

    function f() public {
        A(a++, b);
    }
    uint a;
    uint public b;
}
contract Modification7_SEM9 {
    function f() public {
        if (a > b) {
            b = a;
        }
    }
    uint public a;
    uint256 public b;
}
contract Modification10_SEM9 {
    function f() public {
        a;
    }
    uint a;
}
contract Modification12_SEM9 {
    function f() public {
        (uint _, uint x) = (a, b < 5);
    }
    uint a;
    uint256 b;
}
contract Modification17_SEM9 {
    uint a;

    function f() public {
        uint c;
        (a, _, c) = (b, 0, c);
        (a, _, --c) = (b, x, c);

        uint d;
        (_, _, d, c) = (0, b, 0, 0);
        (_, _, --c, d) = (0, b, d, 0);
    }
}
contract Modification18_SEM9 {
    uint a;
    uint256 b;
    uint public x;

    function f() public {
        (x, x) = (a, --b);
    }
}
contract Modification30_SEM9 {
    uint public x;

    function f() public {
        (x, x) = (a, --b);
    }
}
contract Modification31_SEM9 {
    uint public x;

    function f() public {
        (x, x) = (a, b < a);
    }
}
contract Modification32_SEM9 {
    uint public x;

    function f() public {
        (x, x) = (a, b < a);
    }
}
contract Modifications110_SEM9 {
    constructor(uint256 _r, uint256 _s) public {
        r = _r;
        s = _s;
    }
    function f() public returns (uint) {
        uint256 a;
        if (s > 27) a = 1; else a = 2;
        uint256 b;
        if (r > a) b = a; else b = a;
        uint c = (b + s) % a;
