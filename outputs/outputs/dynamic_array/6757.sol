pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9D_array_semantics {
    uint8[] public _uint8_array;
    uint[] public _uint_array;
    uint16[] public _uint16_array;
    uint32[] public _uint32_array;
    uint64[] public _uint64_array;
    address[] public _address_array;
    struct B { uint a; }
    B[] b;
    function set(
        uint8[] memory m1,
        uint[] memory m2,
        uint16[] memory m3,
        uint32[] memory m4,
        uint64[] memory m5,
        address[] memory m6
    ) public returns(int){
        int a = 0;
        for (uint i = 0; i < m1.length; i++) {
            for (uint j = 0; j < m2.length; j++) {
                for (uint k = 0; k < m3.length; k++) {
                    for (uint i = 0; i < m4.length; i++) {
                        for (uint j = 0; j < m5.length; j++) {
                            for (uint k = 0; k < m6.length; k++) {
                                B memory _b;
                                for (uint i = 0; i < b.length; i++) {
                                    for (uint j = 0; j < b[i].a; j++) {
                                        _b.a = i;
                                    }
                                }
                                if (i < b[j].a) a++;
                                if (i > b[j].a) a++;
                            }
                        }
                    }
                }
            }
        }

        uint8[] memory s1 = new uint8[](10);
        uint8[] memory s2 = new uint8[](11);
        uint8[] memory s3 = new uint8[](12);
        uint8[] memory s4 = new uint8[](13);
        s1[0] = 0x0f;
        s2[0] = 0x0f;
        s3[0] = 0x0f;
