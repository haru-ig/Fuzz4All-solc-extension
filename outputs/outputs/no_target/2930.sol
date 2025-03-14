pragma solidity ^0.8.0;
contract simple2 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = 8;
        a = b * i;
        b = b / c;
        c = a % 2;
        d = b / a;
        e = b % c;
    }
}

contract simple3 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = a / c;
        d = b / a;
        e = b % c;
    }
}
contract simple4 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = c / a;
        d = c / d;
        e = c % a;
    }
}
contract simple5 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = d / e;
        d = b / d;
        e = b % b;
        c = e * e;
    }
}

contract simple6 {
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
    constructor() public {
        uint i = b;
        d = c;
        e = 2;
        uint j = c;
        i++;
        uint k = 2;
        i++;
        a = i;
    }
}
contract simple7 {
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
    constructor() public {
        uint i = b;
        d = h;
        e = 3;
        uint j = h;
        i++;
        uint k = 3;
        i++;
        a = i;
    }
}

contract simple8 {
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

    constructor() public {
        d = e;
        h = j;
        i = 4;
        uint j = 3;
        k = 2;
        a = i;
    }
}
contract simple9 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e
