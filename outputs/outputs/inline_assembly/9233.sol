pragma solidity ^0.8.0;
contract Z {
    uint constant _uint64 = 9 * 1_000_000_000;
    uint constant _uint32 = 16**60;
    function mutated1(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) + uint(uint(_uint64) * 10) ** 20000) * 60) * _uint32;
    }
    function mutated2(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) * 10) ** 7000) * _uint32;
    }
}
contract D {
    uint constant _uint64 = 9 * 1_000_000_000;
    function mutATED(uint) public pure returns (uint) {
      return ((uint(uint(uint(_uint64)) * 16) - uint(uint(_uint64) * 10) ** 7000) * 60) * _uint32;
    }
}

contract E {
    uint constant _uint32 = 3;
    uint constant a = 0;

    function mutated_1(uint) public pure returns (uint) {
        return a;
     }

    function mutated_2(uint) public pure returns (uint) {
        Z memory z;
        assembly {

            calldatacopy(0x0, 0, calldatasize())
            calldatacopy(0, 0, calldatasize())

            let k := mload(0)
            mstore(0, (mul(k,999999999)))
            mstore(0, add(k, 99999999))
            mstore(0, not(k))
