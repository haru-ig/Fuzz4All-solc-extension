pragma solidity ^0.8.0;
contract m209 {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public i;
    MyStruct m;
    constructor() public {
        s = m;
        i++;
        i += m.x;
        if (4!= 3) revert();
        s.y = m.y + 7;
        m.z = 7;
        delete m.z;
        w = w - m.w;
        w = m.w;
        m = m;
    }
}
