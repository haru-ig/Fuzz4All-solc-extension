pragma solidity ^0.8.0;
uint64 constant initIB1 = 1;
uint64 constant initIB2 = 0;
contract QC {
    uint64 I;
    uint64 IB;
    uint64 initIB;
    constructor() public {
        I = initIB;
        IB = I * initIB + I * initIB2;
    }
    function update() public {
        I = initIB;
        I = I * I * initIB + I * I * initIB1 + I * initIB1 * initIB + I * I * IB + IB * IB * initIB + I * I * IB2;
    }
}
