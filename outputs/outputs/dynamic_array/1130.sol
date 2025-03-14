pragma solidity ^0.8.0;
contract Test {
    EquivalentDynamicArrayAssignment3 instanceVariable;
    EquivalentDynamicArrayAssignment3 localVariable;
    EquivalentDynamicArrayAssignment3 globalVariable;

    constructor() public{
        uint len;
        instanceVariable = EquivalentDynamicArrayAssignment3(0x11);
        localVariable = EquivalentDynamicArrayAssignment3(0x09);
        globalVariable = EquivalentDynamicArrayAssignment3(0x10);
        len = instanceVariable.length;
        assert(instanceVariable.length == 0);
        uint[] memory initArray;
        for (uint i=0; i<10; i++) {
            localVariable.push(i);
        }
        initArray.push(0x60);
        globalVariable.push(0x00);
        initArray.push(0x60);
        instanceVariable.setElement(1, 0x13);
        instanceVariable.push(1);
        instanceVariable.push(0xa1);
        instanceVariable.setElement(0, 0x01);
        instanceVariable.setElement(100, 0x02);
        for (uint i=0; i<10; i++) {
            len = localVariable.length;
            assert(len == i+2);
        }
        for (uint i=0; i<10; i++) {
            len = globalVariable.length;
            globalVariable.setElement(i, 0xa0);
            len = localVariable.length;
            assert(len == localVariable.length+2);
        }
        for (uint i=0; i<len; i++) {
            instanceVariable.setElement(i, initArray[i]);
        }
        for (uint i=0; i<10; i++) {
            uint ret = instanceVariable.getElement(i);
            len = localVariable.length;
            assert(ret == localVariable.getElement(i+2));
        }
        uint[] storageInitArray = instanceVariable.storage;
        uint slen = instanceVariable.storage.length;
        assert(slen == 5 && storageInitArray[0]==0x11);
    }
}
