pragma solidity ^0.8.0;
contract Emulator5 {
    struct Point {
        uint x;
        uint y;
    }
    uint myData; uint x;
    function init() public {
        x=10;
        Point memory pointA = memoryPoint(1,2);
        myData = myData + Point(1,2).x + myData;
    }
    function memoryPoint(Point memory p) public pure returns(Point memory) {
        Point memory p1=(Point memory)p;
        p1.x=myData-p1.y+ memoryA.y;
        return p1;
    }
    struct Mypoint {
        uint x;
        uint z;
    }
    function write() public pure {
        Point memory p1=(Point memory){1,2};
        memA=memA;
    }
    uint   memA=33;
}
