pragma solidity ^0.8.0;
contract TestDynamicArrayAbiReencodingSizeValidation7 {
    uint[][dynamic(3) + 1] memory temp6;
    uint[dynamic(3) + 1] public mem6, public memoryWithMemory6;
    function Test() public {
        temp6 = new uint[](dynamic(array60472062465543.length));
        mem6 = new uint[](dynamic(array60472062465543.length));
        mem6 = fillTemp(fillMem(mem6));
    }
    uint[dynamic(array60472062465543.length)] fillTemp(uint[dynamic(3) + 1] memory newTemp) public returns(uint[dynamic(3) + 1] memory) {
        uint[dynamic(3) + 1] memory temp;
        for (uint i = 0; i < dynamic(array60472062465543.length); i++) {
            temp[i] = array60472062465543[i];
        }
    }
    uint[dynamic(array60472062465543.length)] fillMem(uint[dynamic(3) + 1] memory mem) public memory returns(uint[dynamic(3) + 1] memory) {
        uint[dynamic(3) + 1] memory memWithMemory;
        memWithMemory[dynamic(array60472062465543.length)] = 1;
    }
}
