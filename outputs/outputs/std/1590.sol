pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    function Sum(uint256 x) pure public returns(uint256) {
        return uint256(uint128(uint32(uint32(uint64(uint64(uint64(uint64(uint40((uint128(x*2))>>23))))>>23))>>23))))>>23);
    }
}
