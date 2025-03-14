pragma solidity ^0.8.0;
contract AssignmentModulation {
    uint[] private aStorage;
    uint256 aSize;
    uint256 bSize;
    uint256 cSize;
    function doWork() public {
        while (!aStorage[0] == 0) {
            aStorage[0] = aStorage[0] - 1;
        }
        while (aStorage[0] > 0) {
            aStorage[0] = aStorage[0] - 1;
        }
        while (!bStorage[0] == 6) {
            bStorage[0] = bStorage[0] - 1;
        }
        while (bStorage[0] > 6) {
            bStorage[0] = bStorage[0] - 1;
        }
        while (!cStorage[0] == 2) {
            cStorage[0] = cStorage[0] - 2;
        }
        while (cStorage[0] > 2) {
            cStorage[0] = cStorage[0] - 2;
        }
        while (x1!= 1) {
            x1 = x1 - 1;
        }
        while (x2!= 1) {
            x2 = x2 - 1;
        }
        if (bStorage[0] == 6 && aStorage[0] == 0) {
            y1 = 1;
            y2 = 0;
        }
        y1 -= 1;
        y2 -= 1;
        y1 = y1 + 1;
        y2 = y2 + 1;
    }
}
