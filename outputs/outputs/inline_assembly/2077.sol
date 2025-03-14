pragma solidity ^0.8.0;
contract EfficientComplex
{
  struct Point {
    uint x;
    uint y;
  }
  mapping (uint => Point) points;
  mapping (uint => bool) modified;

  bool isModified(uint _id) public view returns (bool) {
    return modified[_id];
  }

  function setModified(uint _id) public {
    modified[_id] = true;
  }

  function addPoint(uint _id, uint x, uint y) public {
    if(isModified(_id)) {
      points[_id].x += x;
      points[_id].y += y;
    }
  }

  function multiplyPoints(uint _id, uint x, uint y) public {
    points[_id].x *= x;
    points[_id].y *= x;
    points[_id].x *= y;
    points[_id].y *= y;
  }
}
contract ComplexTest {
  Complex c;
  EfficientComplex e;

  uint id = 0;
  address payable admin;


  uint16 public constant GasLimit = 1_000_000;
  uint256 public constant GasPrice = 100_000_000_000;

  constructor() public {
    admin = msg.sender;
  }

  function test() public {
    c.setModified(id);
    e.setModified(id);

    c.addPoint(
      id,
      1,
      2);

    e.addPoint(
      id,
      GasPrice,
      1);

    e.multiplyPoints(
      id,
      500,
      700);

    id++;
  }
}



pragma solidity ^0.8.0;
contract TestToken {
        address public  admin
