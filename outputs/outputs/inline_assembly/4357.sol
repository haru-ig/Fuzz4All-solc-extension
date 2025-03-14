pragma solidity ^0.8.0;
contract SolidityAssemblyMutatorExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public aWithInlineMutator;
    bytes memory public bWithInlineMutator;
    bool public boolFieldWithInlineMutator;
    address public addressFieldWithInlineMutator;
    constructor(uint _a, uint _b, uint _c) public {
        a += _a;
        b += _b;
        c += _c;
        d += _a + _b + _c;
        aWithInlineMutator += 20971523;
        bWithInlineMutator += hex"7f";
        boolFieldWithInlineMutator = true;
        addressFieldWithInlineMutator = 0xD8bDC330ED7433D02620ab05229D607B2B30E595;
    }
}

pragma solidity ^0.8.0 a b c d;
contract SolidityAssemblyMutatorExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public aWithInlineMutator;
    bytes memory public bWithInlineMutator;
    bool public boolFieldWithInlineMutator;
    address public addressFieldWithInlineMutator;
    constructor(uint _a, uint _b, uint _c) public {
        a += _a;
        b += _b;
        c += _c;
        d += _a + _b + _c;
        aWithInlineMutator += 20971523;
        bWithInlineMutator += hex"7f";
        boolFieldWithInlineMutator = true;
        addressFieldWithInlineMutator = 0xD8bDC330ED7433D02620ab05229D607B2B30E595;
    }
}
