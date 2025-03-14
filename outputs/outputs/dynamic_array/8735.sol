pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_75 {
    uint[2][8][4] public m;
    constructor(uint[2][8][4] memory _m) {
        m = _m;
    }
    function update() public {
        m[0][0] = 1;
    }
}
