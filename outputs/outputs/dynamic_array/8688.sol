pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity26_fixed_21 {
    uint256[21] public m;
    uint256 public constant C = 5;
    constructor() public {
        m[20] = C;
        m[21] = 1;
    }
}
