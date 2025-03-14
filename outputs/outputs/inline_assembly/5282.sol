pragma solidity ^0.8.0;
uint32 constant initIB = 46;
contract Q {
    uint32 IB;
    uint32 IB2;
    constructor() public {
        IB2 = ib + (initIB * 29);
        IB = IB2;
    }
}

function totalIterations(uint32 IB) public pure returns(uint32 total) {
    require(IB >= initIB, "Number of iterations should not be negative");

    if (IB == 0) {

        total = 1 + 1 / 1 + 1.0 / 10 + 2.0 / 100 + 3.0 / 1000;
    } else {
        uint32 temp = IB/(10*initIB);
        uint32 count = sqrt(calc(temp));
        if (IB >= count*count*initIB/100) {
            total = 1 + count + 1.0/(count+1) + 1.5/(count+2);
        } else {
            total = 1 + 2 + 1.0/(IB+2);
        }
    }
    return total;
   }

uint32 constant initIB = 46;
uint32 constant initIB2 = 770;
uint32 constant initIB3 = 1042;
uint32 constant initIB4 = 1337;
uint32 constant a = 129;
uint32 constant b = 113;
uint32 constant c1 = 30;
uint32 constant c2 = 42;
uint32 constant c3 = 57;
uint32 constant c4 = 95;
uint32 constant d1 = 749;
uint32 constant d2 = 1024;
uint32 constant d3 = 1337;
uint32 constant IB = initIB;
uint32 constant IB2 = initIB2;
void g() external {
  uint32 n = totalIterations(IB);
  for (uint32 i = 0; i < n; i++) {
    IB2 = IB2 + IB;
    IB = IB + IB2;
  }
  uint32 temp = IB * (b - c1 + 2 * c2);
  IB2 =IB + (temp);
