pragma solidity ^0.8.0;
contract Mutant9t
{
  struct Point
  {
    int8 x;
    int8 y;
  }
  struct Rect
  {
    Point topLeft;
    Point bottomRight;
  }
  Pill getPill(uint8 x, uint8 y) internal pure returns (Pill memory)
  {
    return (Pill(_width > _height? 3 : 5, x, y));
  }
  uint8 _width;
  uint8 _height;
  Rect _rect;
  function newPill() public {
    Pill memory pill = getPill(1, 1);
    uint256 x = uint256(pill).x;
    uint256 y = uint256(pill).y;
    stored[msg.sender] = _rect;
  }
}
