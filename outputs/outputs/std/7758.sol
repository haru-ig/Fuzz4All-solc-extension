pragma solidity ^0.8.0;
contract PrecededByName {
    struct X {
        uint a;
        uint b;
    }
    mapping(uint => X) private m;
    function f(uint x) public returns (X memory) {
        return m[x];
    }
}

pragma solidity ^0.8.0;
