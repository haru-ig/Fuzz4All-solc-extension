pragma solidity ^0.8.0;
contract Mutate21b {
    address a;
    address e;
    uint16  cA;
    uint16  dA;
    uint16  eA;
    uint16  fA;
    uint16  hA;
    constructor(uint8 c, uint8 d, uint8 e, uint8 f, uint8 h) {
        cA = c;
        dA = d;
        eA = e;
        fA = f;
        hA = h;
    }
    function test(address a, address e, uint8 c, uint8  d, uint8  e, uint8  f, uint8 h) public {
        a = a;
        e = e;
        cA = c;
        dA = d;
        eA = e;
    }
}

pragma solidity ^0.8.0;
contract Mutate22b {
    address a;
    address e;
    uint8  cA;
    uint8  dA;
    uint8  eA;
    uint8  fA;
    uint8  hA;
    constructor(uint16  c, uint16  d, uint16  e, uint16  f, uint16  h) {
        cA = c;
        dA = d;
        eA = e;
        fA = f;
        hA = h;
    }
    function test(address a, address e, uint16  c, uint16  d, uint16  e, uint16  f, uint16  h) public {
        a = a;
        e = e;
        cA = c;
        dA = d;
        eA = e;
    }
}

pragma solidity ^0.8.0;
contract CallMutants21a {
    address a;
    uint16  c;
    uint16  d;
    uint16  e;
    uint16  f;
    uint16  h;
    constructor(uint8 c, uint8 d, uint8 e, uint8 f, uint8 h) {
        c = c;
        d = d;
        e = e;
        f = f;
        h = h;
    }
    function test(address a, uint16  c, uint16  d, uint16  e, uint16  f, uint16  h) public {
        a;
        uint16  c = c;
        uint16  d = d;
        uint16  e = e;
        uint16  f =
