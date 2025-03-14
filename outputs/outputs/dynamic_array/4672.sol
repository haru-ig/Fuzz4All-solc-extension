pragma solidity ^0.8.0;
contract TestContract {
    StateMutated public data;
    mapping(bytes32 => uint) dataMap;
    bytes32[] arrayData;
    uint[] intArray;

    constructor() {
        data.name = "TestContract";
        doAdd();
    }

    function doAdd() public {
        for (uint i = 0; i < 10; i++) {
            data2.insert(bytes32(0x01 + i), 0x0000000000000000000000000000000 + i);
        }
        doDelete();
        uint x = 0;
        for (uint i = 0; i < 10; i++)
            data.data2.insert(bytes32(0x0000000000000000000000000000001 + 100 + x), x);
    }
}
