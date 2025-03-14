pragma solidity ^0.8.0;
contract mutators_v2 {
    uint[3] [100] x;
    uint32 [3] y;
    uint xsum;
    uint ysum;
    function f() public pure virtual {
        x[1] = uint32(x[149]) - 2;
        x[150] = uint32(x[30]);
        x[3] = uint32(x[129]) + uint32(x[3]);
        x[0] = uint32(x[47]);
        x[151] = uint32(x[150]);
        xsum = uint32(x[84]) * uint32(x[15]);
        y[0] = uint32(y[79]) - 3;
        y[79] = uint32(y[61]);
        y[1] = uint32(y[75]);
        y[150] = uint32(y[78]) * uint32(y[18]);
        y[9] = uint32(y[3]);
        y[4] = uint32(y[150]) * uint32(y[4]);
        ysum = uint32(y[24]);
    }
}
