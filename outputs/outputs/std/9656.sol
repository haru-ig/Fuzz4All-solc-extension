pragma solidity ^0.8.0;
contract MutateBigNeg0x100000000000000 {
    constructor() {
        uint256 x = 164074484019799898896025858;
        uint256 x2 = 5000000000000000000000000000000;
        x += x2;
        revert();
    }
}
