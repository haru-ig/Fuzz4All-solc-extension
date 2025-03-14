pragma solidity ^0.8.0;
contract UintWrapper {
    function f() pure public returns (uint) {
        return new UintWrapper().f();
    }
}
contract BuggedUintWrapper {
    uint constant X = 1;
    function f() pure public returns (uint) {
        uint x = new UintWrapper().f();
        uint a = x>X?2:0;
        uint b = x<X?2:0;
        uint c = x<X?2:0;
        uint d = x==X?2:0;
        uint e = x>=X?2:0;
        uint f = x<=X?2:0;
        uint g = 1<x?2:0;
        uint h = 0<x?2:0;
        uint i = 0<x?2:0;
        uint j = x<X&&x>X?2:0;
        uint k = x<X;
        uint l = x>X;
        uint m = x<=X;
        uint n = x>=X;
        uint o = x<X&&x-X>X?2:0;
        uint p = x>X*2;
        uint q = X*2<x>X*2;
        uint r = X<x>X*2;
        uint s;
        if(2>=x){
            s = 0;
        }
        return s;
    }
}
