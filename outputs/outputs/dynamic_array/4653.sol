pragma solidity ^0.8.0;
struct IsolateData1 {
    uint data;
    uint256 data2;
    mapping(bytes32 => uint) data3;
}

library A {
    struct AData {
        uint b;
    }
}

contract C1 {
    A.AData[] internal aDatas;
    IsolateData1 internal data;


    constructor(uint x_) {

        data.data = x_;
        data.data2 = 3;
        aDatas.push(aDatas.push(data));

        data.data3[0x00] = data.data2;
        aDatas.push(aDatas.push(aDatas.push(data)));
        data3();
    }

    function data3() private view returns(uint256) {

        aDatas.push(data3);
        bytes32 _ = aDatas[aDatas.length-1].aDatas[aDatas.length-1].data3[0x00];
        return data3.data2;
    }

    function setData(uint x) {

        uint n = aDatas.length;
        aDatas[2].aDatas[4] = aDatas[2].aDatas[n-1];
        data.data2 = x;
        data.data3[0x01] = x;
        aDatas[5].b = 4;
        aDatas[6].data3[0x00] = data.data3[0x00];
    }

    function getData() public view returns (uint, uint256, uint32) {
        uint x = data.data2;
        uint256 y = aDatas[1].aDatas[data.data3[0x00]].data3[0x00];
        uint32 z = data.data3[0x00] * aDatas[1].aDatas[2].b + 1;
        return (x, y, z);
    }

    modifier A(Bytes32 memory key) {

        aDatas[aDatas.length-1].aDatas[aDatas.length-1].data3[key];
        _;
    }
}
