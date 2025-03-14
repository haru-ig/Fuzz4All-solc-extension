pragma solidity ^0.8.0;
contract SemanticMutation12 {


    address[4] internal arr1;


        mapping (uint32 => uint16) internal map1;


    bytes[1] internal bytes1;

    function test0()
        public
        pure
        returns (uint64)
    {
        uint128 res;
        uint128 i;


        arr1[0] += uint8_max;


        map1[i] += uint8_max;


        bytes1[0] += bytes1[0];

        uint64 res_tmp;
        res_tmp = map1[i];
        return res_tmp;
    }
}
