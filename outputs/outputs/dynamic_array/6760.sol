pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T51P_array_dynamic_realloc {
    function set(uint[] memory m1, uint[] memory m2) public {
        uint[] memory empty;
        m1 = m1[0] < 10? m1 : empty;
        uint[] memory allocated;
        m2 = m2[0] < 10? m2 : allocated;
    }
}
