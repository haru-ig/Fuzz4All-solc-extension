pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity57_dynamic_75 {
    uint[2][8][4] public m;

    modifier modify() {
        require(m[0][1][2] == 5, "should not be here");
        m[0][5][7] = 8;
        _;
    }

    function call_modify_then_get_value() public modify returns (uint) {
        return m[0][5][7];
    }
}
