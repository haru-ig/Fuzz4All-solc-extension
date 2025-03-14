pragma solidity ^0.8.0;
uint64 constant initIB = 1;
contract QB {
    uint64 IB;
    uint64 IB2;
    constructor() public {

        IB2 = IB;
        IB2 = IB * IB * initIB + IB * IB2;
    }
    function update() public {
        IB += IB2;
        IB2 = IB + IB2;
    }
}
