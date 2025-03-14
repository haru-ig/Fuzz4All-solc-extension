pragma solidity ^0.8.0;
contract C {
        uint a;
        uint b;
        address addr;
        address addr1;
        R2 r;
    function C(uint _x) public {
        b = _x;
    }
    function f() public {
        a = 1;
    }
}

pragma solidity ^0.8.0;
contract C {
        uint a;
        uint b;
        address addr;
    constructor(uint _x) public {
        b = _x;
        a = a*a*a*a*a*b + b*b*b;
    }
    function seta(uint _x) public {
        a = _x;
        b = a*a*b;
        b = b + a;
    }
    function setb(uint _x) public {
        b = _x;
        r.seta(a);
        r.setb(b);
        a = a*a;
    }
    function swap() public returns (uint) {
        return a + b*b*b*b*b + r.get();
    }
    function get() public view returns (uint) {
        return r.get();
    }
}
