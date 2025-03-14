pragma solidity ^0.8.0;
contract Test43NotYetSemanticallyEquivalent {
    struct A1 {
        uint1 z;
        uint3 z2;
        uint5 z3;
        uint11 z4;
        uint23 z5;
        uint25 z6;
        uint31 z7;
        uint33 z8;
        uint35 z9;
    }

    address[] public admin;
    A1 a1;
    constructor () public {
        admin.push(msg.sender);
        a1.z = 8u;
    }
    function test() public {
        admin.push(msg.sender);
        a1.z2 = 16u;
    }
}
