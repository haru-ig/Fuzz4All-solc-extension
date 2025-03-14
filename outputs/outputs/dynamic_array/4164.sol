pragma solidity ^0.8.0;
contract C {
    bool public b = true;
    constructor () public {
      for (uint i = 31; i > 0; i--) {
        bool a = i % 2 == 1;
        bool r = bool(bool(a) * b);
        if (r!= i) revert();
      }
    }
}

pragma solidity ^0.8.0;
contract B {
    bool public a;
    function f() public {
        a = true;
        for (uint i = 31; i > 0; i--) {
            bool a = bool(bool(a)) * a;
        }
        assert(a ||!a);
    }
}

pragma solidity ^0.8.0;
contract A {
    uint public x;
    uint public D;
    mapping(uint => uint[]) y;
    constructor() public {
        x = 110;
        D = 230;
        y[10] = new uint[](12);
    }
    function f() public {
        for (uint i = 1; i <= 12; i++) {
            y[i] = new uint[](10);
            y[i][0] += 1;
        }
    }
}

pragma solidity ^0.8.0;
contract E {
    uint public D;
    mapping(uint => uint[]) y;
    constructor () public {
        for (uint i = 0; i < 5; i++) {
            D += 1;
            y[10] = new uint[](12);
        }
    }
    function f() public {
        for (uint i = 1; i <= 5; i++) {
            y[i] = new uint[](10);
            y[i][0] += 1;
        }
    }
}

pragma solidity ^0.8.0;
contract D {
    uint public D;
    mapping(uint => uint[]) x;
    constructor () public {
        D = 125;
    }
    function f() public {
        for (uint i = 0; i < 6; i++) {
            x[10] = new uint
