pragma solidity ^0.8.0;
contract PrecededByName {
    struct X {
        uint a;
        uint b;
    }
    mapping(uint => X) private m;
    constructor() public {}
    function f(uint x) public returns (X memory) {
        return m[x];
    }
}
contract PrecededByName {
    struct X {
        uint a;
        uint b;
    }
    mapping(uint => X) private m;
    constructor(uint a) public {
        m[a] = X(a, b);
    }
    function f(uint x) public returns (X memory) {
        return m[x];
    }
}
