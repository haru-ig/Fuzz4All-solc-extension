pragma solidity ^0.8.0;
contract D {
    struct B {
        uint id : uint;
    }
    mapping(uint => B) mappings;

    function f() public {
        uint[] memory new_ids = new uint[](100);
        for(uint i = 0; i < new_ids.length; i++){new_ids[i] = uint(uint256(uint128(i) + uint128(1)) | uint128(2)));}

        for(uint i = 0; i < 30; i++) {
        mappings[uint(uint128(i) + uint128(1))][new_ids[i]].id = 1;
        mappings[uint(uint128(i) + uint128(2))][new_ids[i + 3]].id = 2;
        }
    }

}
