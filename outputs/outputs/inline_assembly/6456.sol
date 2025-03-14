pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A{
        uint x;
    }
    struct B{
        uint y;
    }
    function setXY(uint h, uint f2, uint z) public {
        b.y = z;
        a.x = h;
    }
    function getXY() public view returns(uint256 h,uint256 f2,uint256 z) {
        h = a.x;
        f2 = b.y;
        z = a.x;
    }
    function setXYH(uint h, uint p, uint z) public {
        b.y = z;
        a.x = h;
        a.x = p;
    }
    function getXYH() public view returns(uint256 h,uint256 p,uint256 f2,uint256 z) {
        h = a.x;
        p = a.x;
        f2 = b.y;
        z = a.x;
    }
}
