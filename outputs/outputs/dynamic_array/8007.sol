pragma solidity ^0.8.0;
contract Test47 {
    Test46 public t;
    constructor() public {
        t.boolArray[10] = 6;
        t.numberArray[1] = 60;
        t.numberArray[0] = t.boolArray[10];
    }
}
