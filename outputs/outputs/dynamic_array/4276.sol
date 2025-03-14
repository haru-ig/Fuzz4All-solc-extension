pragma solidity ^0.8.0;
contract G5 {
    mapping(uint32 => uint[]) _data;
    uint32[1] public data;
    uint32[3] public _addresses;
    constructor(uint32[3] memory pAddresses) public {
        _addresses = pAddresses;
    }
}
contract G6 {
    mapping(uint32 => uint[]) _data;
    uint32[1] public data1; uint32[9] public data2; uint32[1] public data3;
    uint32[2] public data4;
    uint32[1] public data5; bytes999 = "0x";
    uint32[1] public data6; mapping{uint32 => uint} public mapdata;
    uint32[1] public data7;
    uint32[1] public data8;
    constructor(uint32[17] memory p) public {
        data1 = p;
        data3 = p[0];
        data2 = p[data3 - 1];
        while (data2 == 0) {
            data2 = p[data3--];
        }
        data4 = p[data2 + 1];
        if (p[data2] == 3) {
            data5 = p[data4 + 1];
            data6 = p[data5 + 1];
        }
        data7 = p[data4]; data8 = p[data5];
        data4++;
        for (uint32 i = 1; i < 10; i++) {
            data6[i] = p[i];
            while (p[i + 1] == 0) {
                i++;
            }
            data6[i] = p[i + 2];
        }
        mapdata[1] = 1;
        mapdata[2] = 2;
        mapdata[3] = 3;
        mapdata[4] = 4;
        mapdata[5] = 9;
    }
}
contract G7 {
    mapping(uint32 => uint[]) _data; uint32[1] public data; byte1
