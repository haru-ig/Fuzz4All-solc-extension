pragma solidity ^0.8.0;
contract AssignmentModulation {
    function doWork() public {
        uint a = 0;
        uint b = 0;
        uint c = 0;
        uint x1 = 0;
        uint x2 = 0;
        if (b == 6 && a == 0) {
            x1 = 1;
            x2 = 0;
        }
        x1 -= 1;
        x2 -= 1;
        x1 = x1 + 1;
        x2 = x2 + 1;
    }
}
