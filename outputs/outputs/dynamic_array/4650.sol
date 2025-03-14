pragma solidity ^0.8.0;

contract Mutated {
    constructor () {
        IsolateData2 memory data2;
        data2.data = 1;
        data2.data3["A"] = 2;
        IsolateData3 storage data3 = IsolateData3(0x0);
        data3.data = data2.data2;
        data3.data2 = data2.data;
        IsolateData2 storage newdata2 = IsolateData2(0x0);
        uint256 temp = data3.data3[0];
        data3.data3[0] = newdata2.data;
        newdata2.data = data2.data3["B"];
        newdata2.data3["B"] = temp;
    }
}
contract IsolateData3 {
    uint data;
    uint256 data2;
    mapping(bytes32 => uint) data3;
}
