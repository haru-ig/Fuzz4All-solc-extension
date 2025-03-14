pragma solidity ^0.8.0;
uint32 constant initIB = 9;
contract Q {
    uint32[10000] public ib;
    constructor() public {
        for(uint32 _; _ < 10000; _++){
            ib[_] += initIB * 40;
        }
    }
}
