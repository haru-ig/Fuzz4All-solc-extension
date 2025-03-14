pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_fixed_21 {
    uint256[20] public m;
    constructor() public {
        m[20] = 0;
        m[21] = 0;
    }
    function f() public {
        for(uint i = 0; i < 20; i+1) {
            m[i] += m[3] + m[9] + m[2] * 3 - 3;
        }
    }
}
