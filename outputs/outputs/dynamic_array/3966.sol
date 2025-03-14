pragma solidity ^0.8.0;
contract C {
    uint[2] a;
    uint[2] b;
    constructor() public {
        a[0] = 1;
        a[1] = 2;
        b[0] = 3;
    }
}
contract C {
    uint[] a;
    uint[] b;
    constructor() public {
        a = [1, 2];
        b = [3, 4];
    }
}
contract C {
    function f() public pure returns (uint[] storage) {
        return [a, b];
    }
}
contract C {
    function g() public mutates returns (uint[] storage) {
        return [a, b];
    }
}
contract C {
    uint[] a;
    uint[] b;
    constructor() public {
        a = [1];
        b = [2];
    }
}
contract C {
    uint[2][2] a;
    uint[2][2] b;
    constructor() public {
        a[0] = [1, 2];
        b[0] = [3, 4];
    }
}
contract C {
    uint[2][2] a;
    uint[2][2] b;
    constructor() public {
        a = [1, 2];
        b = [3, 4];
    }
}

pragma solidity=0.8.4;
contract C {
    uint[2] storage a;
    uint[2] storage b;
    mapping(uint[2]) storage b2b;
    constructor() public {
        a[0] = 1;
        b[0] = 2;
        b2b[(2, 1)] = 3;
    }
}
contract C {
    uint[2] a;
    uint[2] b;
    constructor() public {
        a[0] = 1;
        b[0] = 2;
    }
}
contract C {
    struct M {
        uint[2] b;
    }
    M storage m;
    constructor() public {
        m.b[0] = 1;
        m.b[1] = 2;
    }
}
contract C {
    constructor() public {
        uint[2] storage b;
        b[0] = 1;
        b[1] = 2;
    }
}
contract C {
    uint[2][2] storage a;
    uint[2][2] storage
