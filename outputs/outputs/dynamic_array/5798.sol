pragma solidity ^0.8.0;
contract Test833C{
    bytes32 constant c;
    constructor () public{
    	bytes32 b;
    	b = 1;
    }
}

pragma solidity ^0.8.0;
library TestArrayLib{
    struct Point{ int x; int y; }
    struct Rectangle{ Point p; uint h; }
    struct Box{ Point p1; uint32 len; }

    function getRectangle(Point p, uint h) public view returns (Rectangle memory){
        Rectangle memory r;
        r.p = p;
        r.h = h;
        return r;
    }
}
contract Test834C{

    TestArrayLib.Point p;

    function getBox() public view returns (TestArrayLib.Box memory){
        uint32 len;
        uint32 len32;
        len = p.x + p.y;
        p.x = 3;
        len32 = len[uint32(uint8(p.x))];
        return TestArrayLib.Box({ p: p, len : len32 });
    }
}
pragma solidity ^0.8.0;
library TestEmptyLib{
    uint8 a;
    uint8 _internalDummy;
