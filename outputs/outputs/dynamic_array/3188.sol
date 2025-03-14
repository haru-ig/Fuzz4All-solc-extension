pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint x0 = 0;
    uint x1 = 0;
    uint x2 = 0;
    uint x3 = 0;
    uint x4 = 0;
    uint x5 = 0;
    uint x6 = 0;
    uint x7 = 0;
    uint x8 = 0;
    uint x9 = 0;
    function doWork() public returns (uint) {
        while (this.x0 > 3) {
            (x1, x0, x2, x3, x4, x5, x6, x7, x8, x9) = (this.x7, this.x6, this.x5, this.x4, this.x3, this.x2, this.x1, this.x0, this.x3, this.x2);
            (x0, x1, x2, x3, x4, x5, x6) = (this.x0, this.x1, this.x2, this.x3, this.x4, this.x5, this.x6);
            (x7, x8, x9) = (this.x8, this.x9, this.x7);
        }
        (this.x0, this.x1, this.x2, this.x3, this.x4, this.x5, this.x6, this.x7, this.x8, this.x9) = (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9);
        uint z = (x1 * x2) + (x3 * x4) + (x5 * x6) + (x7 * x8) + (x9 * x10);
