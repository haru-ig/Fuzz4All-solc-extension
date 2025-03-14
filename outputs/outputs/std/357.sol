pragma solidity ^0.8.0;
contract Mutate {
    mapping(uint32 => uint32) private data0;
    uint32[] memory data1;
    constructor(
        uint32[] memory memoryData
    ) {
        data0.insertAndFind(254, 254);
        data1 = memoryData;
    }
    function mutateArray(uint32[] memory memoryData) public {
        data0.delete(254);
        data0[254] += 1;
        data0.clear();
        data0.insert(65535, 65535);
        data0[65535] += 1;
        data1[0] += 1;
        for (uint32 i = 0; i < data1.length; i++) {
            data1[i] -= 1;
            data1[i] = data1[i] + 1;
        }
        uint32[] memory a1 = data1;
        a1[1] -= 1;
        uint32[] memory a2 = a1;
    }
}
