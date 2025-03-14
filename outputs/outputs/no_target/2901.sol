pragma solidity ^0.8.0;
contract first{
    address a;
    uint b;
    uint c;
    constructor() public {
        a = msg.sender;
        b -= 20;
        c -= 51;
    }
    function check(address r) internal pure {
        assert(a == r);
    }
}
contract second{
    address a;
    uint b;
    uint c;
    constructor() public {
        a = msg.sender;
        b -= 200;
        c -= 500;
    }
    function check(address r) internal pure {
        assert(a == r);
    }
}
contract third{
    address a;
    uint b;
    uint c;
    constructor() public {
        a = msg.sender;
        b -= 500;
        c -= 500;
    }
    function check(address r) internal pure {
        assert(a == r);
    }
}
contract fourth {
    uint a;
    uint b;
    uint c;
    constructor() public {
        a -= 30;
        c -= 90;
    }
    function check(uint256 k1) internal pure {
        assert(20 < k1);
    }
}
contract fifth {
    uint a;
    uint b;
    uint c;
    constructor() public {
        check(a);
    }
    function check(uint256 k1) internal pure {
        assert(a <= 20);
    }
}
contract sixth {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    uint f;
    uint g;
    uint h;
    uint i;
    uint j;
    uint k;
    uint l;
    uint m;
    uint n;
    uint o;
    uint p;
    uint q;
    uint r;
    uint s;
    uint t;
    uint u;
    uint v;
    uint w;
    uint x;
    uint y;
    uint z;
    uint1 p;
    uint8 q;
    uint
