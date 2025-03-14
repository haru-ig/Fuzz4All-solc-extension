pragma solidity ^0.8.0;
contract Semantic0048 {
    function contract_member_access() public pure {
        uint[] memory r = new uint[](5);
        for (uint i = 1; i <= 5; i++) {
            r[0] = 0;
        }
    }
}
