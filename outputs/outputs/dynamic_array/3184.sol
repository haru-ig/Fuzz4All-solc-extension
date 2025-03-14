pragma solidity ^0.8.0;
contract AssignmentModulation {
    function doWork() public {
        uint a = 0;
        uint b = 0;
        uint c = 0;
        uint x1 = 0;
        uint x2 = 0;
        while (b > 1) {
            x1 -= 1;
            x2 -= 1;
            x1 = x1 + 1;
            x2 = x2 + 1;
            b -= 1;
        }
        if (b == 0)
            a = x1+x2;
    }
}


pragma solidity ^0.8.0;
contract AssignmentModulation {
    function doWork() public {
        uint x1 = 0;
        uint x2 = 0;
        uint x3 = 0;
        uint y1 = 0;
        uint y2 = 0;
        uint x = 17;
        if (x == 0) {
            x2 = 1;
            x3 = 1;
            x1 = x1 * 2;
            y1 = 1;
            y2 = 1;
            while (x3 > 1) {
                x1 -= 1;
                y2 -= 1;
                x2 = x2 + 1;
                x3 = x3 + 1;
                y2 = y2 + 1;
                x1 = x1 + x3;
            }
            while (x2 > 0) {
                x3 = x3 + 1;
                y1 -= x2 + 1;
                while (x > -1) {
                    y2 -= x2 - 1;
                    x3 = x3 + 1;
                    y1 = y1 + y2;
                    x3 = x1 * x3;
                    x = x+1;
                }
                y2 -= 1;
                x += 1;
            }
            x3 = x3 + 1;
            y1 = 1;
            y2 = 1;
            while (y1 < x)
