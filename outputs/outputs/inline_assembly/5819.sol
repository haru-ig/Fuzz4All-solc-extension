pragma solidity ^0.8.0;
contract MutatedBlock5Mutation93 {
    uint7 internal _x;
    uint internal _y;
    uint internal _a;
    uint _b;
    function test5() public returns (uint) {
        uint temp = block.number;
        uint temp2 = _y + _a;
        uint temp3 = _y + temp2;
        uint temp4 = temp3 + temp;
        _y += temp + _a;
        uint temp5 = _y + temp4;
        _b = _x + temp5;
        uint temp6 = _y + _a;
        _x += temp6 + temp5 + temp4 + temp3 + _b - -_a;
        return block.number - _b + temp + temp2 + temp + temp3 + temp5 - temp6 + temp4 + temp5 + temp6 - -_a + temp2 - temp4 + temp6 + temp5 + temp3 + _b - -_a + temp3 + temp4 + temp5 + temp6 - -_a + temp4 + -_a - _a + _a + -_a + temp4 + temp3 + _b + temp6 - -_a + -_a + -_a + _y + temp4 + _a + _b + temp - -_a + temp - _a + temp + -_a + _a + _a;
    }
}
/* Expected output:
5
59
593
5935
59359
-5
36
-35
-352
-3525
-35254
-352546
-3525462
-35254623
492
4392
-4392
-452
30720
-30720
928
8755
-8755
-4623
-92462
-924623
-4880
-875
-9235362
-92353623
-342526235
-34252623592
-342526235923
-3425262359235
-3425
