pragma solidity ^0.8.0;
contract SemanticTest_v4b {
    uint[] public x = [0];
    address public addr;
    constructor(address xAddr) public {
        addr = xAddr;
        x[2] = 30;
        x[0x10] = 400;
    }
    function changeValues(uint index) public {
        uint[] memory newValues = new uint[](3);
        newValues[0] = 30+1;
        newValues[1] = 400+1;
        newValues[2] = 500;
        x[index] = newValues[0];
        x[0x10+index] = newValues[1];
        x[0x20+index] = newValues[2];
        assert(x[index] == newValues[0]);
        assert(x[0x10+index] == newValues[1]);
        assert(x[0x20+index] == newValues[2]);
    }
}
