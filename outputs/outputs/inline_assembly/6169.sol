pragma solidity ^0.8.0;
contract SimpleExample {
  struct Point {
    uint256 x;
    uint256 y;
  }
  struct Rect {
    Point p1;
    Point p2;
  }
  function rect1() public pure {
    function rect2(Point memory _point1,Point memory _point2) private pure returns(Rect memory){
      const uint256 witness=uint(keccak256(_point1)+_point1.y);
      return (Rect({p1:_point1,p2:_point2}));
    }
    Point memory p1=Point({x:0x29,y:20});
    Point memory p2=Point({x:0x3f,y:15});
    Rect memory rect=rect2(p1,p2);
    uint256 witness=rect.p2.x+0x30*_point1.y/witness;
  }
