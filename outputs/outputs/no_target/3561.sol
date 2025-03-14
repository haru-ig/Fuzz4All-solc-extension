pragma solidity ^0.8.0;
contract m209b {
    struct MyStruct {
        uint x;
        uint y;
        uint z;
        uint w;
    }
    MyStruct public s;
    uint public i;
    constructor() public {
        s = s;
        s = MyStruct(s);
        s = MyStruct(s);
        s = MyStruct(s);
        s = MyStruct(s);
        s = MyStruct(s);
        s = MyStruct(s);
        i++;
        i += 2 + s.y;
        if (3!= 2) revert();
        s.w = s.y + 10;
        s.y = s.z + 4;
        delete s.z;
    }
}
